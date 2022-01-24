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
struct buffer {scalar_t__ index; scalar_t__ size; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,void*,size_t) ; 
 void* FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static size_t
FUNC3(struct buffer *buf, void *dataptr, size_t len)
{
    if(buf->index + len > buf->size) {
	void *tmp;
	if(buf->data == NULL)
	    tmp = FUNC0(1024);
	else
	    tmp = FUNC2(buf->data, buf->index + len);
	if(tmp == NULL)
	    return -1;
	buf->data = tmp;
	buf->size = buf->index + len;
    }
    FUNC1((char*)buf->data + buf->index, dataptr, len);
    buf->index += len;
    return len;
}