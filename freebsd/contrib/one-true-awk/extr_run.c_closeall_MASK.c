#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char mode; int /*<<< orphan*/  fname; scalar_t__ fp; } ;

/* Variables and functions */
 int EOF ; 
 int FOPEN_MAX ; 
 char LE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 TYPE_1__* files ; 
 int FUNC3 (scalar_t__) ; 

void FUNC4(void)
{
	int i, stat;

	for (i = 0; i < FOPEN_MAX; i++) {
		if (files[i].fp) {
			if (FUNC2(files[i].fp))
				FUNC0( "i/o error occurred on %s", files[i].fname );
			if (files[i].mode == '|' || files[i].mode == LE)
				stat = FUNC3(files[i].fp);
			else
				stat = FUNC1(files[i].fp);
			if (stat == EOF)
				FUNC0( "i/o error occurred while closing %s", files[i].fname );
		}
	}
}