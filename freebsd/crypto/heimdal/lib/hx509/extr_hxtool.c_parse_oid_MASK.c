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
typedef  int /*<<< orphan*/  heim_oid ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC1 (char const*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*) ; 

__attribute__((used)) static void
FUNC3(const char *str, const heim_oid *def, heim_oid *oid)
{
    int ret;
    if (str)
	ret = FUNC1 (str, " .", oid);
    else
	ret = FUNC0(def, oid);
    if  (ret)
	FUNC2(1, "parse_oid failed for: %s", str ? str : "default oid");
}