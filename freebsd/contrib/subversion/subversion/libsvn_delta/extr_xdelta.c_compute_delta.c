
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_txdelta__ops_baton_t ;
struct blocks {int* flags; } ;
typedef int apr_uint32_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int MATCH_BLOCKSIZE ;
 int adler32_replace (int,char const,char const) ;
 int find_match (struct blocks*,int,char const*,int,char const*,int,int*,int*,int) ;
 size_t hash_flags (int) ;
 int init_adler32 (char const*) ;
 int init_blocks_table (char const*,int,struct blocks*,int *) ;
 int store_delta_trailer (int *,char const*,int,char const*,int,int,int *) ;
 int svn_cstring__match_length (char const*,char const*,int) ;
 int svn_cstring__reverse_match_length (char const*,char const*,int) ;
 int svn_txdelta__insert_op (int *,int ,int,int,char const*,int *) ;
 int svn_txdelta__remove_copy (int *,int) ;
 int svn_txdelta_new ;
 int svn_txdelta_source ;

__attribute__((used)) static void
compute_delta(svn_txdelta__ops_baton_t *build_baton,
              const char *a,
              apr_size_t asize,
              const char *b,
              apr_size_t bsize,
              apr_pool_t *pool)
{
  struct blocks blocks;
  apr_uint32_t rolling;
  apr_size_t lo = 0, pending_insert_start = 0, upper;




  lo = svn_cstring__match_length(a, b, asize > bsize ? bsize : asize);
  if ((lo > 4) || (lo == bsize))
    {
      svn_txdelta__insert_op(build_baton, svn_txdelta_source,
                             0, lo, ((void*)0), pool);
      pending_insert_start = lo;
    }
  else
    lo = 0;



  if ((bsize - lo < MATCH_BLOCKSIZE) || (asize < MATCH_BLOCKSIZE))
    {
      store_delta_trailer(build_baton, a, asize, b, bsize, lo, pool);
      return;
    }

  upper = bsize - MATCH_BLOCKSIZE;


  init_blocks_table(a, asize, &blocks, pool);


  rolling = init_adler32(b + lo);
  while (lo < upper)
    {
      apr_size_t matchlen;
      apr_size_t apos;



      while (!(blocks.flags[hash_flags(rolling)] & (1 << (rolling & 7)))
             && lo < upper)
        {
          rolling = adler32_replace(rolling, b[lo], b[lo+MATCH_BLOCKSIZE]);
          lo++;
        }




      matchlen = find_match(&blocks, rolling, a, asize, b, bsize,
                            &lo, &apos, pending_insert_start);



      if (matchlen == 0)
        {


          if (lo + MATCH_BLOCKSIZE < bsize)
            rolling = adler32_replace(rolling, b[lo], b[lo+MATCH_BLOCKSIZE]);

          lo++;
        }
      else
        {

          if (lo - pending_insert_start > 0)
            svn_txdelta__insert_op(build_baton, svn_txdelta_new,
                                   0, lo - pending_insert_start,
                                   b + pending_insert_start, pool);
          else
            {


              apr_size_t len = svn_cstring__reverse_match_length
                                 (a + apos, b + lo, apos < lo ? apos : lo);
              if (len > 0)
                {
                  len = svn_txdelta__remove_copy(build_baton, len);
                  apos -= len;
                  matchlen += len;
                  lo -= len;
                }
            }



          lo += matchlen;
          pending_insert_start = lo;
          svn_txdelta__insert_op(build_baton, svn_txdelta_source,
                                 apos, matchlen, ((void*)0), pool);




          if (lo + MATCH_BLOCKSIZE <= bsize)
            rolling = init_adler32(b + lo);
        }
    }


  store_delta_trailer(build_baton, a, asize, b, bsize, pending_insert_start, pool);
}
