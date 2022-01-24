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
struct json_token {struct json_token* string; struct json_token* name; struct json_token* sibling; struct json_token* child; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct json_token*) ; 

void FUNC1(struct json_token *json)
{
	if (!json)
		return;
	FUNC1(json->child);
	FUNC1(json->sibling);
	FUNC0(json->name);
	FUNC0(json->string);
	FUNC0(json);
}