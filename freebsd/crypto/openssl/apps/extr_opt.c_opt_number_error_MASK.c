#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct strstr_pair_st   TYPE_1__ ;

/* Type definitions */
struct strstr_pair_st {char* prefix; char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*,...) ; 
 size_t FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/  prog ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(const char *v)
{
    size_t i = 0;
    struct strstr_pair_st {
        char *prefix;
        char *name;
    } b[] = {
        {"0x", "a hexadecimal"},
        {"0X", "a hexadecimal"},
        {"0", "an octal"}
    };

    for (i = 0; i < FUNC1(b); i++) {
        if (FUNC3(v, b[i].prefix, FUNC2(b[i].prefix)) == 0) {
            FUNC0(bio_err,
                       "%s: Can't parse \"%s\" as %s number\n",
                       prog, v, b[i].name);
            return;
        }
    }
    FUNC0(bio_err, "%s: Can't parse \"%s\" as a number\n", prog, v);
    return;
}