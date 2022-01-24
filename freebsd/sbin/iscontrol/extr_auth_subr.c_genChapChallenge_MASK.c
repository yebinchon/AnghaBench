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
typedef  int uint ;
typedef  int /*<<< orphan*/  tmp ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 char* FUNC0 (char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned char*,int) ; 

char *
FUNC5(char *encoding, uint len)
{
     int	fd;
     unsigned	char tmp[1024];

     if(len > sizeof(tmp))
	  return NULL;

     if((fd = FUNC2("/dev/random", O_RDONLY)) != -1) {
	  FUNC4(fd, tmp, len);
	  FUNC1(fd);
	  return FUNC0(encoding, tmp, len);
     }
     FUNC3("/dev/random");
     // make up something ...
     return NULL;
}