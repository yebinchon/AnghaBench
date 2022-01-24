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

/* Variables and functions */
 unsigned char* FUNC0 (unsigned char const*,size_t,size_t*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  base64_url_table ; 

unsigned char * FUNC1(const unsigned char *src, size_t len,
				  size_t *out_len, int add_pad)
{
	return FUNC0(src, len, out_len, base64_url_table, add_pad);
}