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
struct json_token {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct json_token*,int,char*,size_t) ; 

void FUNC1(struct json_token *root, char *buf, size_t buflen)
{
	buf[0] = '\0';
	FUNC0(root, 1, buf, buflen);
}