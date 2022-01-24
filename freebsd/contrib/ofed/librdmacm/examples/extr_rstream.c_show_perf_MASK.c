#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int tv_sec; int tv_usec; } ;
struct TYPE_3__ {int tv_sec; int tv_usec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,float) ; 
 TYPE_2__ end ; 
 float iterations ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,long long) ; 
 TYPE_1__ start ; 
 char* test_name ; 
 long long transfer_count ; 
 long long transfer_size ; 

__attribute__((used)) static void FUNC3(void)
{
	char str[32];
	float usec;
	long long bytes;

	usec = (end.tv_sec - start.tv_sec) * 1000000 + (end.tv_usec - start.tv_usec);
	bytes = (long long) iterations * transfer_count * transfer_size * 2;

	/* name size transfers iterations bytes seconds Gb/sec usec/xfer */
	FUNC1("%-10s", test_name);
	FUNC2(str, sizeof str, transfer_size);
	FUNC1("%-8s", str);
	FUNC0(str, sizeof str, transfer_count);
	FUNC1("%-8s", str);
	FUNC0(str, sizeof str, iterations);
	FUNC1("%-8s", str);
	FUNC2(str, sizeof str, bytes);
	FUNC1("%-8s", str);
	FUNC1("%8.2fs%10.2f%11.2f\n",
		usec / 1000000., (bytes * 8) / (1000. * usec),
		(usec / iterations) / (transfer_count * 2));
}