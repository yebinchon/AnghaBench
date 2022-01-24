#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int tv_sec; int tv_usec; } ;
struct TYPE_5__ {int /*<<< orphan*/  data; } ;
struct TYPE_4__ {int tv_sec; int tv_usec; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 scalar_t__ echo ; 
 TYPE_3__ end ; 
 TYPE_2__ g_msg ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,long long) ; 
 TYPE_1__ start ; 
 char* test_name ; 
 int transfer_count ; 
 long long transfer_size ; 

__attribute__((used)) static void FUNC4(void)
{
	char str[32];
	float usec;
	long long bytes;
	int transfers;

	usec = (end.tv_sec - start.tv_sec) * 1000000 + (end.tv_usec - start.tv_usec);
	transfers = echo ? transfer_count * 2 : FUNC0(g_msg.data);
	bytes = (long long) transfers * transfer_size;

	/* name size transfers bytes seconds Gb/sec usec/xfer */
	FUNC2("%-10s", test_name);
	FUNC3(str, sizeof str, transfer_size);
	FUNC2("%-8s", str);
	FUNC1(str, sizeof str, transfers);
	FUNC2("%-8s", str);
	FUNC3(str, sizeof str, bytes);
	FUNC2("%-8s", str);
	FUNC2("%8.2fs%10.2f%11.2f\n",
		usec / 1000000., (bytes * 8) / (1000. * usec),
		(usec / transfers));
}