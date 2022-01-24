#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct fkt_data {int /*<<< orphan*/  filename; } ;
struct TYPE_5__ {int /*<<< orphan*/ * sp; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ krb5_kt_cursor ;
typedef  TYPE_2__* krb5_keytab ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int int8_t ;
struct TYPE_6__ {int version; struct fkt_data* data; } ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 scalar_t__ KRB5_KEYTAB_BADVNO ; 
 int /*<<< orphan*/  KRB5_KT_END ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 

__attribute__((used)) static krb5_error_code
FUNC14(krb5_context context,
		      krb5_keytab id,
		      int flags,
		      int exclusive,
		      krb5_kt_cursor *c)
{
    int8_t pvno, tag;
    krb5_error_code ret;
    struct fkt_data *d = id->data;

    c->fd = FUNC10 (d->filename, flags);
    if (c->fd < 0) {
	ret = errno;
	FUNC6(context, ret,
			       FUNC0("keytab %s open failed: %s", ""),
			       d->filename, FUNC13(ret));
	return ret;
    }
    FUNC11(c->fd);
    ret = FUNC1(context, c->fd, exclusive, d->filename);
    if (ret) {
	FUNC3(c->fd);
	return ret;
    }
    c->sp = FUNC8(c->fd);
    if (c->sp == NULL) {
	FUNC2(context, c->fd);
	FUNC3(c->fd);
	FUNC6(context, ENOMEM,
			       FUNC0("malloc: out of memory", ""));
	return ENOMEM;
    }
    FUNC9(c->sp, KRB5_KT_END);
    ret = FUNC5(c->sp, &pvno);
    if(ret) {
	FUNC7(c->sp);
	FUNC2(context, c->fd);
	FUNC3(c->fd);
	FUNC4(context);
	return ret;
    }
    if(pvno != 5) {
	FUNC7(c->sp);
	FUNC2(context, c->fd);
	FUNC3(c->fd);
	FUNC4 (context);
	return KRB5_KEYTAB_BADVNO;
    }
    ret = FUNC5(c->sp, &tag);
    if (ret) {
	FUNC7(c->sp);
	FUNC2(context, c->fd);
	FUNC3(c->fd);
	FUNC4(context);
	return ret;
    }
    id->version = tag;
    FUNC12(context, c->sp, id->version);
    return 0;
}