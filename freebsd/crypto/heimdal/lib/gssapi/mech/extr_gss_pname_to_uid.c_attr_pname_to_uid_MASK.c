#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uid_t ;
struct passwd {int /*<<< orphan*/  pw_uid; } ;
struct _gss_mechanism_name {TYPE_5__* gmn_mech; int /*<<< orphan*/  gmn_name; } ;
typedef  int /*<<< orphan*/  pwbuf ;
struct TYPE_6__ {int length; int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ gss_buffer_desc ;
struct TYPE_7__ {int /*<<< orphan*/  (* gm_get_name_attribute ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,TYPE_1__*,TYPE_1__*,int*) ;} ;
typedef  int /*<<< orphan*/  OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  GSS_C_ATTR_LOCAL_LOGIN_USER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GSS_S_COMPLETE ; 
 int /*<<< orphan*/  GSS_S_FAILURE ; 
 int /*<<< orphan*/  GSS_S_UNAVAILABLE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct passwd* FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,struct passwd*,char*,int,struct passwd**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,TYPE_1__*,TYPE_1__*,int*) ; 

__attribute__((used)) static OM_uint32
FUNC9(OM_uint32 *minor_status,
                  struct _gss_mechanism_name *mn,
                  uid_t *uidp)
{
#ifdef NO_LOCALNAME
    return GSS_S_UNAVAILABLE;
#else
    OM_uint32 major_status = GSS_S_UNAVAILABLE;
    OM_uint32 tmpMinor;
    int more = -1;

    *minor_status = 0;

    if (mn->gmn_mech->gm_get_name_attribute == NULL)
        return GSS_S_UNAVAILABLE;

    while (more != 0) {
        gss_buffer_desc value;
        gss_buffer_desc display_value;
        int authenticated = 0, complete = 0;
#ifdef POSIX_GETPWNAM_R
        char pwbuf[2048];
        struct passwd pw, *pwd;
#else
        struct passwd *pwd;
#endif
        char *localname;

        major_status = mn->gmn_mech->gm_get_name_attribute(minor_status,
                                                           mn->gmn_name,
                                                           GSS_C_ATTR_LOCAL_LOGIN_USER,
                                                           &authenticated,
                                                           &complete,
                                                           &value,
                                                           &display_value,
                                                           &more);
        if (FUNC0(major_status)) {
            FUNC1(mn->gmn_mech, major_status, *minor_status);
            break;
        }

        localname = FUNC6(value.length + 1);
        if (localname == NULL) {
            major_status = GSS_S_FAILURE;
            *minor_status = ENOMEM;
            break;
        }

        FUNC7(localname, value.value, value.length);
        localname[value.length] = '\0';

#ifdef POSIX_GETPWNAM_R
        if (getpwnam_r(localname, &pw, pwbuf, sizeof(pwbuf), &pwd) != 0)
            pwd = NULL;
#else
        pwd = FUNC3(localname);
#endif

        FUNC2(localname);
        FUNC5(&tmpMinor, &value);
        FUNC5(&tmpMinor, &display_value);

        if (pwd != NULL) {
            *uidp = pwd->pw_uid;
            major_status = GSS_S_COMPLETE;
            *minor_status = 0;
            break;
        } else
            major_status = GSS_S_UNAVAILABLE;
    }

    return major_status;
#endif /* NO_LOCALNAME */
}