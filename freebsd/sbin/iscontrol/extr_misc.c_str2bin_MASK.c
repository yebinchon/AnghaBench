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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 

int
FUNC5(char *str, char **rsp)
{
     char	*src, *dst, *tmp;
     int	i, len = 0;

     src = str;
     tmp = NULL;
     if(FUNC4("0x", src, 2) == 0) {
	  src += 2;
	  len = FUNC3(src);
	  
	  if((tmp = FUNC2((len+1)/2)) == NULL) {
	       // XXX: print some error?
	       return 0;
	  }
	  dst = tmp;
	  if(len & 1)
	       *dst++ = FUNC0(*src++);
	  while(*src) {
	       *dst = FUNC0(*src++) << 4;
	       *dst++ |= FUNC0(*src++);
	  }
	  len = dst - tmp;
     } else
     if(FUNC4("0b", src , 2) == 0) {
	  // base64
	  unsigned char b6;

	  src += 2;
	  len = FUNC3(src) / 4 * 3;
	  if((tmp = FUNC2(len)) == NULL) {
	       // XXX: print some error?
	       return 0;
	  }
	  dst = tmp; 
	  i = 0;
	  while(*src && ((b6 = FUNC1(*src++)) != 64)) {
	       switch(i % 4) {
	       case 0:
		    *dst = b6 << 2;
		    break;
	       case 1:
		    *dst++ |= b6 >> 4;
		    *dst = b6 << 4;
		    break;
	       case 2:
		    *dst++ |= b6 >> 2;
		    *dst = b6 << 6;
		    break;
	       case 3:
		    *dst++ |= b6;
		    break;
	       }
	       i++;
	  }
	  len = dst - tmp;
     }
     else {
	  /*
	   | assume it to be an ascii string, so just copy it
	   */
	  len = FUNC3(str);
	  if((tmp = FUNC2(len)) == NULL)
	       return 0;
	  dst = tmp;
	  src = str;
	  while(*src)
	       *dst++ = *src++;
     }

     *rsp = tmp;
     return len;
}