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
struct printf_info {int dummy; } ;
struct __printf_io {int dummy; } ;
typedef  scalar_t__ intmax_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  HN_AUTOSCALE ; 
 int HN_DECIMAL ; 
 int HN_NOSPACE ; 
 int /*<<< orphan*/  FUNC0 (struct __printf_io*) ; 
 int FUNC1 (struct __printf_io*,struct printf_info const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(struct __printf_io *io,
    const struct printf_info *pi, const void * const *arg)
{
	char buf[5];
	intmax_t num;
	int ret;

	num = *(const intmax_t *)arg[0];
	FUNC2(buf, sizeof(buf), (int64_t)num, "", HN_AUTOSCALE,
	    HN_NOSPACE | HN_DECIMAL);
	ret = FUNC1(io, pi, buf, FUNC3(buf));
	FUNC0(io);
	return (ret);
}