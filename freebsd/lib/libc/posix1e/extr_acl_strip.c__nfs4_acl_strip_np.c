
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int mode_t ;
typedef TYPE_1__* acl_t ;
struct TYPE_6__ {int ats_acl; } ;


 int ACL_BRAND_NFS4 ;
 int ACL_MAX_ENTRIES ;
 int ENOMEM ;
 int _acl_brand_as (TYPE_1__*,int ) ;
 TYPE_1__* acl_init (int ) ;
 int acl_nfs4_sync_mode_from_acl (int *,int *) ;
 int acl_nfs4_trivial_from_mode_libc (int *,int ,int) ;
 int errno ;

__attribute__((used)) static acl_t
_nfs4_acl_strip_np(const acl_t aclp, int canonical_six)
{
 acl_t newacl;
 mode_t mode = 0;

 newacl = acl_init(ACL_MAX_ENTRIES);
 if (newacl == ((void*)0)) {
  errno = ENOMEM;
  return (((void*)0));
 }

 _acl_brand_as(newacl, ACL_BRAND_NFS4);

 acl_nfs4_sync_mode_from_acl(&mode, &(aclp->ats_acl));
 acl_nfs4_trivial_from_mode_libc(&(newacl->ats_acl), mode, canonical_six);

 return (newacl);
}
