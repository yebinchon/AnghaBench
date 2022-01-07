
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wind_profile_flags ;
typedef int uint32_t ;
typedef int name ;
struct TYPE_7__ {int utf8String; } ;
struct TYPE_8__ {int element; TYPE_1__ u; } ;
typedef TYPE_2__ DirectoryString ;


 int COPYCHARARRAY (TYPE_2__ const*,int ,size_t,int *) ;
 int COPYVALARRAY (TYPE_2__ const*,int ,size_t,int *) ;
 int COPYVOIDARRAY (TYPE_2__ const*,int ,size_t,int *) ;
 int ENOMEM ;
 int WIND_ERR_OVERRUN ;
 int WIND_PROFILE_LDAP ;
 int WIND_PROFILE_LDAP_CASE ;
 int WIND_PROFILE_LDAP_CASE_EXACT_ATTRIBUTE ;
 int _hx509_abort (char*,int) ;
 int bmpString ;






 int free (int *) ;
 int ia5String ;
 int * malloc (size_t) ;
 int printableString ;
 int teletexString ;
 int universalString ;
 int wind_stringprep (int *,size_t,int *,size_t*,int ) ;
 int wind_utf8ucs4 (int ,int *,size_t*) ;
 int wind_utf8ucs4_length (int ,size_t*) ;

__attribute__((used)) static int
dsstringprep(const DirectoryString *ds, uint32_t **rname, size_t *rlen)
{
    wind_profile_flags flags;
    size_t i, len;
    int ret;
    uint32_t *name;

    *rname = ((void*)0);
    *rlen = 0;

    switch(ds->element) {
    case 132:
 flags = WIND_PROFILE_LDAP;
 COPYVOIDARRAY(ds, ia5String, len, name);
 break;
    case 131:
 flags = WIND_PROFILE_LDAP;
 flags |= WIND_PROFILE_LDAP_CASE_EXACT_ATTRIBUTE;
 COPYVOIDARRAY(ds, printableString, len, name);
 break;
    case 130:
 flags = WIND_PROFILE_LDAP_CASE;
 COPYCHARARRAY(ds, teletexString, len, name);
 break;
    case 133:
 flags = WIND_PROFILE_LDAP;
 COPYVALARRAY(ds, bmpString, len, name);
 break;
    case 129:
 flags = WIND_PROFILE_LDAP;
 COPYVALARRAY(ds, universalString, len, name);
 break;
    case 128:
 flags = WIND_PROFILE_LDAP;
 ret = wind_utf8ucs4_length(ds->u.utf8String, &len);
 if (ret)
     return ret;
 name = malloc(len * sizeof(name[0]));
 if (name == ((void*)0))
     return ENOMEM;
 ret = wind_utf8ucs4(ds->u.utf8String, name, &len);
 if (ret) {
     free(name);
     return ret;
 }
 break;
    default:
 _hx509_abort("unknown directory type: %d", ds->element);
    }

    *rlen = len;

    for (i = 0; i < 4; i++) {
 *rlen = *rlen * 2;
 *rname = malloc(*rlen * sizeof((*rname)[0]));

 ret = wind_stringprep(name, len, *rname, rlen, flags);
 if (ret == WIND_ERR_OVERRUN) {
     free(*rname);
     *rname = ((void*)0);
     continue;
 } else
     break;
    }
    free(name);
    if (ret) {
 if (*rname)
     free(*rname);
 *rname = ((void*)0);
 *rlen = 0;
 return ret;
    }

    return 0;
}
