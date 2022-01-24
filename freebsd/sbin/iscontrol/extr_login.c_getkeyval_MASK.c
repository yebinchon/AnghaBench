#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int ds_len; scalar_t__ ds_addr; } ;
typedef  TYPE_1__ pdu_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 

__attribute__((used)) static char *
FUNC3(char *key, pdu_t *pp)
{
    char	*ptr;
    int	klen, len, n;

    FUNC0(3);

    len = pp->ds_len;
    ptr = (char *)pp->ds_addr;
    klen = FUNC1(key);
    while(len > klen) {
	 if(FUNC2(key, ptr, klen) == 0)
	      return ptr+klen;
	 n = FUNC1(ptr) + 1;
	 len -= n;
	 ptr += n;
    }
    return 0;
}