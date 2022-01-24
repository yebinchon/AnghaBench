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
typedef  int /*<<< orphan*/  serf_bucket_t ;
typedef  int /*<<< orphan*/  serf_bucket_alloc_t ;
typedef  int apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC2(serf_bucket_t *agg_bucket,
                                   serf_bucket_alloc_t *bkt_alloc,
                                   const char *data, apr_size_t len)
{
  const char *end = data + len;
  const char *p = data, *q;
  serf_bucket_t *tmp_bkt;

  while (1)
    {
      /* Find a character which needs to be quoted and append bytes up
         to that point.  Strictly speaking, '>' only needs to be
         quoted if it follows "]]", but it's easier to quote it all
         the time.

         So, why are we escaping '\r' here?  Well, according to the
         XML spec, '\r\n' gets converted to '\n' during XML parsing.
         Also, any '\r' not followed by '\n' is converted to '\n'.  By
         golly, if we say we want to escape a '\r', we want to make
         sure it remains a '\r'!  */
      q = p;
      while (q < end && *q != '&' && *q != '<' && *q != '>' && *q != '\r')
        q++;


      tmp_bkt = FUNC0(p, q - p, bkt_alloc);
      FUNC1(agg_bucket, tmp_bkt);

      /* We may already be a winner.  */
      if (q == end)
        break;

      /* Append the entity reference for the character.  */
      if (*q == '&')
        {
          tmp_bkt = FUNC0("&amp;", sizeof("&amp;") - 1,
                                                  bkt_alloc);
          FUNC1(agg_bucket, tmp_bkt);
        }
      else if (*q == '<')
        {
          tmp_bkt = FUNC0("&lt;", sizeof("&lt;") - 1,
                                                  bkt_alloc);
          FUNC1(agg_bucket, tmp_bkt);
        }
      else if (*q == '>')
        {
          tmp_bkt = FUNC0("&gt;", sizeof("&gt;") - 1,
                                                  bkt_alloc);
          FUNC1(agg_bucket, tmp_bkt);
        }
      else if (*q == '\r')
        {
          tmp_bkt = FUNC0("&#13;", sizeof("&#13;") - 1,
                                                  bkt_alloc);
          FUNC1(agg_bucket, tmp_bkt);
        }

      p = q + 1;
    }
}