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
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 unsigned char SVN_CTYPE_ASCII_CARRIAGERETURN ; 
 unsigned char SVN_CTYPE_ASCII_DELETE ; 
 unsigned char SVN_CTYPE_ASCII_LINEFEED ; 
 unsigned char SVN_CTYPE_ASCII_TAB ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int) ; 

svn_boolean_t
FUNC2(const char *data, apr_size_t len)
{
  const char *end = data + len;
  const char *p;

  if (! FUNC1(data, len))
    return FALSE;

  for (p = data; p < end; p++)
    {
      unsigned char c = *p;

      if (FUNC0(c))
        {
          if ((c != SVN_CTYPE_ASCII_TAB)
              && (c != SVN_CTYPE_ASCII_LINEFEED)
              && (c != SVN_CTYPE_ASCII_CARRIAGERETURN)
              && (c != SVN_CTYPE_ASCII_DELETE))
            return FALSE;
        }
    }
  return TRUE;
}