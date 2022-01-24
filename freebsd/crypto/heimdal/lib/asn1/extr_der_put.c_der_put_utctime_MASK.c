#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ heim_octet_string ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned char*,size_t,TYPE_1__*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3 (unsigned char *p, size_t len,
		 const time_t *data, size_t *size)
{
    heim_octet_string k;
    size_t l;
    int e;

    e = FUNC0 (*data, &k, 0);
    if (e)
	return e;
    e = FUNC1(p, len, &k, &l);
    FUNC2(k.data);
    if(e)
	return e;
    if(size)
	*size = l;
    return 0;
}