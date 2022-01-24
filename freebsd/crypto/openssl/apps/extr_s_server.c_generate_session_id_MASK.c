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
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 unsigned int MAX_SESSION_ID_ATTEMPTS ; 
 scalar_t__ FUNC0 (unsigned char*,unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  session_id_prefix ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(SSL *ssl, unsigned char *id,
                               unsigned int *id_len)
{
    unsigned int count = 0;
    do {
        if (FUNC0(id, *id_len) <= 0)
            return 0;
        /*
         * Prefix the session_id with the required prefix. NB: If our prefix
         * is too long, clip it - but there will be worse effects anyway, eg.
         * the server could only possibly create 1 session ID (ie. the
         * prefix!) so all future session negotiations will fail due to
         * conflicts.
         */
        FUNC2(id, session_id_prefix,
               (FUNC3(session_id_prefix) < *id_len) ?
               FUNC3(session_id_prefix) : *id_len);
    }
    while (FUNC1(ssl, id, *id_len) &&
           (++count < MAX_SESSION_ID_ATTEMPTS));
    if (count >= MAX_SESSION_ID_ATTEMPTS)
        return 0;
    return 1;
}