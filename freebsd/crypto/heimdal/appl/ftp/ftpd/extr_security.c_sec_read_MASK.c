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
struct TYPE_4__ {int eof_flag; scalar_t__ size; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*,void*,int) ; 
 scalar_t__ data_prot ; 
 TYPE_1__ in_buffer ; 
 int FUNC1 (int,void*,int) ; 
 scalar_t__ sec_complete ; 
 int FUNC2 (int,TYPE_1__*,scalar_t__) ; 

int
FUNC3(int fd, void *dataptr, int length)
{
    size_t len;
    int rx = 0;

    if(sec_complete == 0 || data_prot == 0)
	return FUNC1(fd, dataptr, length);

    if(in_buffer.eof_flag){
	in_buffer.eof_flag = 0;
	return 0;
    }

    len = FUNC0(&in_buffer, dataptr, length);
    length -= len;
    rx += len;
    dataptr = (char*)dataptr + len;

    while(length){
	int ret;

	ret = FUNC2(fd, &in_buffer, data_prot);
	if (ret < 0)
	    return -1;
	if(ret == 0 && in_buffer.size == 0) {
	    if(rx)
		in_buffer.eof_flag = 1;
	    return rx;
	}
	len = FUNC0(&in_buffer, dataptr, length);
	length -= len;
	rx += len;
	dataptr = (char*)dataptr + len;
    }
    return rx;
}