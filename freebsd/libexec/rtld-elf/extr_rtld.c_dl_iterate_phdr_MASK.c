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
struct dl_phdr_info {int dummy; } ;
typedef  int /*<<< orphan*/  phdr_info ;
typedef  int (* __dl_iterate_hdr_callback ) (struct dl_phdr_info*,int,void*) ;
typedef  int /*<<< orphan*/  RtldLockState ;
typedef  int /*<<< orphan*/  Obj_Entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  obj_list ; 
 int /*<<< orphan*/  obj_rtld ; 
 int /*<<< orphan*/  rtld_bind_lock ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct dl_phdr_info*) ; 
 int /*<<< orphan*/  rtld_phdr_lock ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC11(__dl_iterate_hdr_callback callback, void *param)
{
	struct dl_phdr_info phdr_info;
	Obj_Entry *obj, marker;
	RtldLockState bind_lockstate, phdr_lockstate;
	int error;

	FUNC6(&marker);
	error = 0;

	FUNC10(rtld_phdr_lock, &phdr_lockstate);
	FUNC10(rtld_bind_lock, &bind_lockstate);
	for (obj = FUNC3(FUNC0(&obj_list)); obj != NULL;) {
		FUNC1(&obj_list, obj, &marker, next);
		FUNC8(obj, &phdr_info);
		FUNC5(obj);
		FUNC7(rtld_bind_lock, &bind_lockstate);

		error = callback(&phdr_info, sizeof phdr_info, param);

		FUNC10(rtld_bind_lock, &bind_lockstate);
		FUNC9(obj);
		obj = FUNC4(&marker);
		FUNC2(&obj_list, &marker, next);
		if (error != 0) {
			FUNC7(rtld_bind_lock, &bind_lockstate);
			FUNC7(rtld_phdr_lock, &phdr_lockstate);
			return (error);
		}
	}

	if (error == 0) {
		FUNC8(&obj_rtld, &phdr_info);
		FUNC7(rtld_bind_lock, &bind_lockstate);
		error = callback(&phdr_info, sizeof(phdr_info), param);
	}
	FUNC7(rtld_phdr_lock, &phdr_lockstate);
	return (error);
}