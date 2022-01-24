#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ (* overhead ) (int /*<<< orphan*/ ,scalar_t__,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  app_data ; 
 int buffer_size ; 
 scalar_t__ data_prot ; 
 TYPE_1__* mech ; 
 scalar_t__ prot_clear ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int FUNC2 (int,char*,int) ; 

int
FUNC3(int fd, char *dataptr, int length)
{
    int len = buffer_size;
    int tx = 0;

    if(data_prot == prot_clear)
	return FUNC2(fd, dataptr, length);

    len -= (*mech->overhead)(app_data, data_prot, len);
    while(length){
	if(length < len)
	    len = length;
	FUNC0(fd, dataptr, len);
	length -= len;
	dataptr += len;
	tx += len;
    }
    return tx;
}