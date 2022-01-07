
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acl_perm_t ;


 int ACL_EXECUTE ;
 int ACL_PERM_NONE ;
 int ACL_READ ;




 int ACL_WRITE ;
 int EINVAL ;

int
_posix1e_acl_string_to_perm(char *string, acl_perm_t *perm)
{
 acl_perm_t myperm = ACL_PERM_NONE;
 char *ch;

 ch = string;
 while (*ch) {
  switch(*ch) {
  case 129:
   myperm |= ACL_READ;
   break;
  case 128:
   myperm |= ACL_WRITE;
   break;
  case 131:
   myperm |= ACL_EXECUTE;
   break;
  case 130:
   break;
  default:
   return (EINVAL);
  }
  ch++;
 }

 *perm = myperm;
 return (0);
}
