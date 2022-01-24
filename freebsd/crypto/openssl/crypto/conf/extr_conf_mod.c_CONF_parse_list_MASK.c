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

/* Variables and functions */
 int /*<<< orphan*/  CONF_F_CONF_PARSE_LIST ; 
 int /*<<< orphan*/  CONF_R_LIST_CANNOT_BE_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 char* FUNC2 (char const*,int) ; 
 int FUNC3 (char const*) ; 

int FUNC4(const char *list_, int sep, int nospc,
                    int (*list_cb) (const char *elem, int len, void *usr),
                    void *arg)
{
    int ret;
    const char *lstart, *tmpend, *p;

    if (list_ == NULL) {
        FUNC0(CONF_F_CONF_PARSE_LIST, CONF_R_LIST_CANNOT_BE_NULL);
        return 0;
    }

    lstart = list_;
    for (;;) {
        if (nospc) {
            while (*lstart && FUNC1((unsigned char)*lstart))
                lstart++;
        }
        p = FUNC2(lstart, sep);
        if (p == lstart || !*lstart)
            ret = list_cb(NULL, 0, arg);
        else {
            if (p)
                tmpend = p - 1;
            else
                tmpend = lstart + FUNC3(lstart) - 1;
            if (nospc) {
                while (FUNC1((unsigned char)*tmpend))
                    tmpend--;
            }
            ret = list_cb(lstart, tmpend - lstart + 1, arg);
        }
        if (ret <= 0)
            return ret;
        if (p == NULL)
            return 1;
        lstart = p + 1;
    }
}