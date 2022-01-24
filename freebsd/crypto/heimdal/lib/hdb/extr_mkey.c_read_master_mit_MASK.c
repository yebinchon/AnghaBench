#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_storage ;
struct TYPE_4__ {int /*<<< orphan*/  keyvalue; int /*<<< orphan*/  keytype; } ;
typedef  TYPE_1__ krb5_keyblock ;
typedef  int krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  int16_t ;
typedef  int /*<<< orphan*/  hdb_master_key ;

/* Variables and functions */
 int O_BINARY ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int FUNC1 (int /*<<< orphan*/ ,int,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (char const*,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static krb5_error_code
FUNC12(krb5_context context, const char *filename,
		int byteorder, hdb_master_key *mkey)
{
    int fd;
    krb5_error_code ret;
    krb5_storage *sp;
    int16_t enctype;
    krb5_keyblock key;

    fd = FUNC10(filename, O_RDONLY | O_BINARY);
    if(fd < 0) {
	int save_errno = errno;
	FUNC6(context, save_errno, "failed to open %s: %s",
			       filename, FUNC11(save_errno));
	return save_errno;
    }
    sp = FUNC8(fd);
    if(sp == NULL) {
	FUNC0(fd);
	return errno;
    }
    FUNC9(sp, byteorder);
    /* could possibly use ret_keyblock here, but do it with more
       checks for now */
    {
	ret = FUNC5(sp, &enctype);
	if (ret)
	    goto out;
	ret = FUNC2(context, enctype);
	if (ret)
	   goto out;
	key.keytype = enctype;
	ret = FUNC4(sp, &key.keyvalue);
	if(ret)
	    goto out;
    }
    ret = FUNC1(context, 1, &key, 0, mkey);
    FUNC3(context, &key);
  out:
    FUNC7(sp);
    FUNC0(fd);
    return ret;
}