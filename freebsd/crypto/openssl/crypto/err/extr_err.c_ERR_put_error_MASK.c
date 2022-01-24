#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int top; int bottom; char const** err_file; int* err_line; int /*<<< orphan*/ * err_buffer; scalar_t__* err_flags; } ;
typedef  TYPE_1__ ERR_STATE ;

/* Variables and functions */
 int ERR_NUM_ERRORS ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,size_t) ; 
 int FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,char*,int) ; 
 char* FUNC5 (char const*,char) ; 

void FUNC6(int lib, int func, int reason, const char *file, int line)
{
    ERR_STATE *es;

#ifdef _OSD_POSIX
    /*
     * In the BS2000-OSD POSIX subsystem, the compiler generates path names
     * in the form "*POSIX(/etc/passwd)". This dirty hack strips them to
     * something sensible. @@@ We shouldn't modify a const string, though.
     */
    if (strncmp(file, "*POSIX(", sizeof("*POSIX(") - 1) == 0) {
        char *end;

        /* Skip the "*POSIX(" prefix */
        file += sizeof("*POSIX(") - 1;
        end = &file[strlen(file) - 1];
        if (*end == ')')
            *end = '\0';
        /* Optional: use the basename of the path only. */
        if ((end = strrchr(file, '/')) != NULL)
            file = &end[1];
    }
#endif
    es = FUNC1();
    if (es == NULL)
        return;

    es->top = (es->top + 1) % ERR_NUM_ERRORS;
    if (es->top == es->bottom)
        es->bottom = (es->bottom + 1) % ERR_NUM_ERRORS;
    es->err_flags[es->top] = 0;
    es->err_buffer[es->top] = FUNC0(lib, func, reason);
    es->err_file[es->top] = file;
    es->err_line[es->top] = line;
    FUNC2(es, es->top);
}