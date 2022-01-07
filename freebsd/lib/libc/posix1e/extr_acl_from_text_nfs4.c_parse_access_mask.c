
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acl_perm_t ;
typedef int acl_entry_t ;


 int _nfs4_parse_access_mask (char*,int *) ;
 int acl_set_permset (int ,int *) ;

__attribute__((used)) static int
parse_access_mask(char *str, acl_entry_t entry)
{
 int error;
 acl_perm_t perm;

 error = _nfs4_parse_access_mask(str, &perm);
 if (error)
  return (error);

 error = acl_set_permset(entry, &perm);

 return (error);
}
