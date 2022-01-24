#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stash_options {char* key_file_string; int master_key_fd_integer; scalar_t__ random_password_flag; scalar_t__ convert_file_flag; int /*<<< orphan*/  enctype_string; } ;
typedef  size_t ssize_t ;
struct TYPE_4__ {scalar_t__ length; int /*<<< orphan*/ * data; } ;
struct TYPE_5__ {TYPE_1__ saltvalue; int /*<<< orphan*/  salttype; } ;
typedef  TYPE_2__ krb5_salt ;
typedef  int /*<<< orphan*/  krb5_keyblock ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_enctype ;
typedef  int /*<<< orphan*/  hdb_master_key ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  KRB5_PW_SALT ; 
 scalar_t__ FUNC0 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,char*) ; 
 int /*<<< orphan*/  context ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_2__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  local_flag ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int) ; 
 size_t FUNC17 (int,char*,int) ; 
 scalar_t__ FUNC18 (char*,char*) ; 
 size_t FUNC19 (char*,char*) ; 
 scalar_t__ FUNC20 (char*) ; 

int
FUNC21(struct stash_options *opt, int argc, char **argv)
{
    char buf[1024];
    krb5_error_code ret;
    krb5_enctype enctype;
    hdb_master_key mkey;

    if(!local_flag) {
	FUNC13(context, "stash is only available in local (-l) mode");
	return 0;
    }

    ret = FUNC10(context, opt->enctype_string, &enctype);
    if(ret) {
	FUNC12(context, ret, "%s", opt->enctype_string);
	return 0;
    }

    if(opt->key_file_string == NULL) {
	FUNC1(&opt->key_file_string, "%s/m-key", FUNC5(context));
	if (opt->key_file_string == NULL)
	    FUNC2(1, "out of memory");
    }

    ret = FUNC7(context, opt->key_file_string, &mkey);
    if(ret && ret != ENOENT) {
	FUNC12(context, ret, "reading master key from %s",
		  opt->key_file_string);
	return 0;
    }

    if (opt->convert_file_flag) {
	if (ret)
	    FUNC12(context, ret, "reading master key from %s",
		      opt->key_file_string);
	return 0;
    } else {
	krb5_keyblock key;
	krb5_salt salt;
	salt.salttype = KRB5_PW_SALT;
	/* XXX better value? */
	salt.saltvalue.data = NULL;
	salt.saltvalue.length = 0;
	if(opt->master_key_fd_integer != -1) {
	    ssize_t n;
	    n = FUNC17(opt->master_key_fd_integer, buf, sizeof(buf));
	    if(n == 0)
		FUNC13(context, "end of file reading passphrase");
	    else if(n < 0) {
		FUNC12(context, errno, "reading passphrase");
		n = 0;
	    }
	    buf[n] = '\0';
	    buf[FUNC19(buf, "\r\n")] = '\0';
	} else if (opt->random_password_flag) {
	    FUNC16 (buf, sizeof(buf));
	    FUNC15("Using random master stash password: %s\n", buf);
	} else {
	    if(FUNC0(buf, sizeof(buf), "Master key: ", 1)) {
		FUNC6(context, mkey);
		return 0;
	    }
	}
	ret = FUNC11(context, enctype, buf, salt, &key);
	ret = FUNC4(context, &key, &mkey);
	FUNC9(context, &key);
    }

    {
	char *new, *old;
	FUNC1(&old, "%s.old", opt->key_file_string);
	FUNC1(&new, "%s.new", opt->key_file_string);
	if(old == NULL || new == NULL) {
	    ret = ENOMEM;
	    goto out;
	}

	if(FUNC20(new) < 0 && errno != ENOENT) {
	    ret = errno;
	    goto out;
	}
	FUNC13(context, "writing key to \"%s\"", opt->key_file_string);
	ret = FUNC8(context, new, mkey);
	if(ret)
	    FUNC20(new);
	else {
	    FUNC20(old);
#ifndef NO_POSIX_LINKS
	    if(FUNC14(opt->key_file_string, old) < 0 && errno != ENOENT) {
		ret = errno;
		FUNC20(new);
	    } else {
#endif
		if(FUNC18(new, opt->key_file_string) < 0) {
		    ret = errno;
		}
#ifndef NO_POSIX_LINKS
	    }
#endif
	}
    out:
	FUNC3(old);
	FUNC3(new);
	if(ret)
	    FUNC12(context, errno, "writing master key file");
    }

    FUNC6(context, mkey);
    return 0;
}