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
struct TYPE_3__ {scalar_t__ type; int end; int start; } ;
typedef  TYPE_1__ jsmntok_t ;

/* Variables and functions */
 scalar_t__ JSMN_STRING ; 
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*,int) ; 

__attribute__((used)) static int FUNC2(const char *json, jsmntok_t *tok, const char *s) {
	if (tok->type == JSMN_STRING && (int) FUNC0(s) == tok->end - tok->start &&
			FUNC1(json + tok->start, s, tok->end - tok->start) == 0) {
		return 0;
	}
	return -1;
}