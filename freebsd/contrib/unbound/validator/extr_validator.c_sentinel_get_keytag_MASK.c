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
typedef  scalar_t__ uint16_t ;

/* Variables and functions */
 int SENTINEL_KEYTAG_LEN ; 
 char* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 scalar_t__ FUNC3 (char*,char**,int) ; 

__attribute__((used)) static int
FUNC4(char* start, uint16_t* keytag) {
	char* keytag_str;
	char* e = NULL;
	keytag_str = FUNC0(1, SENTINEL_KEYTAG_LEN + 1 /* null byte */);
	if(!keytag_str)
		return 0;
	FUNC2(keytag_str, start, SENTINEL_KEYTAG_LEN);
	keytag_str[SENTINEL_KEYTAG_LEN] = '\0';
	*keytag = (uint16_t)FUNC3(keytag_str, &e, 10);
	if(!e || *e != '\0') {
		FUNC1(keytag_str);
		return 0;
	}
	FUNC1(keytag_str);
	return 1;
}