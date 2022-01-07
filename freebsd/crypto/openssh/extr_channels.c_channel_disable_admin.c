
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {int dummy; } ;


 int FORWARD_ADM ;
 int channel_clear_permission (struct ssh*,int ,int) ;
 int permission_set_add (struct ssh*,int ,int,int *,int ,int *,int *,int ,int *) ;

void
channel_disable_admin(struct ssh *ssh, int where)
{
 channel_clear_permission(ssh, FORWARD_ADM, where);
 permission_set_add(ssh, FORWARD_ADM, where,
     ((void*)0), 0, ((void*)0), ((void*)0), 0, ((void*)0));
}
