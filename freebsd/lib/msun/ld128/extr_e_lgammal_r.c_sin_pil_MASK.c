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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,long double volatile) ; 
 long double FUNC1 (long double,long double) ; 
 long double FUNC2 (long double,long double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  one ; 
 long double pi ; 
 long double zero ; 

__attribute__((used)) static long double
FUNC3(long double x)
{
	volatile long double vz;
	long double y,z;
	uint64_t lx, n;
	uint16_t hx;

	y = -x;

	vz = y+0x1.p112;
	z = vz-0x1.p112;
	if (z == y)
	    return zero;

	vz = y+0x1.p110;
	FUNC0(hx,lx,n,vz);
	z = vz-0x1.p110;
	if (z > y) {
	    z -= 0.25;
	    n--;
	}
	n &= 7;
	y = y - z + n * 0.25;

	switch (n) {
	    case 0:   y =  FUNC2(pi*y,zero,0); break;
	    case 1:
	    case 2:   y =  FUNC1(pi*(0.5-y),zero); break;
	    case 3:
	    case 4:   y =  FUNC2(pi*(one-y),zero,0); break;
	    case 5:
	    case 6:   y = -FUNC1(pi*(y-1.5),zero); break;
	    default:  y =  FUNC2(pi*(y-2.0),zero,0); break;
	    }
	return -y;
}