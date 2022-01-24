#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct descr {unsigned long addr_string; int /*<<< orphan*/  sock_len; int /*<<< orphan*/  sa; int /*<<< orphan*/  s; } ;
typedef  int /*<<< orphan*/  l ;
typedef  int /*<<< orphan*/  krb5_kdc_configuration ;
struct TYPE_3__ {int length; unsigned char* data; } ;
typedef  TYPE_1__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  scalar_t__ krb5_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,unsigned long,unsigned long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rk_SOCK_ERRNO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(krb5_context context,
	   krb5_kdc_configuration *config,
	   krb5_boolean prependlength,
	   struct descr *d,
	   krb5_data *reply)
{
    FUNC0(context, config, 5,
	    "sending %lu bytes to %s", (unsigned long)reply->length,
	    d->addr_string);
    if(prependlength){
	unsigned char l[4];
	l[0] = (reply->length >> 24) & 0xff;
	l[1] = (reply->length >> 16) & 0xff;
	l[2] = (reply->length >> 8) & 0xff;
	l[3] = reply->length & 0xff;
	if(FUNC1(FUNC2(d->s, l, sizeof(l), 0, d->sa, d->sock_len))) {
	    FUNC0 (context, config,
		     0, "sendto(%s): %s", d->addr_string,
		     FUNC3(rk_SOCK_ERRNO));
	    return;
	}
    }
    if(FUNC1(FUNC2(d->s, reply->data, reply->length, 0, d->sa, d->sock_len))) {
	FUNC0 (context, config, 0, "sendto(%s): %s", d->addr_string,
		 FUNC3(rk_SOCK_ERRNO));
	return;
    }
}