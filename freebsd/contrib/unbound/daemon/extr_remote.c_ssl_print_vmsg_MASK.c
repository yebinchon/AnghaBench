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
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  RES ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(RES* ssl, const char* format, va_list args)
{
	char msg[1024];
	FUNC1(msg, sizeof(msg), format, args);
	return FUNC0(ssl, msg);
}