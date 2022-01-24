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
struct ggd_export {int e_flags; int /*<<< orphan*/  e_path; int /*<<< orphan*/  e_mask; int /*<<< orphan*/  e_ip; } ;
struct ggd_connection {int c_flags; int c_diskfd; } ;
struct g_gate_cinit {int gc_flags; } ;
typedef  int /*<<< orphan*/  ipmask ;

/* Variables and functions */
 int EPERM ; 
 int GGATE_FLAG_RDONLY ; 
 int GGATE_FLAG_WRONLY ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int O_RDONLY ; 
 int O_RDWR ; 
 int O_WRONLY ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC6(struct ggd_export *ex, struct g_gate_cinit *cinit,
    struct ggd_connection *conn)
{
	char ipmask[32]; /* 32 == strlen("xxx.xxx.xxx.xxx/xxx.xxx.xxx.xxx")+1 */
	int error = 0, flags;

	FUNC5(ipmask, FUNC1(ex->e_ip), sizeof(ipmask));
	FUNC4(ipmask, "/", sizeof(ipmask));
	FUNC4(ipmask, FUNC1(ex->e_mask), sizeof(ipmask));
	if ((cinit->gc_flags & GGATE_FLAG_RDONLY) != 0) {
		if (ex->e_flags == O_WRONLY) {
			FUNC0(LOG_WARNING, "Read-only access requested, "
			    "but %s (%s) is exported write-only.", ex->e_path,
			    ipmask);
			return (EPERM);
		} else {
			conn->c_flags |= GGATE_FLAG_RDONLY;
		}
	} else if ((cinit->gc_flags & GGATE_FLAG_WRONLY) != 0) {
		if (ex->e_flags == O_RDONLY) {
			FUNC0(LOG_WARNING, "Write-only access requested, "
			    "but %s (%s) is exported read-only.", ex->e_path,
			    ipmask);
			return (EPERM);
		} else {
			conn->c_flags |= GGATE_FLAG_WRONLY;
		}
	} else {
		if (ex->e_flags == O_RDONLY) {
			FUNC0(LOG_WARNING, "Read-write access requested, "
			    "but %s (%s) is exported read-only.", ex->e_path,
			    ipmask);
			return (EPERM);
		} else if (ex->e_flags == O_WRONLY) {
			FUNC0(LOG_WARNING, "Read-write access requested, "
			    "but %s (%s) is exported write-only.", ex->e_path,
			    ipmask);
			return (EPERM);
		}
	}
	if ((conn->c_flags & GGATE_FLAG_RDONLY) != 0)
		flags = O_RDONLY;
	else if ((conn->c_flags & GGATE_FLAG_WRONLY) != 0)
		flags = O_WRONLY;
	else
		flags = O_RDWR;
	conn->c_diskfd = FUNC2(ex->e_path, flags);
	if (conn->c_diskfd == -1) {
		error = errno;
		FUNC0(LOG_ERR, "Cannot open %s: %s.", ex->e_path,
		    FUNC3(error));
		return (error);
	}
	return (0);
}