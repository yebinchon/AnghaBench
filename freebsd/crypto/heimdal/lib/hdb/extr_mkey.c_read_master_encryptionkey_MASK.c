#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ssize_t ;
struct TYPE_5__ {scalar_t__ keytype; } ;
typedef  TYPE_1__ krb5_keyblock ;
typedef  int krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  hdb_master_key ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ ETYPE_DES_CBC_CRC ; 
 scalar_t__ ETYPE_DES_CBC_MD5 ; 
 scalar_t__ ETYPE_DES_CFB64_NONE ; 
 int O_BINARY ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (unsigned char*,scalar_t__,TYPE_1__*,size_t*) ; 
 int errno ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (char const*,int) ; 
 scalar_t__ FUNC7 (int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static krb5_error_code
FUNC9(krb5_context context, const char *filename,
			  hdb_master_key *mkey)
{
    int fd;
    krb5_keyblock key;
    krb5_error_code ret;
    unsigned char buf[256];
    ssize_t len;
    size_t ret_len;

    fd = FUNC6(filename, O_RDONLY | O_BINARY);
    if(fd < 0) {
	int save_errno = errno;
	FUNC4(context, save_errno, "failed to open %s: %s",
			      filename, FUNC8(save_errno));
	return save_errno;
    }

    len = FUNC7(fd, buf, sizeof(buf));
    FUNC0(fd);
    if(len < 0) {
	int save_errno = errno;
	FUNC4(context, save_errno, "error reading %s: %s",
			      filename, FUNC8(save_errno));
	return save_errno;
    }

    ret = FUNC1(buf, len, &key, &ret_len);
    FUNC5(buf, 0, sizeof(buf));
    if(ret)
	return ret;

    /* Originally, the keytype was just that, and later it got changed
       to des-cbc-md5, but we always used des in cfb64 mode. This
       should cover all cases, but will break if someone has hacked
       this code to really use des-cbc-md5 -- but then that's not my
       problem. */
    if(key.keytype == ETYPE_DES_CBC_CRC || key.keytype == ETYPE_DES_CBC_MD5)
	key.keytype = ETYPE_DES_CFB64_NONE;

    ret = FUNC2(context, 0, &key, 0, mkey);
    FUNC3(context, &key);
    return ret;
}