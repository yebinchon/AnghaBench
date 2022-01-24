#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct dirent {char* d_name; } ;
struct TYPE_6__ {int expect_file_generations; char* previous_entry_name; char* entry_name; int /*<<< orphan*/ * dir; } ;
typedef  TYPE_1__ LP_DIR_CTX ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (char) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (char const*) ; 
 struct dirent* FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 

const char *FUNC9(LP_DIR_CTX **ctx, const char *directory)
{
    struct dirent *direntry = NULL;

    if (ctx == NULL || directory == NULL) {
        errno = EINVAL;
        return 0;
    }

    errno = 0;
    if (*ctx == NULL) {
        *ctx = FUNC2(sizeof(**ctx));
        if (*ctx == NULL) {
            errno = ENOMEM;
            return 0;
        }
        FUNC3(*ctx, 0, sizeof(**ctx));

#ifdef __VMS
        {
            char c = directory[strlen(directory) - 1];

            if (c == ']' || c == '>' || c == ':')
                (*ctx)->expect_file_generations = 1;
        }
#endif

        (*ctx)->dir = FUNC4(directory);
        if ((*ctx)->dir == NULL) {
            int save_errno = errno; /* Probably not needed, but I'm paranoid */
            FUNC0(*ctx);
            *ctx = NULL;
            errno = save_errno;
            return 0;
        }
    }

#ifdef __VMS
    strncpy((*ctx)->previous_entry_name, (*ctx)->entry_name,
            sizeof((*ctx)->previous_entry_name));

 again:
#endif

    direntry = FUNC5((*ctx)->dir);
    if (direntry == NULL) {
        return 0;
    }

    FUNC8((*ctx)->entry_name, direntry->d_name,
            sizeof((*ctx)->entry_name) - 1);
    (*ctx)->entry_name[sizeof((*ctx)->entry_name) - 1] = '\0';
#ifdef __VMS
    if ((*ctx)->expect_file_generations) {
        char *p = (*ctx)->entry_name + strlen((*ctx)->entry_name);

        while(p > (*ctx)->entry_name && isdigit(p[-1]))
            p--;
        if (p > (*ctx)->entry_name && p[-1] == ';')
            p[-1] = '\0';
        if (strcasecmp((*ctx)->entry_name, (*ctx)->previous_entry_name) == 0)
            goto again;
    }
#endif
    return (*ctx)->entry_name;
}