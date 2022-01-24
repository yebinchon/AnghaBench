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
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  j ;

/* Variables and functions */
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_ERROR ; 
 int FUNC0 () ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int*) ; 

int FUNC2(int sock)
{
    int j = 0, i;
    socklen_t size = sizeof(j);

    /*
     * Note: under Windows the third parameter is of type (char *) whereas
     * under other systems it is (void *) if you don't have a cast it will
     * choke the compiler: if you do have a cast then you can either go for
     * (char *) or (void *).
     */
    i = FUNC1(sock, SOL_SOCKET, SO_ERROR, (void *)&j, &size);
    if (i < 0)
        return FUNC0();
    else
        return j;
}