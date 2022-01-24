#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
typedef  scalar_t__ krb5_timestamp ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_19__ {size_t len; int /*<<< orphan*/ * val; } ;
struct TYPE_13__ {scalar_t__ renewable; } ;
struct TYPE_18__ {TYPE_12__ b; } ;
struct TYPE_17__ {scalar_t__ authtime; scalar_t__ starttime; scalar_t__ endtime; scalar_t__ renew_till; } ;
struct TYPE_16__ {scalar_t__ length; int /*<<< orphan*/  data; } ;
struct TYPE_15__ {scalar_t__ keytype; } ;
struct TYPE_20__ {TYPE_6__ addresses; TYPE_5__ flags; TYPE_4__ times; TYPE_3__ ticket; TYPE_2__ session; int /*<<< orphan*/  client; int /*<<< orphan*/  server; } ;
typedef  TYPE_7__ krb5_creds ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  flags ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_14__ {int etype; int* kvno; } ;
struct TYPE_21__ {TYPE_1__ enc_part; } ;
typedef  TYPE_8__ Ticket ;

/* Variables and functions */
 char* FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_12__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,TYPE_8__*,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int,char**) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 char* FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC15(krb5_context context, krb5_creds *cred)
{
    size_t j;
    char *str;
    krb5_error_code ret;
    krb5_timestamp sec;

    FUNC9 (context, &sec);

    ret = FUNC10(context, cred->server, &str);
    if(ret)
	FUNC4(1);
    FUNC13(FUNC0("Server: %s\n", ""), str);
    FUNC5 (str);

    ret = FUNC10(context, cred->client, &str);
    if(ret)
	FUNC4(1);
    FUNC13(FUNC0("Client: %s\n", ""), str);
    FUNC5 (str);

    {
	Ticket t;
	size_t len;
	char *s;

	FUNC3(cred->ticket.data, cred->ticket.length, &t, &len);
	ret = FUNC7(context, t.enc_part.etype, &s);
	FUNC13(FUNC0("Ticket etype: ", ""));
	if (ret == 0) {
	    FUNC13("%s", s);
	    FUNC5(s);
	} else {
	    FUNC13(FUNC0("unknown-enctype(%d)", ""), t.enc_part.etype);
	}
	if(t.enc_part.kvno)
	    FUNC13(FUNC0(", kvno %d", ""), *t.enc_part.kvno);
	FUNC13("\n");
	if(cred->session.keytype != t.enc_part.etype) {
	    ret = FUNC7(context, cred->session.keytype, &str);
	    if(ret)
		FUNC11(context, ret, "session keytype");
	    else {
		FUNC13(FUNC0("Session key: %s\n", "enctype"), str);
		FUNC5(str);
	    }
	}
	FUNC6(&t);
	FUNC13(FUNC0("Ticket length: %lu\n", ""),
	       (unsigned long)cred->ticket.length);
    }
    FUNC13(FUNC0("Auth time:  %s\n", ""),
	   FUNC12(cred->times.authtime));
    if(cred->times.authtime != cred->times.starttime)
	FUNC13(FUNC0("Start time: %s\n", ""),
	       FUNC12(cred->times.starttime));
    FUNC13(FUNC0("End time:   %s", ""),
	   FUNC12(cred->times.endtime));
    if(sec > cred->times.endtime)
	FUNC13(FUNC0(" (expired)", ""));
    FUNC13("\n");
    if(cred->flags.b.renewable)
	FUNC13(FUNC0("Renew till: %s\n", ""),
	       FUNC12(cred->times.renew_till));
    {
	char flags[1024];
	FUNC14(FUNC1(cred->flags.b),
		      FUNC2(),
		      flags, sizeof(flags));
	FUNC13(FUNC0("Ticket flags: %s\n", ""), flags);
    }
    FUNC13(FUNC0("Addresses: ", ""));
    if (cred->addresses.len != 0) {
	for(j = 0; j < cred->addresses.len; j++){
	    char buf[128];
	    size_t len;
	    if(j) FUNC13(", ");
	    ret = FUNC8(&cred->addresses.val[j],
				     buf, sizeof(buf), &len);

	    if(ret == 0)
		FUNC13("%s", buf);
	}
    } else {
	FUNC13(FUNC0("addressless", ""));
    }
    FUNC13("\n\n");
}