#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mechbuf ;
typedef  int /*<<< orphan*/  hostname ;
typedef  int /*<<< orphan*/  gss_name_t ;
struct TYPE_17__ {char* value; int /*<<< orphan*/  length; } ;
typedef  TYPE_1__ gss_buffer_desc ;
typedef  TYPE_2__* gss_OID_set ;
struct TYPE_19__ {size_t length; char* elements; } ;
typedef  TYPE_3__ gss_OID_desc ;
typedef  TYPE_3__* gss_OID ;
struct TYPE_18__ {size_t count; TYPE_3__* elements; } ;
typedef  scalar_t__ OM_uint32 ;
typedef  int /*<<< orphan*/  MechType ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  GSS_C_NO_NAME ; 
 int /*<<< orphan*/  GSS_C_NT_HOSTBASED_SERVICE ; 
 TYPE_3__* GSS_SPNEGO_MECHANISM ; 
 scalar_t__ GSS_S_BAD_MECH ; 
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ GSS_S_DEFECTIVE_TOKEN ; 
 scalar_t__ GSS_S_FAILURE ; 
 int MAXHOSTNAMELEN ; 
 TYPE_3__ _gss_spnego_krb5_mechanism_oid_desc ; 
 TYPE_3__ _gss_spnego_mskrb_mechanism_oid_desc ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC1 (char**,char*,char*) ; 
 scalar_t__ FUNC2 (unsigned char*,int,int /*<<< orphan*/ *,size_t*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,int) ; 
 scalar_t__ FUNC6 (scalar_t__*,TYPE_3__*,TYPE_3__**) ; 
 scalar_t__ FUNC7 (scalar_t__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (scalar_t__*,TYPE_2__**) ; 
 scalar_t__ FUNC9 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,TYPE_2__**) ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static OM_uint32
FUNC14(OM_uint32 *minor_status, MechType *mechType, int verify_p,
	    gss_OID *mech_p)
{
    char mechbuf[64];
    size_t mech_len;
    gss_OID_desc oid;
    gss_OID oidp;
    gss_OID_set mechs;
    size_t i;
    OM_uint32 ret, junk;

    ret = FUNC2 ((unsigned char *)mechbuf + sizeof(mechbuf) - 1,
		       sizeof(mechbuf),
		       mechType,
		       &mech_len);
    if (ret) {
	return GSS_S_DEFECTIVE_TOKEN;
    }

    oid.length   = mech_len;
    oid.elements = mechbuf + sizeof(mechbuf) - mech_len;

    if (FUNC9(&oid, GSS_SPNEGO_MECHANISM)) {
	return GSS_S_BAD_MECH;
    }

    *minor_status = 0;

    /* Translate broken MS Kebreros OID */
    if (FUNC9(&oid, &_gss_spnego_mskrb_mechanism_oid_desc))
	    oidp = &_gss_spnego_krb5_mechanism_oid_desc;
    else
	    oidp = &oid;


    ret = FUNC8(&junk, &mechs);
    if (ret)
	    return (ret);

    for (i = 0; i < mechs->count; i++)
	    if (FUNC9(&mechs->elements[i], oidp))
		    break;

    if (i == mechs->count) {
	    FUNC11(&junk, &mechs);
	    return GSS_S_BAD_MECH;
    }
    FUNC11(&junk, &mechs);

    ret = FUNC6(minor_status,
			    &oid, /* possibly this should be oidp */
			    mech_p);

    if (verify_p) {
	gss_name_t name = GSS_C_NO_NAME;
	gss_buffer_desc namebuf;
	char *str = NULL, *host, hostname[MAXHOSTNAMELEN];

	host = FUNC4("GSSAPI_SPNEGO_NAME");
	if (host == NULL || FUNC12()) {
	    int rv;
	    if (FUNC5(hostname, sizeof(hostname)) != 0) {
		*minor_status = errno;
		return GSS_S_FAILURE;
	    }
	    rv = FUNC1(&str, "host@%s", hostname);
	    if (rv < 0 || str == NULL) {
		*minor_status = ENOMEM;
		return GSS_S_FAILURE;
	    }
	    host = str;
	}

	namebuf.length = FUNC13(host);
	namebuf.value = host;

	ret = FUNC7(minor_status, &namebuf,
			      GSS_C_NT_HOSTBASED_SERVICE, &name);
	if (str)
	    FUNC3(str);
	if (ret != GSS_S_COMPLETE)
	    return ret;

	ret = FUNC0(name, *mech_p);
	FUNC10(&junk, &name);
    }

    return ret;
}