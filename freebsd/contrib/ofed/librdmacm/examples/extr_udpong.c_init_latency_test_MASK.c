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
 int echo ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  test_name ; 
 int transfer_count ; 
 int transfer_size ; 

__attribute__((used)) static void FUNC3(int size)
{
	char sstr[5];

	FUNC0(sstr, sizeof sstr, size);
	FUNC2(test_name, sizeof test_name, "%s_lat", sstr);
	transfer_size = size;
	transfer_count = FUNC1(transfer_size) / 10;
	echo = 1;
}