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

/* Variables and functions */
 char* FUNC0 (char*,unsigned char*,int) ; 
 scalar_t__ FUNC1 (char,char*,char*,unsigned char*) ; 
 scalar_t__ FUNC2 (char,char*,char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

char *
FUNC6(char *ap, char id, char *cp, char *chapSecret)
{
     int	len;
     unsigned	char digest[20];
     char	encoding[3];

     FUNC3(3);

     len = 0;
     if(FUNC5(ap, "5") == 0 && FUNC1(id, cp, chapSecret, digest) == 0)
	  len = 16;
     else
     if(FUNC5(ap, "7") == 0 && FUNC2(id, cp, chapSecret, digest) == 0)
	  len = 20;

     if(len) {
	  FUNC4(encoding, "%.2s", cp);
	  return FUNC0(encoding, digest, len);
     }

     return NULL;
}