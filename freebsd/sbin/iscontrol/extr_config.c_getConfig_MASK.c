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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (unsigned char) ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(FILE *fd, char *key, char **Ar, int *nargs)
{
     char	*lp, *p, **ar;
     int	state, len, n;

     ar = Ar;
     if(key)
	  len = FUNC5(key);
     else
	  len = 0;
     state = 0;
     while((lp = FUNC1(fd)) != NULL) {
	  for(; FUNC2((unsigned char)*lp); lp++)
	       ;
	  switch(state) {
	  case 0:
	       if((p = FUNC3(lp, '{')) != NULL) {
		    while((--p > lp) && *p && FUNC2((unsigned char)*p));
		    n = p - lp;
		    if(len && FUNC6(lp, key, FUNC0(n, len)) == 0)
			 state = 2;
		    else
			 state = 1;
		    continue;
	       }
	       break;

	  case 1:
	       if(*lp == '}')
		    state = 0;
	       continue;

	  case 2:
	       if(*lp == '}')
		    goto done;
	       
	       break;
	  }

	  
	  for(p = &lp[FUNC5(lp)-1]; FUNC2((unsigned char)*p); p--)
	       *p = 0;
	  if((*nargs)-- > 0)
	       *ar++ = FUNC4(lp);
     }

 done:
     if(*nargs > 0)
	  *ar = 0;
     *nargs =  ar - Ar;
     return ar - Ar;
}