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
struct thread {int dummy; } ;
struct stat32 {int dummy; } ;
struct stat {int dummy; } ;
struct freebsd32_fhstat_args {int /*<<< orphan*/  sb; int /*<<< orphan*/  u_fhp; } ;
struct fhandle {int dummy; } ;
typedef  int /*<<< orphan*/  sb32 ;
typedef  int /*<<< orphan*/  fhandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stat*,struct stat32*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct fhandle*,int) ; 
 int FUNC2 (struct stat32*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct thread*,struct fhandle,struct stat*) ; 

int
FUNC4(struct thread *td, struct freebsd32_fhstat_args *uap)
{
	struct stat sb;
	struct stat32 sb32;
	struct fhandle fh;
	int error;

	error = FUNC1(uap->u_fhp, &fh, sizeof(fhandle_t));
        if (error != 0)
                return (error);
	error = FUNC3(td, fh, &sb);
	if (error != 0)
		return (error);
	FUNC0(&sb, &sb32);
	error = FUNC2(&sb32, uap->sb, sizeof (sb32));
	return (error);
}