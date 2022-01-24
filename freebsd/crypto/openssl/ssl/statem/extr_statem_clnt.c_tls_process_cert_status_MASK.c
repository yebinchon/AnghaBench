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
typedef  int /*<<< orphan*/  PACKET ;
typedef  int /*<<< orphan*/  MSG_PROCESS_RETURN ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_PROCESS_CONTINUE_READING ; 
 int /*<<< orphan*/  MSG_PROCESS_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

MSG_PROCESS_RETURN FUNC1(SSL *s, PACKET *pkt)
{
    if (!FUNC0(s, pkt)) {
        /* SSLfatal() already called */
        return MSG_PROCESS_ERROR;
    }

    return MSG_PROCESS_CONTINUE_READING;
}