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
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ time_t ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  scalar_t__ kadm5_ret_t ;
typedef  scalar_t__ int32_t ;
typedef  enum kadm_ops { ____Placeholder_kadm_ops } kadm_ops ;

/* Variables and functions */
 scalar_t__ KADM5_BAD_DB ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

kadm5_ret_t
FUNC3 (krb5_context context,
		    krb5_storage *sp,
		    uint32_t *ver,
		    time_t *timestamp,
		    enum kadm_ops *op,
		    uint32_t *len)
{
    krb5_error_code ret;
    off_t off, oldoff;
    int32_t tmp;

    oldoff = FUNC2(sp, 0, SEEK_CUR);

    FUNC2(sp, -8, SEEK_CUR);
    ret = FUNC0 (sp, &tmp);
    if (ret)
	goto end_of_storage;
    *len = tmp;
    ret = FUNC0 (sp, &tmp);
    if (ret)
	goto end_of_storage;
    *ver = tmp;
    off = 24 + *len;
    FUNC2(sp, -off, SEEK_CUR);
    ret = FUNC0 (sp, &tmp);
    if (ret)
	goto end_of_storage;
    if ((uint32_t)tmp != *ver) {
	FUNC2(sp, oldoff, SEEK_SET);
	FUNC1(context, KADM5_BAD_DB,
			       "kadm5_log_previous: log entry "
			       "have consistency failure, version number wrong "
			       "(tmp %lu ver %lu)",
			       (unsigned long)tmp,
			       (unsigned long)*ver);
	return KADM5_BAD_DB;
    }
    ret = FUNC0 (sp, &tmp);
    if (ret)
	goto end_of_storage;
    *timestamp = tmp;
    ret = FUNC0 (sp, &tmp);
    if (ret)
	goto end_of_storage;
    *op = tmp;
    ret = FUNC0 (sp, &tmp);
    if (ret)
	goto end_of_storage;
    if ((uint32_t)tmp != *len) {
	FUNC2(sp, oldoff, SEEK_SET);
	FUNC1(context, KADM5_BAD_DB,
			       "kadm5_log_previous: log entry "
			       "have consistency failure, length wrong");
	return KADM5_BAD_DB;
    }
    return 0;

 end_of_storage:
    FUNC2(sp, oldoff, SEEK_SET);
    FUNC1(context, ret, "kadm5_log_previous: end of storage "
			   "reached before end");
    return ret;
}