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
struct zfsdsk {int dummy; } ;

/* Variables and functions */
 struct zfsdsk* FUNC0 (int) ; 

__attribute__((used)) static struct zfsdsk *
FUNC1(struct zfsdsk *zdsk)
{
    struct zfsdsk *newdsk;

    newdsk = FUNC0(sizeof(struct zfsdsk));
    *newdsk = *zdsk;
    return (newdsk);
}