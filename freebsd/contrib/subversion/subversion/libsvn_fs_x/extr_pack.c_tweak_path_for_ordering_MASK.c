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
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC1 (char*,char const*) ; 

__attribute__((used)) static const char *
FUNC2(const char *original,
                        apr_pool_t *pool)
{
  /* We may add further special cases as needed. */
  enum {SPECIAL_COUNT = 2};
  static const char *special[SPECIAL_COUNT] = {"trunk", "branch"};
  char *pos;
  char *path = FUNC0(pool, original);
  int i;

  /* Replace the first char of any "special" sub-string we find by
   * a control char, i.e. '\1' .. '\31'.  In the rare event that this
   * would clash with existing paths, no data will be lost but merely
   * the node ordering will be sub-optimal.
   */
  for (i = 0; i < SPECIAL_COUNT; ++i)
    for (pos = FUNC1(path, special[i]);
         pos;
         pos = FUNC1(pos + 1, special[i]))
      {
        *pos = (char)(i + '\1');
      }

   return path;
}