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
struct timeval {scalar_t__ tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct descr {int s; scalar_t__ type; scalar_t__ timeout; scalar_t__ len; int /*<<< orphan*/  addr_string; } ;
typedef  int /*<<< orphan*/  krb5_kdc_configuration ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  EINTR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int FD_SETSIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ SIGINT ; 
 scalar_t__ SIGTERM ; 
 scalar_t__ SIGXCPU ; 
 scalar_t__ SOCK_DGRAM ; 
 scalar_t__ SOCK_STREAM ; 
 int /*<<< orphan*/  TCP_TIMEOUT ; 
 int /*<<< orphan*/  FUNC3 (struct descr*) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ exit_flag ; 
 int /*<<< orphan*/  FUNC4 (struct descr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct descr*,size_t,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct descr*) ; 
 int /*<<< orphan*/  FUNC7 (struct descr*) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct descr**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct descr*,int /*<<< orphan*/ ,int) ; 
 struct descr* FUNC14 (struct descr*,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (struct descr*,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  rk_SOCK_ERRNO ; 
 int FUNC17 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 

void
FUNC19(krb5_context context,
     krb5_kdc_configuration *config)
{
    struct descr *d;
    unsigned int ndescr;

    ndescr = FUNC8(context, config, &d);
    if(ndescr <= 0)
	FUNC10(context, 1, "No sockets!");
    FUNC9(context, config, 0, "KDC started");
    while(exit_flag == 0){
	struct timeval tmout;
	fd_set fds;
	int min_free = -1;
	int max_fd = 0;
	size_t i;

	FUNC2(&fds);
	for(i = 0; i < ndescr; i++) {
	    if(!FUNC16(d[i].s)){
		if(d[i].type == SOCK_STREAM &&
		   d[i].timeout && d[i].timeout < FUNC18(NULL)) {
		    FUNC9(context, config, 1,
			    "TCP-connection from %s expired after %lu bytes",
			    d[i].addr_string, (unsigned long)d[i].len);
		    FUNC3(&d[i]);
		    continue;
		}
#ifndef NO_LIMIT_FD_SETSIZE
		if(max_fd < d[i].s)
		    max_fd = d[i].s;
#ifdef FD_SETSIZE
		if (max_fd >= FD_SETSIZE)
		    krb5_errx(context, 1, "fd too large");
#endif
#endif
		FUNC1(d[i].s, &fds);
	    } else if(min_free < 0 || i < (size_t)min_free)
		min_free = i;
	}
	if(min_free == -1){
	    struct descr *tmp;
	    tmp = FUNC14(d, (ndescr + 4) * sizeof(*d));
	    if(tmp == NULL)
		FUNC12(context, "No memory");
	    else {
		d = tmp;
		FUNC15 (d, ndescr);
		FUNC13(d + ndescr, 0, 4 * sizeof(*d));
		for(i = ndescr; i < ndescr + 4; i++)
		    FUNC7 (&d[i]);
		min_free = ndescr;
		ndescr += 4;
	    }
	}

	tmout.tv_sec = TCP_TIMEOUT;
	tmout.tv_usec = 0;
	switch(FUNC17(max_fd + 1, &fds, 0, 0, &tmout)){
	case 0:
	    break;
	case -1:
	    if (errno != EINTR)
		FUNC11(context, rk_SOCK_ERRNO, "select");
	    break;
	default:
	    for(i = 0; i < ndescr; i++)
		if(!FUNC16(d[i].s) && FUNC0(d[i].s, &fds)) {
		    if(d[i].type == SOCK_DGRAM)
			FUNC6(context, config, &d[i]);
		    else if(d[i].type == SOCK_STREAM)
			FUNC5(context, config, d, i, min_free);
		}
	}
    }
    if (0);
#ifdef SIGXCPU
    else if(exit_flag == SIGXCPU)
	kdc_log(context, config, 0, "CPU time limit exceeded");
#endif
    else if(exit_flag == SIGINT || exit_flag == SIGTERM)
	FUNC9(context, config, 0, "Terminated");
    else
	FUNC9(context, config, 0, "Unexpected exit reason: %d", exit_flag);
    FUNC4 (d);
}