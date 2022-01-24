#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int uint32_t ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  krb5_storage ;
struct TYPE_5__ {size_t length; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_address ;
typedef  int /*<<< orphan*/  a ;
struct TYPE_6__ {unsigned int tv_sec; } ;
typedef  int /*<<< orphan*/  Der_type ;
typedef  int /*<<< orphan*/  Der_class ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int O_APPEND ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 TYPE_4__ _kdc_now ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int*,int /*<<< orphan*/ *) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct sockaddr const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (unsigned char const*) ; 

int
FUNC14(krb5_context context,
		      const char *fn,
		      const unsigned char *buf,
		      size_t len,
		      const krb5_data *reply,
		      const struct sockaddr *sa)
{
    krb5_storage *sp;
    krb5_address a;
    int fd, ret;
    uint32_t t;
    krb5_data d;

    FUNC11(&a, 0, sizeof(a));

    d.data = FUNC13(buf);
    d.length = len;
    t = _kdc_now.tv_sec;

    fd = FUNC12(fn, O_WRONLY|O_CREAT|O_APPEND, 0600);
    if (fd < 0) {
	int saved_errno = errno;
	FUNC4(context, saved_errno, "Failed to open: %s", fn);
	return saved_errno;
    }

    sp = FUNC7(fd);
    FUNC1(fd);
    if (sp == NULL) {
	FUNC4(context, ENOMEM, "Storage failed to open fd");
	return ENOMEM;
    }

    ret = FUNC5(context, sa, &a);
    if (ret)
	goto out;

    FUNC10(sp, 1);
    FUNC10(sp, t);
    FUNC8(sp, a);
    FUNC9(sp, d);
    {
	Der_class cl;
	Der_type ty;
	unsigned int tag;
	ret = FUNC2 (reply->data, reply->length,
			   &cl, &ty, &tag, NULL);
	if (ret) {
	    FUNC10(sp, 0xffffffff);
	    FUNC10(sp, 0xffffffff);
	} else {
	    FUNC10(sp, FUNC0(cl, ty, 0));
	    FUNC10(sp, tag);
	}
    }

    FUNC3(context, &a);
out:
    FUNC6(sp);

    return 0;
}