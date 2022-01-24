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
struct evkeyvalq {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (struct evkeyvalq const*,char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(
	const struct evkeyvalq* headers,
	const char *key, const char *value)
{
	const char *real_val = FUNC0(headers, key);
	FUNC2(real_val != NULL);
	FUNC3(FUNC1(real_val, value) == 0);
end:
	return (0);
}