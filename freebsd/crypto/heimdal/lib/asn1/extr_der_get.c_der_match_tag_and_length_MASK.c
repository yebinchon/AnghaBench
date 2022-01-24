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
typedef  int /*<<< orphan*/  Der_type ;
typedef  int /*<<< orphan*/  Der_class ;

/* Variables and functions */
 int FUNC0 (unsigned char const*,size_t,size_t*,size_t*) ; 
 int FUNC1 (unsigned char const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int,size_t*) ; 

int
FUNC2 (const unsigned char *p, size_t len,
			  Der_class class, Der_type *type, unsigned int tag,
			  size_t *length_ret, size_t *size)
{
    size_t l, ret = 0;
    int e;

    e = FUNC1 (p, len, class, type, tag, &l);
    if (e) return e;
    p += l;
    len -= l;
    ret += l;
    e = FUNC0 (p, len, length_ret, &l);
    if (e) return e;
    if(size) *size = ret + l;
    return 0;
}