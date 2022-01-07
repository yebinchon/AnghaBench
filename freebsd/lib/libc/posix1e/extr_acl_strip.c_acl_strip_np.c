
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * acl_t ;




 int EINVAL ;
 int _acl_brand (int * const) ;
 int * _nfs4_acl_strip_np (int * const,int ) ;
 int * _posix1e_acl_strip_np (int * const,int) ;
 int errno ;

acl_t
acl_strip_np(const acl_t aclp, int recalculate_mask)
{
 switch (_acl_brand(aclp)) {
 case 129:
  return (_nfs4_acl_strip_np(aclp, 0));

 case 128:
  return (_posix1e_acl_strip_np(aclp, recalculate_mask));

 default:
  errno = EINVAL;
  return (((void*)0));
 }
}
