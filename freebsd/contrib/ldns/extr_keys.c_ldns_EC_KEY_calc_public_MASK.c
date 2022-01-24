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
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  EC_GROUP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int
FUNC8(EC_KEY* ec)
{
        EC_POINT* pub_key;
        const EC_GROUP* group;
        group = FUNC1(ec);
        pub_key = FUNC7(group);
        if(!pub_key) return 0;
        if(!FUNC4(pub_key, FUNC0(group))) {
                FUNC5(pub_key);
                return 0;
        }
        if(!FUNC6(group, pub_key, FUNC2(ec),
                NULL, NULL, NULL)) {
                FUNC5(pub_key);
                return 0;
        }
        if(FUNC3(ec, pub_key) == 0) {
                FUNC5(pub_key);
                return 0;
        }
        FUNC5(pub_key);
        return 1;
}