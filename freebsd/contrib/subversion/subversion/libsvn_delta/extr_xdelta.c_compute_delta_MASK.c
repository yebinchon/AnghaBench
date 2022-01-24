#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_txdelta__ops_baton_t ;
struct blocks {int* flags; } ;
typedef  int apr_uint32_t ;
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int MATCH_BLOCKSIZE ; 
 int FUNC0 (int,char const,char const) ; 
 int FUNC1 (struct blocks*,int,char const*,int,char const*,int,int*,int*,int) ; 
 size_t FUNC2 (int) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int,struct blocks*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int,char const*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (char const*,char const*,int) ; 
 int FUNC7 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,char const*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  svn_txdelta_new ; 
 int /*<<< orphan*/  svn_txdelta_source ; 

__attribute__((used)) static void
FUNC10(svn_txdelta__ops_baton_t *build_baton,
              const char *a,
              apr_size_t asize,
              const char *b,
              apr_size_t bsize,
              apr_pool_t *pool)
{
  struct blocks blocks;
  apr_uint32_t rolling;
  apr_size_t lo = 0, pending_insert_start = 0, upper;

  /* Optimization: directly compare window starts. If more than 4
   * bytes match, we can immediately create a matching windows.
   * Shorter sequences result in a net data increase. */
  lo = FUNC6(a, b, asize > bsize ? bsize : asize);
  if ((lo > 4) || (lo == bsize))
    {
      FUNC8(build_baton, svn_txdelta_source,
                             0, lo, NULL, pool);
      pending_insert_start = lo;
    }
  else
    lo = 0;

  /* If the size of the target is smaller than the match blocksize, just
     insert the entire target.  */
  if ((bsize - lo < MATCH_BLOCKSIZE) || (asize < MATCH_BLOCKSIZE))
    {
      FUNC5(build_baton, a, asize, b, bsize, lo, pool);
      return;
    }

  upper = bsize - MATCH_BLOCKSIZE; /* this is now known to be >= LO */

  /* Initialize the matches table.  */
  FUNC4(a, asize, &blocks, pool);

  /* Initialize our rolling checksum.  */
  rolling = FUNC3(b + lo);
  while (lo < upper)
    {
      apr_size_t matchlen;
      apr_size_t apos;

      /* Quickly skip positions whose respective ROLLING checksums
         definitely do not match any SLOT in BLOCKS. */
      while (!(blocks.flags[FUNC2(rolling)] & (1 << (rolling & 7)))
             && lo < upper)
        {
          rolling = FUNC0(rolling, b[lo], b[lo+MATCH_BLOCKSIZE]);
          lo++;
        }

      /* LO is still <= UPPER, i.e. the following lookup is legal:
         Closely check whether we've got a match for the current location.
         Due to the above pre-filter, chances are that we find one. */
      matchlen = FUNC1(&blocks, rolling, a, asize, b, bsize,
                            &lo, &apos, pending_insert_start);

      /* If we didn't find a real match, insert the byte at the target
         position into the pending insert.  */
      if (matchlen == 0)
        {
          /* move block one position forward. Short blocks at the end of
             the buffer cannot be used as the beginning of a new match */
          if (lo + MATCH_BLOCKSIZE < bsize)
            rolling = FUNC0(rolling, b[lo], b[lo+MATCH_BLOCKSIZE]);

          lo++;
        }
      else
        {
          /* store the sequence of B that is between the matches */
          if (lo - pending_insert_start > 0)
            FUNC8(build_baton, svn_txdelta_new,
                                   0, lo - pending_insert_start,
                                   b + pending_insert_start, pool);
          else
            {
              /* the match borders on the previous op. Maybe, we found a
               * match that is better than / overlapping the previous one. */
              apr_size_t len = FUNC7
                                 (a + apos, b + lo, apos < lo ? apos : lo);
              if (len > 0)
                {
                  len = FUNC9(build_baton, len);
                  apos -= len;
                  matchlen += len;
                  lo -= len;
                }
            }

          /* Reset the pending insert start to immediately after the
             match. */
          lo += matchlen;
          pending_insert_start = lo;
          FUNC8(build_baton, svn_txdelta_source,
                                 apos, matchlen, NULL, pool);

          /* Calculate the Adler32 sum for the first block behind the match.
           * Ignore short buffers at the end of B.
           */
          if (lo + MATCH_BLOCKSIZE <= bsize)
            rolling = FUNC3(b + lo);
        }
    }

  /* If we still have an insert pending at the end, throw it in.  */
  FUNC5(build_baton, a, asize, b, bsize, pending_insert_start, pool);
}