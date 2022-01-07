
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blocks {int dummy; } ;
typedef int apr_uint32_t ;
typedef int apr_size_t ;


 int MATCH_BLOCKSIZE ;
 int NO_POSITION ;
 int find_block (struct blocks const*,int const,char const*) ;
 int svn_cstring__match_length (char const*,char const*,int) ;

__attribute__((used)) static apr_size_t
find_match(const struct blocks *blocks,
           const apr_uint32_t rolling,
           const char *a,
           apr_size_t asize,
           const char *b,
           apr_size_t bsize,
           apr_size_t *bposp,
           apr_size_t *aposp,
           apr_size_t pending_insert_start)
{
  apr_size_t apos, bpos = *bposp;
  apr_size_t delta, max_delta;

  apos = find_block(blocks, rolling, b + bpos);


  if (apos == NO_POSITION)
    return 0;


  max_delta = asize - apos - MATCH_BLOCKSIZE < bsize - bpos - MATCH_BLOCKSIZE
            ? asize - apos - MATCH_BLOCKSIZE
            : bsize - bpos - MATCH_BLOCKSIZE;
  delta = svn_cstring__match_length(a + apos + MATCH_BLOCKSIZE,
                                    b + bpos + MATCH_BLOCKSIZE,
                                    max_delta);



  while (apos > 0 && bpos > pending_insert_start && a[apos-1] == b[bpos-1])
    {
      --apos;
      --bpos;
      ++delta;
    }

  *aposp = apos;
  *bposp = bpos;

  return MATCH_BLOCKSIZE + delta;
}
