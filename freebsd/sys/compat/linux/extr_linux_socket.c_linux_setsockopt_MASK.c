#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tv ;
struct timeval {int /*<<< orphan*/  tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct thread {int dummy; } ;
struct sockaddr {int /*<<< orphan*/  tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct setsockopt_args {int level; int name; int valsize; int /*<<< orphan*/  val; int /*<<< orphan*/  s; } ;
struct linux_setsockopt_args {int optlen; int /*<<< orphan*/  optval; int /*<<< orphan*/  s; int /*<<< orphan*/  optname; int /*<<< orphan*/  level; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  linux_tv ;
struct TYPE_3__ {int /*<<< orphan*/  tv_usec; int /*<<< orphan*/  tv_sec; } ;
typedef  TYPE_1__ l_timeval ;

/* Variables and functions */
 int ENOPROTOOPT ; 
#define  IPPROTO_IP 133 
#define  IPPROTO_IPV6 132 
#define  IPPROTO_TCP 131 
 int IPV6_NEXTHOP ; 
 int /*<<< orphan*/  M_SONAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  SOL_SOCKET 130 
#define  SO_RCVTIMEO 129 
#define  SO_SNDTIMEO 128 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct timeval*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct thread*,int /*<<< orphan*/ ,int,int,struct timeval*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct timeval**,int*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct thread*,struct setsockopt_args*) ; 

int
FUNC11(struct thread *td, struct linux_setsockopt_args *args)
{
	struct setsockopt_args /* {
		int s;
		int level;
		int name;
		const void *val;
		int valsize;
	} */ bsd_args;
	l_timeval linux_tv;
	struct sockaddr *sa;
	struct timeval tv;
	socklen_t len;
	int error, name;

	bsd_args.s = args->s;
	bsd_args.level = FUNC8(args->level);
	switch (bsd_args.level) {
	case SOL_SOCKET:
		name = FUNC6(args->optname);
		switch (name) {
		case SO_RCVTIMEO:
			/* FALLTHROUGH */
		case SO_SNDTIMEO:
			error = FUNC1(FUNC0(args->optval), &linux_tv,
			    sizeof(linux_tv));
			if (error != 0)
				return (error);
			tv.tv_sec = linux_tv.tv_sec;
			tv.tv_usec = linux_tv.tv_usec;
			return (FUNC3(td, args->s, bsd_args.level,
			    name, &tv, UIO_SYSSPACE, sizeof(tv)));
			/* NOTREACHED */
		default:
			break;
		}
		break;
	case IPPROTO_IP:
		name = FUNC5(args->optname);
		break;
	case IPPROTO_IPV6:
		name = FUNC4(args->optname);
		break;
	case IPPROTO_TCP:
		name = FUNC9(args->optname);
		break;
	default:
		name = -1;
		break;
	}
	if (name == -1)
		return (ENOPROTOOPT);


	if (name == IPV6_NEXTHOP) {

		len = args->optlen;
		error = FUNC7(FUNC0(args->optval), &sa, &len);
		if (error != 0)
			return (error);

		error = FUNC3(td, args->s, bsd_args.level,
		    name, sa, UIO_SYSSPACE, len);
		FUNC2(sa, M_SONAME);
	} else {
		bsd_args.name = name;
		bsd_args.val = FUNC0(args->optval);
		bsd_args.valsize = args->optlen;
		error = FUNC10(td, &bsd_args);
	}

	return (error);
}