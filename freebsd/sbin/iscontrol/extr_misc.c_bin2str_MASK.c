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
 void** base64 ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 

char *
FUNC4(char *encoding, unsigned char *md, int blen)
{
     int	len;
     char	*dst, *ds;
     unsigned char *cp;

     if(FUNC3(encoding, "0x", 2) == 0) {
	  char	ofmt[5];

	  len = blen * 2;
	  dst = FUNC0(len + 3);
	  FUNC2(dst, encoding);
	  ds = dst + 2;
	  cp = md;
	  FUNC1(ofmt, "%%02%c", encoding[1]);
	  while(blen-- > 0) {
	       FUNC1(ds, ofmt, *cp++);
	       ds += 2;
	  }
	  *ds = 0;
	  return dst;
     }
     if(FUNC3(encoding, "0b", 2) == 0) {
	  int i, b6;

	  len = (blen + 2) * 4 / 3;
	  dst = FUNC0(len + 3);
	  FUNC2(dst, encoding);
	  ds = dst + 2;
	  cp = md;
	  b6 = 0; // to keep compiler happy.
	  for(i = 0; i < blen; i++) {
	       switch(i % 3) {
	       case 0:
		    *ds++ = base64[*cp >> 2];
		    b6 = (*cp & 0x3) << 4;
		    break;
	       case 1:
		    b6 += (*cp >> 4);
		    *ds++ = base64[b6];
		    b6 = (*cp & 0xf) << 2;
		    break;
	       case 2:
		    b6 += (*cp >> 6);
		    *ds++ = base64[b6];
		    *ds++ = base64[*cp & 0x3f];
	       }
	       cp++;
	  }
	  switch(blen % 3) {
	  case 0:
	       break;
	  case 1:
	       *ds++ = base64[b6];
	       *ds++ = '=';
	       *ds++ = '=';
	       break;
	  case 2:
	       *ds++ = base64[b6];
	       *ds++ = '=';
	       break;
	  }

	  *ds = 0;
	  return dst;
     }

     return NULL;
}