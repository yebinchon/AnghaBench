
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* gss_OID_set ;
struct TYPE_7__ {size_t count; int * elements; } ;
typedef scalar_t__ OM_uint32 ;


 int GSS_SPNEGO_MECHANISM ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ gss_add_oid_set_member (scalar_t__*,int *,TYPE_1__**) ;
 scalar_t__ gss_create_empty_oid_set (scalar_t__*,TYPE_1__**) ;
 scalar_t__ gss_indicate_mechs (scalar_t__*,TYPE_1__**) ;
 scalar_t__ gss_oid_equal (int *,int ) ;
 int gss_release_oid_set (scalar_t__*,TYPE_1__**) ;

__attribute__((used)) static OM_uint32
spnego_supported_mechs(OM_uint32 *minor_status, gss_OID_set *mechs)
{
    OM_uint32 ret, junk;
    gss_OID_set m;
    size_t i;

    ret = gss_indicate_mechs(minor_status, &m);
    if (ret != GSS_S_COMPLETE)
 return ret;

    ret = gss_create_empty_oid_set(minor_status, mechs);
    if (ret != GSS_S_COMPLETE) {
 gss_release_oid_set(&junk, &m);
 return ret;
    }

    for (i = 0; i < m->count; i++) {
 if (gss_oid_equal(&m->elements[i], GSS_SPNEGO_MECHANISM))
     continue;

 ret = gss_add_oid_set_member(minor_status, &m->elements[i], mechs);
 if (ret) {
     gss_release_oid_set(&junk, &m);
     gss_release_oid_set(&junk, mechs);
     return ret;
 }
    }
    gss_release_oid_set(&junk, &m);
    return ret;
}
