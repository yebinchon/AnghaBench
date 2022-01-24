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
typedef  int apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*) ; 
 char* FUNC2 (char*,char const*) ; 

__attribute__((used)) static void
FUNC3(apr_size_t *new_len,
                          char *buffer,
                          const char *prefix)
{
  char *substring = buffer;

  FUNC0(buffer && prefix);

  /* Initialize *NEW_LEN. */
  if (new_len)
    *new_len = FUNC1(buffer);

  while (1)
    {
      /* Find PREFIX in BUFFER. */
      substring = FUNC2(substring, prefix);
      if (! substring)
        return;

      /* We found PREFIX.  Is it really a PREFIX?  Well, if it's the first
         thing in the file, or if the character before it is a
         line-terminator character, it sure is. */
      if ((substring == buffer)
          || (*(substring - 1) == '\r')
          || (*(substring - 1) == '\n'))
        {
          *substring = '\0';
          if (new_len)
            *new_len = substring - buffer;
        }
      else if (substring)
        {
          /* Well, it wasn't really a prefix, so just advance by 1
             character and continue. */
          substring++;
        }
    }

  /* NOTREACHED */
}