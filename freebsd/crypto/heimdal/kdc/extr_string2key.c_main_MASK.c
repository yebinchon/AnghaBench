#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * data; scalar_t__ length; } ;
struct TYPE_7__ {TYPE_1__ saltvalue; int /*<<< orphan*/  salttype; } ;
typedef  TYPE_2__ krb5_salt ;
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  scalar_t__ krb5_error_code ;
typedef  scalar_t__ krb5_enctype ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ ETYPE_DES_CBC_CRC ; 
 scalar_t__ ETYPE_DES_CBC_MD4 ; 
 scalar_t__ ETYPE_DES_CBC_MD5 ; 
 int /*<<< orphan*/  KRB5_AFS3_SALT ; 
 int /*<<< orphan*/  KRB5_PW_SALT ; 
 scalar_t__ FUNC0 (char*,int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ afs ; 
 int /*<<< orphan*/  args ; 
 int /*<<< orphan*/ * cell ; 
 void* FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ help ; 
 int /*<<< orphan*/  keytype_str ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  num_args ; 
 char* password ; 
 int /*<<< orphan*/ * principal ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  stdin ; 
 size_t FUNC12 (char*,char*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__,char*,TYPE_2__,char*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 scalar_t__ version ; 
 scalar_t__ version4 ; 
 int version5 ; 

int
FUNC16(int argc, char **argv)
{
    krb5_context context;
    krb5_principal princ;
    krb5_salt salt;
    int optidx;
    char buf[1024];
    krb5_enctype etype;
    krb5_error_code ret;

    optidx = FUNC8(&context, argc, argv, args, num_args, NULL);

    if(help)
	FUNC15(0);

    if(version){
	FUNC10 (NULL);
	return 0;
    }

    argc -= optidx;
    argv += optidx;

    if (argc > 1)
	FUNC15(1);

    if(!version5 && !version4 && !afs)
	version5 = 1;

    ret = FUNC9(context, keytype_str, &etype);
    if(ret)
	FUNC3(context, 1, ret, "krb5_string_to_enctype");

    if((etype != ETYPE_DES_CBC_CRC &&
	etype != ETYPE_DES_CBC_MD4 &&
	etype != ETYPE_DES_CBC_MD5) &&
       (afs || version4)) {
	if(!version5) {
	    etype = ETYPE_DES_CBC_CRC;
	} else {
	    FUNC4(context, 1,
		      "DES is the only valid keytype for AFS and Kerberos 4");
	}
    }

    if(version5 && principal == NULL){
	FUNC11("Kerberos v5 principal: ");
	if(FUNC2(buf, sizeof(buf), stdin) == NULL)
	    return 1;
	buf[FUNC12(buf, "\r\n")] = '\0';
	principal = FUNC1(buf);
    }
    if(afs && cell == NULL){
	FUNC11("AFS cell: ");
	if(FUNC2(buf, sizeof(buf), stdin) == NULL)
	    return 1;
	buf[FUNC12(buf, "\r\n")] = '\0';
	cell = FUNC1(buf);
    }
    if(argv[0])
	password = argv[0];
    if(password == NULL){
	if(FUNC0(buf, sizeof(buf), "Password: ", 0))
	    return 1;
	password = buf;
    }

    if(version5){
	FUNC7(context, principal, &princ);
	FUNC6(context, princ, &salt);
	FUNC14(context, etype, password, salt, "Kerberos 5 (%s)");
	FUNC5(context, salt);
    }
    if(version4){
	salt.salttype = KRB5_PW_SALT;
	salt.saltvalue.length = 0;
	salt.saltvalue.data = NULL;
	FUNC14(context, ETYPE_DES_CBC_MD5, password, salt, "Kerberos 4");
    }
    if(afs){
	salt.salttype = KRB5_AFS3_SALT;
	salt.saltvalue.length = FUNC13(cell);
	salt.saltvalue.data = cell;
	FUNC14(context, ETYPE_DES_CBC_MD5, password, salt, "AFS");
    }
    return 0;
}