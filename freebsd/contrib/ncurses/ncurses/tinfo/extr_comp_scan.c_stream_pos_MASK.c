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
 long bufptr ; 
 long bufstart ; 
 long FUNC0 (scalar_t__) ; 
 scalar_t__ yyin ; 

__attribute__((used)) static long
FUNC1(void)
/* return our current character position in the input stream */
{
    return (yyin ? FUNC0(yyin) : (bufptr ? bufptr - bufstart : 0));
}