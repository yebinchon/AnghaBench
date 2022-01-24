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
typedef  int /*<<< orphan*/  svn_stringbuf_t ;
typedef  int apr_size_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 
 int QUOPRINT_LINELEN ; 
 char* hextab ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC4(svn_stringbuf_t *str, const char *data, apr_size_t len,
             int *linelen)
{
  char buf[3];
  const char *p;

  /* Keep encoding three-byte groups until we run out.  */
  for (p = data; p < data + len; p++)
    {
      /* Encode this character.  */
      if (FUNC0(*p))
        {
          FUNC1(str, *p);
          (*linelen)++;
        }
      else
        {
          buf[0] = '=';
          buf[1] = hextab[(*p >> 4) & 0xf];
          buf[2] = hextab[*p & 0xf];
          FUNC2(str, buf, 3);
          *linelen += 3;
        }

      /* Make sure our output lines don't exceed QUOPRINT_LINELEN.  */
      if (*linelen + 3 > QUOPRINT_LINELEN)
        {
          FUNC3(str, "=\n");
          *linelen = 0;
        }
    }
}