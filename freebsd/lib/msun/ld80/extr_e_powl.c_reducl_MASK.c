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
 int /*<<< orphan*/  LNXT ; 
 long double FUNC0 (long double) ; 
 long double FUNC1 (long double,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline long double
FUNC2(long double x)
{
long double t;

t = FUNC1( x, LNXT );
t = FUNC0( t );
t = FUNC1( t, -LNXT );
return(t);
}