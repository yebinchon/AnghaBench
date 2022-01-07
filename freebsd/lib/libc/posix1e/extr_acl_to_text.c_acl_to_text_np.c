
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int * acl_t ;




 int EINVAL ;
 int _acl_brand (int *) ;
 char* _nfs4_acl_to_text_np (int *,int *,int) ;
 char* _posix1e_acl_to_text (int *,int *,int) ;
 int errno ;

char *
acl_to_text_np(acl_t acl, ssize_t *len_p, int flags)
{

 if (acl == ((void*)0)) {
  errno = EINVAL;
  return(((void*)0));
 }

 switch (_acl_brand(acl)) {
 case 128:
  return (_posix1e_acl_to_text(acl, len_p, flags));
 case 129:
  return (_nfs4_acl_to_text_np(acl, len_p, flags));
 default:
  errno = EINVAL;
  return (((void*)0));
 }
}
