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
typedef  int /*<<< orphan*/  tmap_info_t ;
typedef  int /*<<< orphan*/  const tOptionValue ;
typedef  int /*<<< orphan*/  tOptionLoadMode ;

/* Variables and functions */
 int /*<<< orphan*/  MAP_PRIVATE ; 
 int /*<<< orphan*/  OPTION_LOAD_COOKED ; 
 int /*<<< orphan*/  PROT_READ ; 
 scalar_t__ FUNC0 (char*) ; 
 int errno ; 
 int /*<<< orphan*/  const* FUNC1 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  option_load_mode ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

const tOptionValue *
FUNC5(char const * fname)
{
    tmap_info_t    cfgfile;
    tOptionValue * res = NULL;
    tOptionLoadMode save_mode = option_load_mode;

    char * txt = FUNC3(fname, PROT_READ, MAP_PRIVATE, &cfgfile);

    if (FUNC0(txt))
        return NULL; /* errno is set */

    option_load_mode = OPTION_LOAD_COOKED;
    res = FUNC1(txt, fname, FUNC2(fname));

    if (res == NULL) {
        int err = errno;
        FUNC4(&cfgfile);
        errno = err;
    } else
        FUNC4(&cfgfile);

    option_load_mode = save_mode;
    return res;
}