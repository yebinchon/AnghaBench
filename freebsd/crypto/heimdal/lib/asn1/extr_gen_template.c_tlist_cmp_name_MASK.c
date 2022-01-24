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
struct tlist {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct tlist*,struct tlist*) ; 
 struct tlist* FUNC1 (char const*) ; 

__attribute__((used)) static int
FUNC2(const char *tname, const char *qname)
{
    struct tlist *tl = FUNC1(tname);
    struct tlist *ql = FUNC1(qname);
    return FUNC0(tl, ql);
}