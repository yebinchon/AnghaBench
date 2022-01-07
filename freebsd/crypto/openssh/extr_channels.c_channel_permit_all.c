
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {int dummy; } ;
struct permission_set {scalar_t__ num_permitted_user; int all_permitted; } ;


 struct permission_set* permission_set_get (struct ssh*,int) ;

void
channel_permit_all(struct ssh *ssh, int where)
{
 struct permission_set *pset = permission_set_get(ssh, where);

 if (pset->num_permitted_user == 0)
  pset->all_permitted = 1;
}
