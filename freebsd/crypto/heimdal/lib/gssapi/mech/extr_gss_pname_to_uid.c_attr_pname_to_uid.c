
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uid_t ;
struct passwd {int pw_uid; } ;
struct _gss_mechanism_name {TYPE_5__* gmn_mech; int gmn_name; } ;
typedef int pwbuf ;
struct TYPE_6__ {int length; int value; } ;
typedef TYPE_1__ gss_buffer_desc ;
struct TYPE_7__ {int (* gm_get_name_attribute ) (int *,int ,int ,int*,int*,TYPE_1__*,TYPE_1__*,int*) ;} ;
typedef int OM_uint32 ;


 int ENOMEM ;
 int GSS_C_ATTR_LOCAL_LOGIN_USER ;
 scalar_t__ GSS_ERROR (int ) ;
 int GSS_S_COMPLETE ;
 int GSS_S_FAILURE ;
 int GSS_S_UNAVAILABLE ;
 int _gss_mg_error (TYPE_5__*,int ,int ) ;
 int free (char*) ;
 struct passwd* getpwnam (char*) ;
 scalar_t__ getpwnam_r (char*,struct passwd*,char*,int,struct passwd**) ;
 int gss_release_buffer (int *,TYPE_1__*) ;
 char* malloc (int) ;
 int memcpy (char*,int ,int) ;
 int stub1 (int *,int ,int ,int*,int*,TYPE_1__*,TYPE_1__*,int*) ;

__attribute__((used)) static OM_uint32
attr_pname_to_uid(OM_uint32 *minor_status,
                  struct _gss_mechanism_name *mn,
                  uid_t *uidp)
{



    OM_uint32 major_status = GSS_S_UNAVAILABLE;
    OM_uint32 tmpMinor;
    int more = -1;

    *minor_status = 0;

    if (mn->gmn_mech->gm_get_name_attribute == ((void*)0))
        return GSS_S_UNAVAILABLE;

    while (more != 0) {
        gss_buffer_desc value;
        gss_buffer_desc display_value;
        int authenticated = 0, complete = 0;




        struct passwd *pwd;

        char *localname;

        major_status = mn->gmn_mech->gm_get_name_attribute(minor_status,
                                                           mn->gmn_name,
                                                           GSS_C_ATTR_LOCAL_LOGIN_USER,
                                                           &authenticated,
                                                           &complete,
                                                           &value,
                                                           &display_value,
                                                           &more);
        if (GSS_ERROR(major_status)) {
            _gss_mg_error(mn->gmn_mech, major_status, *minor_status);
            break;
        }

        localname = malloc(value.length + 1);
        if (localname == ((void*)0)) {
            major_status = GSS_S_FAILURE;
            *minor_status = ENOMEM;
            break;
        }

        memcpy(localname, value.value, value.length);
        localname[value.length] = '\0';





        pwd = getpwnam(localname);


        free(localname);
        gss_release_buffer(&tmpMinor, &value);
        gss_release_buffer(&tmpMinor, &display_value);

        if (pwd != ((void*)0)) {
            *uidp = pwd->pw_uid;
            major_status = GSS_S_COMPLETE;
            *minor_status = 0;
            break;
        } else
            major_status = GSS_S_UNAVAILABLE;
    }

    return major_status;

}
