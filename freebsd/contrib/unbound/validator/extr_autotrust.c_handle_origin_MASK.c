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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,size_t*) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC5(char* line, uint8_t** origin, size_t* origin_len)
{
	size_t len = 0;
	while(FUNC1((unsigned char)*line))
		line++;
	if(FUNC4(line, "$ORIGIN", 7) != 0)
		return 0;
	FUNC0(*origin);
	line += 7;
	while(FUNC1((unsigned char)*line))
		line++;
	*origin = FUNC3(line, &len);
	*origin_len = len;
	if(!*origin)
		FUNC2("malloc failure or parse error in $ORIGIN");
	return 1;
}