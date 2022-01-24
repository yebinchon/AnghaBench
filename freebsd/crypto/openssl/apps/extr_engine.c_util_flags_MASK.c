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
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 unsigned int ENGINE_CMD_FLAG_INTERNAL ; 
 unsigned int ENGINE_CMD_FLAG_NO_INPUT ; 
 unsigned int ENGINE_CMD_FLAG_NUMERIC ; 
 unsigned int ENGINE_CMD_FLAG_STRING ; 

__attribute__((used)) static int FUNC1(BIO *out, unsigned int flags, const char *indent)
{
    int started = 0, err = 0;
    /* Indent before displaying input flags */
    FUNC0(out, "%s%s(input flags): ", indent, indent);
    if (flags == 0) {
        FUNC0(out, "<no flags>\n");
        return 1;
    }
    /*
     * If the object is internal, mark it in a way that shows instead of
     * having it part of all the other flags, even if it really is.
     */
    if (flags & ENGINE_CMD_FLAG_INTERNAL) {
        FUNC0(out, "[Internal] ");
    }

    if (flags & ENGINE_CMD_FLAG_NUMERIC) {
        FUNC0(out, "NUMERIC");
        started = 1;
    }
    /*
     * Now we check that no combinations of the mutually exclusive NUMERIC,
     * STRING, and NO_INPUT flags have been used. Future flags that can be
     * OR'd together with these would need to added after these to preserve
     * the testing logic.
     */
    if (flags & ENGINE_CMD_FLAG_STRING) {
        if (started) {
            FUNC0(out, "|");
            err = 1;
        }
        FUNC0(out, "STRING");
        started = 1;
    }
    if (flags & ENGINE_CMD_FLAG_NO_INPUT) {
        if (started) {
            FUNC0(out, "|");
            err = 1;
        }
        FUNC0(out, "NO_INPUT");
        started = 1;
    }
    /* Check for unknown flags */
    flags = flags & ~ENGINE_CMD_FLAG_NUMERIC &
        ~ENGINE_CMD_FLAG_STRING &
        ~ENGINE_CMD_FLAG_NO_INPUT & ~ENGINE_CMD_FLAG_INTERNAL;
    if (flags) {
        if (started)
            FUNC0(out, "|");
        FUNC0(out, "<0x%04X>", flags);
    }
    if (err)
        FUNC0(out, "  <illegal flags!>");
    FUNC0(out, "\n");
    return 1;
}