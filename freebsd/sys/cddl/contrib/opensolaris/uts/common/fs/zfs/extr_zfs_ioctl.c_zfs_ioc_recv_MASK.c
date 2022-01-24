#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  z_vfs; int /*<<< orphan*/  z_os; } ;
typedef  TYPE_1__ zfsvfs_t ;
struct TYPE_18__ {char* zc_value; scalar_t__ zc_nvlist_src; int zc_cookie; char* zc_string; int /*<<< orphan*/  zc_obj; int /*<<< orphan*/  zc_nvlist_dst_size; int /*<<< orphan*/  zc_action_handle; int /*<<< orphan*/  zc_cleanup_fd; int /*<<< orphan*/  zc_resumable; int /*<<< orphan*/  zc_begin_record; int /*<<< orphan*/  zc_iflags; int /*<<< orphan*/  zc_nvlist_src_size; int /*<<< orphan*/  zc_guid; } ;
typedef  TYPE_2__ zfs_cmd_t ;
typedef  scalar_t__ offset_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_19__ {scalar_t__ f_offset; } ;
typedef  TYPE_3__ file_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;
struct TYPE_20__ {int /*<<< orphan*/  drc_newfs; int /*<<< orphan*/  drc_ds; } ;
typedef  TYPE_4__ dmu_recv_cookie_t ;
typedef  void* boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* B_FALSE ; 
 void* B_TRUE ; 
 int /*<<< orphan*/  EBADF ; 
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ MAXOFFSET_T ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SPA_VERSION_RECVD_PROPS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  ZPROP_ERR_NOCLEAR ; 
 int /*<<< orphan*/  ZPROP_ERR_NORESTORE ; 
 int /*<<< orphan*/  ZPROP_SRC_LOCAL ; 
 int /*<<< orphan*/  ZPROP_SRC_RECEIVED ; 
 int /*<<< orphan*/  cap_pread_rights ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  curthread ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,char*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,char*,TYPE_4__*) ; 
 int FUNC7 (TYPE_4__*,TYPE_1__*) ; 
 int FUNC8 (TYPE_4__*,TYPE_3__*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (char*,int /*<<< orphan*/ **) ; 
 int FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,TYPE_3__**) ; 
 int /*<<< orphan*/ * FUNC16 () ; 
 int FUNC17 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 TYPE_3__* FUNC18 (int) ; 
 scalar_t__ FUNC19 (char*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ) ; 
 char* FUNC27 (char*,char) ; 
 int /*<<< orphan*/  FUNC28 (char*,char*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC30 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 void* zfs_ioc_recv_inject_err ; 
 int FUNC31 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC32 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC33 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC34 (char*) ; 

__attribute__((used)) static int
FUNC35(zfs_cmd_t *zc)
{
	file_t *fp;
	dmu_recv_cookie_t drc;
	boolean_t force = (boolean_t)zc->zc_guid;
	int fd;
	int error = 0;
	int props_error = 0;
	nvlist_t *errors;
	offset_t off;
	nvlist_t *props = NULL; /* sent properties */
	nvlist_t *origprops = NULL; /* existing properties */
	nvlist_t *delayprops = NULL; /* sent properties applied post-receive */
	char *origin = NULL;
	char *tosnap;
	char tofs[ZFS_MAX_DATASET_NAME_LEN];
	boolean_t first_recvd_props = B_FALSE;

	if (FUNC4(zc->zc_value, NULL, NULL) != 0 ||
	    FUNC27(zc->zc_value, '@') == NULL ||
	    FUNC27(zc->zc_value, '%'))
		return (FUNC1(EINVAL));

	(void) FUNC28(tofs, zc->zc_value);
	tosnap = FUNC27(tofs, '@');
	*tosnap++ = '\0';

	if (zc->zc_nvlist_src != 0 &&
	    (error = FUNC17(zc->zc_nvlist_src, zc->zc_nvlist_src_size,
	    zc->zc_iflags, &props)) != 0)
		return (error);

	fd = zc->zc_cookie;
#ifdef illumos
	fp = getf(fd);
#else
	FUNC15(curthread, fd, &cap_pread_rights, &fp);
#endif
	if (fp == NULL) {
		FUNC20(props);
		return (FUNC1(EBADF));
	}

	errors = FUNC16();

	if (zc->zc_string[0])
		origin = zc->zc_string;

	error = FUNC6(tofs, tosnap,
	    &zc->zc_begin_record, force, zc->zc_resumable, origin, &drc);
	if (error != 0)
		goto out;

	/*
	 * Set properties before we receive the stream so that they are applied
	 * to the new data. Note that we must call dmu_recv_stream() if
	 * dmu_recv_begin() succeeds.
	 */
	if (props != NULL && !drc.drc_newfs) {
		if (FUNC26(FUNC9(drc.drc_ds)) >=
		    SPA_VERSION_RECVD_PROPS &&
		    !FUNC10(tofs))
			first_recvd_props = B_TRUE;

		/*
		 * If new received properties are supplied, they are to
		 * completely replace the existing received properties, so stash
		 * away the existing ones.
		 */
		if (FUNC11(tofs, &origprops) == 0) {
			nvlist_t *errlist = NULL;
			/*
			 * Don't bother writing a property if its value won't
			 * change (and avoid the unnecessary security checks).
			 *
			 * The first receive after SPA_VERSION_RECVD_PROPS is a
			 * special case where we blow away all local properties
			 * regardless.
			 */
			if (!first_recvd_props)
				FUNC23(props, origprops);
			if (FUNC30(tofs, origprops, &errlist) != 0)
				(void) FUNC21(errors, errlist, 0);
			FUNC20(errlist);

			if (FUNC3(tofs, origprops,
			    first_recvd_props ? NULL : props) != 0)
				zc->zc_obj |= ZPROP_ERR_NOCLEAR;
		} else {
			zc->zc_obj |= ZPROP_ERR_NOCLEAR;
		}
	}

	if (props != NULL) {
		props_error = FUNC12(tofs);

		if (props_error == 0) {
			delayprops = FUNC14(props);
			(void) FUNC32(tofs, ZPROP_SRC_RECEIVED,
			    props, errors);
		}
	}

	off = fp->f_offset;
	error = FUNC8(&drc, fp, &off, zc->zc_cleanup_fd,
	    &zc->zc_action_handle);

	if (error == 0) {
		zfsvfs_t *zfsvfs = NULL;

		if (FUNC19(tofs, &zfsvfs) == 0) {
			/* online recv */
			dsl_dataset_t *ds;
			int end_err;

			ds = FUNC5(zfsvfs->z_os);
			error = FUNC33(zfsvfs);
			/*
			 * If the suspend fails, then the recv_end will
			 * likely also fail, and clean up after itself.
			 */
			end_err = FUNC7(&drc, zfsvfs);
			if (error == 0)
				error = FUNC31(zfsvfs, ds);
			error = error ? error : end_err;
#ifdef illumos
			VFS_RELE(zfsvfs->z_vfs);
#else
			FUNC29(zfsvfs->z_vfs);
#endif
		} else {
			error = FUNC7(&drc, NULL);
		}

		/* Set delayed properties now, after we're done receiving. */
		if (delayprops != NULL && error == 0) {
			(void) FUNC32(tofs, ZPROP_SRC_RECEIVED,
			    delayprops, errors);
		}
	}

	if (delayprops != NULL) {
		/*
		 * Merge delayed props back in with initial props, in case
		 * we're DEBUG and zfs_ioc_recv_inject_err is set (which means
		 * we have to make sure clear_received_props() includes
		 * the delayed properties).
		 *
		 * Since zfs_ioc_recv_inject_err is only in DEBUG kernels,
		 * using ASSERT() will be just like a VERIFY.
		 */
		FUNC0(FUNC21(props, delayprops, 0) == 0);
		FUNC20(delayprops);
	}

	/*
	 * Now that all props, initial and delayed, are set, report the prop
	 * errors to the caller.
	 */
	if (zc->zc_nvlist_dst_size != 0 &&
	    (FUNC22(errors, zc->zc_nvlist_dst_size) != 0 ||
	    FUNC24(zc, errors) != 0)) {
		/*
		 * Caller made zc->zc_nvlist_dst less than the minimum expected
		 * size or supplied an invalid address.
		 */
		props_error = FUNC1(EINVAL);
	}

	zc->zc_cookie = off - fp->f_offset;
	if (off >= 0 && off <= MAXOFFSET_T)
		fp->f_offset = off;

#ifdef	DEBUG
	if (zfs_ioc_recv_inject_err) {
		zfs_ioc_recv_inject_err = B_FALSE;
		error = 1;
	}
#endif

#ifdef __FreeBSD__
	if (error == 0)
		zvol_create_minors(tofs);
#endif

	/*
	 * On error, restore the original props.
	 */
	if (error != 0 && props != NULL && !drc.drc_newfs) {
		if (FUNC3(tofs, props, NULL) != 0) {
			/*
			 * We failed to clear the received properties.
			 * Since we may have left a $recvd value on the
			 * system, we can't clear the $hasrecvd flag.
			 */
			zc->zc_obj |= ZPROP_ERR_NORESTORE;
		} else if (first_recvd_props) {
			FUNC13(tofs);
		}

		if (origprops == NULL && !drc.drc_newfs) {
			/* We failed to stash the original properties. */
			zc->zc_obj |= ZPROP_ERR_NORESTORE;
		}

		/*
		 * dsl_props_set() will not convert RECEIVED to LOCAL on or
		 * after SPA_VERSION_RECVD_PROPS, so we need to specify LOCAL
		 * explictly if we're restoring local properties cleared in the
		 * first new-style receive.
		 */
		if (origprops != NULL &&
		    FUNC32(tofs, (first_recvd_props ?
		    ZPROP_SRC_LOCAL : ZPROP_SRC_RECEIVED),
		    origprops, NULL) != 0) {
			/*
			 * We stashed the original properties but failed to
			 * restore them.
			 */
			zc->zc_obj |= ZPROP_ERR_NORESTORE;
		}
	}
out:
	FUNC20(props);
	FUNC20(origprops);
	FUNC20(errors);
	FUNC25(fd);

	if (error == 0)
		error = props_error;

	return (error);
}