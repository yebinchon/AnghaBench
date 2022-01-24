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
typedef  int u_int16_t ;
struct ibuf {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ibuf*,void const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ibuf*) ; 

int
FUNC2(struct ibuf *msg, const void *data, u_int16_t datalen)
{
	if (datalen)
		if (FUNC0(msg, data, datalen) == -1) {
			FUNC1(msg);
			return (-1);
		}
	return (datalen);
}