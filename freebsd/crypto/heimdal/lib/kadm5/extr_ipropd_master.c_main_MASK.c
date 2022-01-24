#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vers ;
typedef  scalar_t__ uint32_t ;
struct timeval {int member_0; int /*<<< orphan*/  member_1; } ;
struct sockaddr_un {int dummy; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
struct TYPE_16__ {int flags; int /*<<< orphan*/  fd; struct TYPE_16__* next; } ;
typedef  TYPE_2__ slave ;
typedef  int /*<<< orphan*/  peer_addr ;
typedef  int /*<<< orphan*/  krb5_socket_t ;
typedef  int /*<<< orphan*/  krb5_keytab ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_15__ {int /*<<< orphan*/  log_file; } ;
struct TYPE_17__ {TYPE_1__ log_context; } ;
typedef  TYPE_3__ kadm5_server_context ;
struct TYPE_18__ {scalar_t__ realm; int /*<<< orphan*/  mask; } ;
typedef  TYPE_4__ kadm5_config_params ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  conf ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FD_SETSIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KADM5_ADMIN_SERVICE ; 
 int /*<<< orphan*/  KADM5_CONFIG_REALM ; 
 int /*<<< orphan*/  O_RDONLY ; 
 scalar_t__ SIGINT ; 
 scalar_t__ SIGTERM ; 
 scalar_t__ SIGXCPU ; 
 int SLAVE_F_DEAD ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  args ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/ * config_file ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  database ; 
 scalar_t__ detach_from_console ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ exit_flag ; 
 unsigned long FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hdb_kt_ops ; 
 scalar_t__ help_flag ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC12 (int,scalar_t__*) ; 
 int /*<<< orphan*/  keytab_str ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (char**) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,char***) ; 
 int FUNC20 (int /*<<< orphan*/ *,int,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,char*,unsigned long,...) ; 
 int /*<<< orphan*/  log_facility ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int FUNC29 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  num_args ; 
 int FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC32 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  port_str ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC35 (int /*<<< orphan*/ ,TYPE_2__*,int,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ realm ; 
 scalar_t__ FUNC36 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 scalar_t__ FUNC37 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ,TYPE_2__*,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC40 () ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC42 (TYPE_2__*) ; 
 scalar_t__ FUNC43 (TYPE_2__*) ; 
 int /*<<< orphan*/  slave_time_gone ; 
 int /*<<< orphan*/  slave_time_missing ; 
 scalar_t__ time_before_gone ; 
 scalar_t__ time_before_missing ; 
 scalar_t__ version_flag ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC45 (int /*<<< orphan*/ ,TYPE_2__*,scalar_t__) ; 

int
FUNC46(int argc, char **argv)
{
    krb5_error_code ret;
    krb5_context context;
    void *kadm_handle;
    kadm5_server_context *server_context;
    kadm5_config_params conf;
    krb5_socket_t signal_fd, listen_fd, listen6_fd;
    int log_fd;
    slave *slaves = NULL;
    uint32_t current_version = 0, old_version = 0;
    krb5_keytab keytab;
    int optidx;
    char **files;

    optidx = FUNC20(&context, argc, argv, args, num_args, NULL);

    if(help_flag)
	FUNC23(0, args, num_args);
    if(version_flag) {
	FUNC34(NULL);
	FUNC8(0);
    }

    FUNC40();

    if (config_file == NULL) {
	FUNC4(&config_file, "%d/kdc.conf", FUNC10(context));
	if (config_file == NULL)
	    FUNC7(1, "out of memory");
    }

    ret = FUNC19(config_file, &files);
    if (ret)
	FUNC13(context, 1, ret, "getting configuration files");

    ret = FUNC21(context, files);
    FUNC15(files);
    if (ret)
	FUNC13(context, 1, ret, "reading configuration files");

    time_before_gone = FUNC32 (slave_time_gone,  "s");
    if (time_before_gone < 0)
	FUNC14 (context, 1, "couldn't parse time: %s", slave_time_gone);
    time_before_missing = FUNC32 (slave_time_missing,  "s");
    if (time_before_missing < 0)
	FUNC14 (context, 1, "couldn't parse time: %s", slave_time_missing);

#ifdef SUPPORT_DETACH
    if (detach_from_console)
	daemon(0, 0);
#endif
    FUNC33 (NULL);
    FUNC18 (context, "ipropd-master", &log_facility);
    FUNC22(context, log_facility);

    ret = FUNC16(context, &hdb_kt_ops);
    if(ret)
	FUNC13(context, 1, ret, "krb5_kt_register");

    ret = FUNC17(context, keytab_str, &keytab);
    if(ret)
	FUNC13(context, 1, ret, "krb5_kt_resolve: %s", keytab_str);

    FUNC30(&conf, 0, sizeof(conf));
    if(realm) {
	conf.mask |= KADM5_CONFIG_REALM;
	conf.realm = realm;
    }
    ret = FUNC11 (context,
				    KADM5_ADMIN_SERVICE,
				    NULL,
				    KADM5_ADMIN_SERVICE,
				    &conf, 0, 0,
				    &kadm_handle);
    if (ret)
	FUNC13 (context, 1, ret, "kadm5_init_with_password_ctx");

    server_context = (kadm5_server_context *)kadm_handle;

    log_fd = FUNC31 (server_context->log_context.log_file, O_RDONLY, 0);
    if (log_fd < 0)
	FUNC13 (context, 1, errno, "open %s",
		  server_context->log_context.log_file);

    signal_fd = FUNC28 (context);
    listen_fd = FUNC27 (context, port_str);
    listen6_fd = FUNC26 (context, port_str);

    FUNC12 (log_fd, &current_version);

    FUNC25(context, "ipropd-master started at version: %lu",
	       (unsigned long)current_version);

    while(exit_flag == 0){
	slave *p;
	fd_set readset;
	int max_fd = 0;
	struct timeval to = {30, 0};
	uint32_t vers;

#ifndef NO_LIMIT_FD_SETSIZE
	if (signal_fd >= FD_SETSIZE || listen_fd >= FD_SETSIZE ||
	    listen6_fd >= FD_SETSIZE)
	    FUNC14 (context, 1, "fd too large");
#endif

	FUNC2(&readset);
	FUNC1(signal_fd, &readset);
	max_fd = FUNC29(max_fd, signal_fd);
	FUNC1(listen_fd, &readset);
	max_fd = FUNC29(max_fd, listen_fd);
	FUNC1(listen6_fd, &readset);
	max_fd = FUNC29(max_fd, listen6_fd);

	for (p = slaves; p != NULL; p = p->next) {
	    if (p->flags & SLAVE_F_DEAD)
		continue;
	    FUNC1(p->fd, &readset);
	    max_fd = FUNC29(max_fd, p->fd);
	}

	ret = FUNC37 (max_fd + 1,
		      &readset, NULL, NULL, &to);
	if (ret < 0) {
	    if (errno == EINTR)
		continue;
	    else
		FUNC13 (context, 1, errno, "select");
	}

	if (ret == 0) {
	    old_version = current_version;
	    FUNC12 (log_fd, &current_version);

	    if (current_version > old_version) {
		FUNC25(context,
			   "Missed a signal, updating slaves %lu to %lu",
			   (unsigned long)old_version,
			   (unsigned long)current_version);
		for (p = slaves; p != NULL; p = p->next) {
		    if (p->flags & SLAVE_F_DEAD)
			continue;
		    FUNC39 (context, p, log_fd, database, current_version);
		}
	    }
	}

	if (ret && FUNC0(signal_fd, &readset)) {
#ifndef NO_UNIX_SOCKETS
	    struct sockaddr_un peer_addr;
#else
	    struct sockaddr_storage peer_addr;
#endif
	    socklen_t peer_len = sizeof(peer_addr);

	    if(FUNC36(signal_fd, (void *)&vers, sizeof(vers), 0,
			(struct sockaddr *)&peer_addr, &peer_len) < 0) {
		FUNC24 (context, errno, "recvfrom");
		continue;
	    }
	    --ret;
	    FUNC5(ret >= 0);
	    old_version = current_version;
	    FUNC12 (log_fd, &current_version);
	    if (current_version > old_version) {
		FUNC25(context,
			   "Got a signal, updating slaves %lu to %lu",
			   (unsigned long)old_version,
			   (unsigned long)current_version);
		for (p = slaves; p != NULL; p = p->next) {
		    if (p->flags & SLAVE_F_DEAD)
			continue;
		    FUNC39 (context, p, log_fd, database, current_version);
		}
	    } else {
		FUNC25(context,
			   "Got a signal, but no update in log version %lu",
			   (unsigned long)current_version);
	    }
        }

	for(p = slaves; p != NULL; p = p->next) {
	    if (p->flags & SLAVE_F_DEAD)
	        continue;
	    if (ret && FUNC0(p->fd, &readset)) {
		--ret;
		FUNC5(ret >= 0);
		if(FUNC35 (context, p, log_fd, database, current_version))
		    FUNC41(context, p);
	    } else if (FUNC42 (p))
		FUNC41(context, p);
	    else if (FUNC43 (p))
		FUNC38 (context, p);
	}

	if (ret && FUNC0(listen6_fd, &readset)) {
	    FUNC3 (context, keytab, &slaves, listen6_fd);
	    --ret;
	    FUNC5(ret >= 0);
	}
	if (ret && FUNC0(listen_fd, &readset)) {
	    FUNC3 (context, keytab, &slaves, listen_fd);
	    --ret;
	    FUNC5(ret >= 0);
	}
	FUNC45(context, slaves, current_version);
    }

    if(exit_flag == SIGINT || exit_flag == SIGTERM)
	FUNC25(context, "%s terminated", FUNC9());
#ifdef SIGXCPU
    else if(exit_flag == SIGXCPU)
	krb5_warnx(context, "%s CPU time limit exceeded", getprogname());
#endif
    else
	FUNC25(context, "%s unexpected exit reason: %ld",
		   FUNC9(), (long)exit_flag);

    FUNC44(context);

    return 0;
}