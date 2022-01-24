#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char const* data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 unsigned int UINT_MAX ; 
 char* FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 

const char *
FUNC5(const unsigned char *oid, apr_size_t oid_len,
                       apr_pool_t *scratch_pool, apr_pool_t *result_pool)
{
  svn_stringbuf_t *out = FUNC3(result_pool);
  const unsigned char *p = oid;
  const unsigned char *end = p + oid_len;
  const char *temp;

  while (p != end) {
    if (p == oid)
      {
        /* Handle decoding the first two values of the OID.  These values
         * are encoded by taking the first value and adding 40 to it and
         * adding the result to the second value, then placing this single
         * value in the first byte of the output.  This is unambiguous since
         * the first value is apparently limited to 0, 1 or 2 and the second
         * is limited to 0 to 39. */
        temp = FUNC0(scratch_pool, "%d.%d", *p / 40, *p % 40);
        p++;
      }
    else if (*p < 128)
      {
        /* The remaining values if they're less than 128 are just
         * the number one to one encoded */
        temp = FUNC0(scratch_pool, ".%d", *p);
        p++;
      }
    else
      {
        /* Values greater than 128 are encoded as a series of 7 bit values
         * with the left most bit set to indicate this encoding with the
         * last octet missing the left most bit to finish out the series.. */
        unsigned int collector = 0;
        svn_boolean_t dot = FALSE;

        do {
          if (collector == 0 && *p == 0x80)
            {
              /* include leading zeros in the string representation
                 technically not legal, but this seems nicer than just
                 returning NULL */
              if (!dot)
                {
                  FUNC1(out, '.');
                  dot = TRUE;
                }
              FUNC1(out, '0');
            }
          else if (collector > UINT_MAX >> 7)
            {
              /* overflow */
              return NULL;
            }
          collector = collector << 7 | (*(p++) & 0x7f);
        } while (p != end && *p > 127);
        if (collector > UINT_MAX >> 7)
          return NULL; /* overflow */
        collector = collector << 7 | *(p++);
        temp = FUNC0(scratch_pool, "%s%d", dot ? "" : ".", collector);
      }
    FUNC2(out, temp);
  }

  if (FUNC4(out))
    return NULL;

  return out->data;
}