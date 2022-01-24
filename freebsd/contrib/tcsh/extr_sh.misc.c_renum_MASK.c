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
 int FSAFE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int
FUNC2(int i, int j)
{
    int k = FUNC0(i);

    if (k < 0)
	return (-1);
    if (j == -1 && k > FSAFE)
	return (k);
    if (k != j) {
	j = FUNC2(k, j);
	FUNC1(k);
	return (j);
    }
    return (k);
}