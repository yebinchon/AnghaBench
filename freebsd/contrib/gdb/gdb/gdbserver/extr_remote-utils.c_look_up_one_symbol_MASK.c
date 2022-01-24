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
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*) ; 
 scalar_t__ remote_debug ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char*,char*,int /*<<< orphan*/ ) ; 

int
FUNC9 (const char *name, CORE_ADDR *addrp)
{
  char own_buf[266], *p, *q;
  int len;

  /* Send the request.  */
  FUNC6 (own_buf, "qSymbol:");
  FUNC4 (own_buf + FUNC7 ("qSymbol:"), name, FUNC7 (name));
  if (FUNC5 (own_buf) < 0)
    return -1;

  /* FIXME:  Eventually add buffer overflow checking (to getpkt?)  */
  len = FUNC3 (own_buf);
  if (len < 0)
    return -1;

  if (FUNC8 (own_buf, "qSymbol:", FUNC7 ("qSymbol:")) != 0)
    {
      /* Malformed response.  */
      if (remote_debug)
	{
	  FUNC2 (stderr, "Malformed response to qSymbol, ignoring.\n");
	  FUNC1 (stderr);
	}

      return -1;
    }

  p = own_buf + FUNC7 ("qSymbol:");
  q = p;
  while (*q && *q != ':')
    q++;

  /* Make sure we found a value for the symbol.  */
  if (p == q || *q == '\0')
    return 0;

  FUNC0 (addrp, p, q - p);
  return 1;
}