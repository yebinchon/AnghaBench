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
typedef  float int32 ;

/* Variables and functions */
 float CLOCKS_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 char* functionName ; 
 int /*<<< orphan*/  FUNC2 (char*,float,char*) ; 
 char* roundingModeName ; 
 char* roundingPrecisionName ; 
 int /*<<< orphan*/  stdout ; 
 char* tininessModeName ; 

__attribute__((used)) static void FUNC3( int32 count, long clocks )
{

    FUNC2(
        "%8.1f kops/s: %s",
        ( count / ( ( (float) clocks ) / CLOCKS_PER_SEC ) ) / 1000,
        functionName
    );
    if ( roundingModeName ) {
        if ( roundingPrecisionName ) {
            FUNC1( ", precision ", stdout );
            FUNC1( roundingPrecisionName, stdout );
        }
        FUNC1( ", rounding ", stdout );
        FUNC1( roundingModeName, stdout );
        if ( tininessModeName ) {
            FUNC1( ", tininess ", stdout );
            FUNC1( tininessModeName, stdout );
            FUNC1( " rounding", stdout );
        }
    }
    FUNC0( '\n', stdout );

}