#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct client {int /*<<< orphan*/  moniker; } ;
struct TYPE_8__ {char* data; int length; } ;
typedef  TYPE_1__ krb5_data ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ GSMERR_ERROR ; 
 scalar_t__ FUNC0 (struct client*,scalar_t__,int,TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC1 (struct client*,scalar_t__,int,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static int32_t
FUNC6(struct client *c1, int32_t hc1, struct client *c2, int32_t hc2,
	  int conf)
{
    krb5_data msg, wrapped, out;
    int32_t val;

    msg.data = "foo";
    msg.length = 3;

    FUNC3(&wrapped);
    FUNC3(&out);

    val = FUNC1(c1, hc1, conf, &msg, &wrapped);
    if (val) {
	FUNC5("encrypt_token failed to host: %s", c1->moniker);
	return val;
    }
    val = FUNC0(c2, hc2, conf, &wrapped, &out);
    if (val) {
	FUNC2(&wrapped);
	FUNC5("decrypt_token failed to host: %s", c2->moniker);
	return val;
    }

    if (msg.length != out.length) {
	FUNC5("decrypted'ed token have wrong length (%lu != %lu)",
	      (unsigned long)msg.length, (unsigned long)out.length);
	val = GSMERR_ERROR;
    } else if (FUNC4(msg.data, out.data, msg.length) != 0) {
	FUNC5("decryptd'ed token have wrong data");
	val = GSMERR_ERROR;
    }

    FUNC2(&wrapped);
    FUNC2(&out);
    return val;
}