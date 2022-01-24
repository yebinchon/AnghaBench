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
 scalar_t__ FUNC0 (char) ; 
 char const* hextab ; 
 char* FUNC1 (char const*,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char) ; 

__attribute__((used)) static void
FUNC3(svn_stringbuf_t *str, const char *data, apr_size_t len,
             char *inbuf, int *inbuflen)
{
  const char *p, *find1, *find2;
  char c;

  for (p = data; p <= data + len; p++)
    {
      /* Append this byte to the buffer and see what we have.  */
      inbuf[(*inbuflen)++] = *p;
      if (*inbuf != '=')
        {
          /* Literal character; append it if it's valid as such.  */
          if (FUNC0(*inbuf))
            FUNC2(str, *inbuf);
          *inbuflen = 0;
        }
      else if (*inbuf == '=' && *inbuflen == 2 && inbuf[1] == '\n')
        {
          /* Soft newline; ignore.  */
          *inbuflen = 0;
        }
      else if (*inbuf == '=' && *inbuflen == 3)
        {
          /* Encoded character; decode it and append.  */
          find1 = FUNC1(hextab, inbuf[1]);
          find2 = FUNC1(hextab, inbuf[2]);
          if (find1 != NULL && find2 != NULL)
            {
              c = (char)(((find1 - hextab) << 4) | (find2 - hextab));
              FUNC2(str, c);
            }
          *inbuflen = 0;
        }
    }
}