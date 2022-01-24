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
typedef  int uint64_t ;
struct kevent32 {int data1; int data2; int* ext64; } ;
struct kevent {int data; int* ext; } ;
struct freebsd32_kevent_args {int eventlist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kevent,struct kevent32,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int KQ_NEVENTS ; 
 int /*<<< orphan*/  FUNC2 (struct kevent,struct kevent32,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct kevent32*,int,int) ; 
 int /*<<< orphan*/  fflags ; 
 int /*<<< orphan*/  filter ; 
 int /*<<< orphan*/  flags ; 
 int /*<<< orphan*/  ident ; 
 int FUNC4 (int*) ; 
 int /*<<< orphan*/  udata ; 

__attribute__((used)) static int
FUNC5(void *arg, struct kevent *kevp, int count)
{
	struct freebsd32_kevent_args *uap;
	struct kevent32	ks32[KQ_NEVENTS];
	uint64_t e;
	int i, j, error;

	FUNC1(count <= KQ_NEVENTS, ("count (%d) > KQ_NEVENTS", count));
	uap = (struct freebsd32_kevent_args *)arg;

	for (i = 0; i < count; i++) {
		FUNC0(kevp[i], ks32[i], ident);
		FUNC0(kevp[i], ks32[i], filter);
		FUNC0(kevp[i], ks32[i], flags);
		FUNC0(kevp[i], ks32[i], fflags);
#if BYTE_ORDER == LITTLE_ENDIAN
		ks32[i].data1 = kevp[i].data;
		ks32[i].data2 = kevp[i].data >> 32;
#else
		ks32[i].data1 = kevp[i].data >> 32;
		ks32[i].data2 = kevp[i].data;
#endif
		FUNC2(kevp[i], ks32[i], udata);
		for (j = 0; j < FUNC4(kevp->ext); j++) {
			e = kevp[i].ext[j];
#if BYTE_ORDER == LITTLE_ENDIAN
			ks32[i].ext64[2 * j] = e;
			ks32[i].ext64[2 * j + 1] = e >> 32;
#else
			ks32[i].ext64[2 * j] = e >> 32;
			ks32[i].ext64[2 * j + 1] = e;
#endif
		}
	}
	error = FUNC3(ks32, uap->eventlist, count * sizeof *ks32);
	if (error == 0)
		uap->eventlist += count;
	return (error);
}