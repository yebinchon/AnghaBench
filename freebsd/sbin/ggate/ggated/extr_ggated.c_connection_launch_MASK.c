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
struct ggd_connection {int /*<<< orphan*/  c_path; } ;
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct ggd_connection*) ; 
 int errno ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inqueue_cond ; 
 int /*<<< orphan*/  inqueue_mtx ; 
 int /*<<< orphan*/  outqueue_cond ; 
 int /*<<< orphan*/  outqueue_mtx ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ggd_connection*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  recv_thread ; 
 int /*<<< orphan*/  send_thread ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void
FUNC8(struct ggd_connection *conn)
{
	pthread_t td;
	int error, pid;

	pid = FUNC1();
	if (pid > 0)
		return;
	else if (pid == -1) {
		FUNC2(LOG_ERR, "Cannot fork: %s.", FUNC7(errno));
		return;
	}
	FUNC2(LOG_DEBUG, "Process created [%s].", conn->c_path);

	/*
	 * Create condition variables and mutexes for in-queue and out-queue
	 * synchronization.
	 */
	error = FUNC6(&inqueue_mtx, NULL);
	if (error != 0) {
		FUNC3("pthread_mutex_init(inqueue_mtx): %s.",
		    FUNC7(error));
	}
	error = FUNC4(&inqueue_cond, NULL);
	if (error != 0) {
		FUNC3("pthread_cond_init(inqueue_cond): %s.",
		    FUNC7(error));
	}
	error = FUNC6(&outqueue_mtx, NULL);
	if (error != 0) {
		FUNC3("pthread_mutex_init(outqueue_mtx): %s.",
		    FUNC7(error));
	}
	error = FUNC4(&outqueue_cond, NULL);
	if (error != 0) {
		FUNC3("pthread_cond_init(outqueue_cond): %s.",
		    FUNC7(error));
	}

	/*
	 * Create threads:
	 * recvtd - thread for receiving I/O request
	 * diskio - thread for doing I/O request
	 * sendtd - thread for sending I/O requests back
	 */
	error = FUNC5(&td, NULL, send_thread, conn);
	if (error != 0) {
		FUNC3("pthread_create(send_thread): %s.",
		    FUNC7(error));
	}
	error = FUNC5(&td, NULL, recv_thread, conn);
	if (error != 0) {
		FUNC3("pthread_create(recv_thread): %s.",
		    FUNC7(error));
	}
	FUNC0(conn);
}