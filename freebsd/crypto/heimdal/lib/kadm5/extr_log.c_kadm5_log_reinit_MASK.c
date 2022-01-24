#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int log_fd; scalar_t__ version; int /*<<< orphan*/  log_file; } ;
struct TYPE_4__ {TYPE_2__ log_context; } ;
typedef  TYPE_1__ kadm5_server_context ;
typedef  int /*<<< orphan*/  kadm5_ret_t ;
typedef  TYPE_2__ kadm5_log_context ;

/* Variables and functions */
 int /*<<< orphan*/  LOCK_EX ; 
 int /*<<< orphan*/  LOCK_UN ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 

kadm5_ret_t
FUNC3 (kadm5_server_context *context)
{
    int fd;
    kadm5_log_context *log_context = &context->log_context;

    if (log_context->log_fd != -1) {
	FUNC1 (log_context->log_fd, LOCK_UN);
	FUNC0 (log_context->log_fd);
	log_context->log_fd = -1;
    }
    fd = FUNC2 (log_context->log_file, O_RDWR | O_CREAT | O_TRUNC, 0600);
    if (fd < 0)
	return errno;
    if (FUNC1 (fd, LOCK_EX) < 0) {
	FUNC0 (fd);
	return errno;
    }

    log_context->version = 0;
    log_context->log_fd  = fd;
    return 0;
}