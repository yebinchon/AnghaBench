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
typedef  char UINT8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(char* buffer)
{
	int	i;
	int	length = FUNC2(buffer);
	UINT8	*uin;
	UINT8	uout;

	if (FUNC1((int)length, 2) == length || length < 10)
		return;

	for (i = 0; i<length; ++i) {
		if (!((i+1)%3)) {
			if (buffer[i] != ' ')
				return;
		}
		else
			if (!((buffer[i] >= '0' && buffer[i] <= '9') ||
		    	    (buffer[i] >= 'A' && buffer[i] <= 'F')))
				return;			
	}

	for (i = 0; i<length; i += 3) {
		uin = &buffer[i];
		uout = 0;
		FUNC0(uin, &uout);
		buffer[i/3] = (char) uout;
	}
	buffer[(length+1)/3] = 0;
}