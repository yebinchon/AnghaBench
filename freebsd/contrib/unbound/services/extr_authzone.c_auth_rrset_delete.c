
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_rrset {struct auth_rrset* data; } ;


 int free (struct auth_rrset*) ;

__attribute__((used)) static void
auth_rrset_delete(struct auth_rrset* rrset)
{
 if(!rrset) return;
 free(rrset->data);
 free(rrset);
}
