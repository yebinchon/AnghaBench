
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct acl_t_struct {int dummy; } ;
typedef TYPE_2__* acl_t ;
struct TYPE_5__ {int acl_maxcnt; } ;
struct TYPE_6__ {TYPE_1__ ats_acl; int ats_brand; } ;


 int ACL_BRAND_UNKNOWN ;
 int ACL_MAX_ENTRIES ;
 int EINVAL ;
 int ENOMEM ;
 int _ACL_T_ALIGNMENT_BITS ;
 int bzero (TYPE_2__*,int) ;
 int errno ;
 int posix_memalign (void*,int,int) ;

acl_t
acl_init(int count)
{
 int error;
 acl_t acl;

 if (count > ACL_MAX_ENTRIES) {
  errno = ENOMEM;
  return (((void*)0));
 }
 if (count < 0) {
  errno = EINVAL;
  return (((void*)0));
 }

 error = posix_memalign((void *)&acl, 1 << _ACL_T_ALIGNMENT_BITS,
     sizeof(struct acl_t_struct));
 if (error) {
  errno = error;
  return (((void*)0));
 }

 bzero(acl, sizeof(struct acl_t_struct));
 acl->ats_brand = ACL_BRAND_UNKNOWN;
 acl->ats_acl.acl_maxcnt = ACL_MAX_ENTRIES;

 return (acl);
}
