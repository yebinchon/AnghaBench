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
 int /*<<< orphan*/  KRB5_PW_SALT ; 
 scalar_t__ FUNC0 (char*,int,char*,int) ; 
 int /*<<< orphan*/  args ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,char*) ; 
 int /*<<< orphan*/  context ; 
 scalar_t__ convert_flag ; 
 int /*<<< orphan*/  enctype_str ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ help_flag ; 
 char* keyfile ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_2__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC19 (char*,char*) ; 
 int master_key_fd ; 
 int /*<<< orphan*/  num_args ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 scalar_t__ random_key_flag ; 
 size_t FUNC21 (int,char*,int) ; 
 scalar_t__ FUNC22 (char*,char*) ; 
 size_t FUNC23 (char*,char*) ; 
 scalar_t__ FUNC24 (char*) ; 
 scalar_t__ version_flag ; 

int
FUNC25(int argc, char **argv)
{
    char buf[1024];
    krb5_error_code ret;

    krb5_enctype enctype;

    hdb_master_key mkey;

    FUNC13(&context, argc, argv, args, num_args, NULL);

    if(help_flag)
	FUNC14(0, args, num_args);
    if(version_flag){
	FUNC20(NULL);
	FUNC2(0);
    }

    if (master_key_fd != -1 && random_key_flag)
	FUNC10(context, 1, "random-key and master-key-fd "
		  "is mutual exclusive");

    if (keyfile == NULL)
	FUNC1(&keyfile, "%s/m-key", FUNC5(context));

    ret = FUNC15(context, enctype_str, &enctype);
    if(ret)
	FUNC9(context, 1, ret, "krb5_string_to_enctype");

    ret = FUNC7(context, keyfile, &mkey);
    if(ret && ret != ENOENT)
	FUNC9(context, 1, ret, "reading master key from %s", keyfile);

    if (convert_flag) {
	if (ret)
	    FUNC9(context, 1, ret, "reading master key from %s", keyfile);
    } else {
	krb5_keyblock key;
	krb5_salt salt;
	salt.salttype = KRB5_PW_SALT;
	/* XXX better value? */
	salt.saltvalue.data = NULL;
	salt.saltvalue.length = 0;
	if (random_key_flag) {
	    ret = FUNC12(context, enctype, &key);
	    if (ret)
		FUNC9(context, 1, ret, "krb5_generate_random_keyblock");

	} else {
	    if(master_key_fd != -1) {
		ssize_t n;
		n = FUNC21(master_key_fd, buf, sizeof(buf));
		if(n <= 0)
		    FUNC9(context, 1, errno, "failed to read passphrase");
		buf[n] = '\0';
		buf[FUNC23(buf, "\r\n")] = '\0';

	    } else {
		if(FUNC0(buf, sizeof(buf), "Master key: ", 1))
		    FUNC2(1);
	    }
	    FUNC16(context, enctype, buf, salt, &key);
	}
	ret = FUNC4(context, &key, &mkey);

	FUNC11(context, &key);

    }

    {
	char *new, *old;
	FUNC1(&old, "%s.old", keyfile);
	FUNC1(&new, "%s.new", keyfile);
	if(FUNC24(new) < 0 && errno != ENOENT) {
	    ret = errno;
	    goto out;
	}
	FUNC18(context, "writing key to `%s'", keyfile);
	ret = FUNC8(context, new, mkey);
	if(ret)
	    FUNC24(new);
	else {
#ifndef NO_POSIX_LINKS
	    FUNC24(old);
	    if(FUNC19(keyfile, old) < 0 && errno != ENOENT) {
		ret = errno;
		FUNC24(new);
	    } else {
#endif
		if(FUNC22(new, keyfile) < 0) {
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
	    FUNC17(context, errno, "writing master key file");
    }

    FUNC6(context, mkey);

    FUNC2(ret != 0);
}