
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ acl_t ;
typedef scalar_t__ acl_entry_t ;


 long _ACL_T_ALIGNMENT_BITS ;

__attribute__((used)) static acl_t
entry2acl(acl_entry_t entry)
{
 acl_t aclp;

 aclp = (acl_t)(((long)entry >> _ACL_T_ALIGNMENT_BITS) << _ACL_T_ALIGNMENT_BITS);

 return (aclp);
}
