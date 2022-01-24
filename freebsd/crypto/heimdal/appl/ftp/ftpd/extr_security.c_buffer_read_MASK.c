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
struct buffer {int size; int index; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,char*,size_t) ; 
 size_t FUNC1 (size_t,int) ; 

__attribute__((used)) static size_t
FUNC2(struct buffer *buf, void *dataptr, size_t len)
{
    len = FUNC1(len, buf->size - buf->index);
    FUNC0(dataptr, (char*)buf->data + buf->index, len);
    buf->index += len;
    return len;
}