
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct ssh {int dummy; } ;
struct permission {int dummy; } ;


 int permission_set_get_array (struct ssh*,int,int,struct permission***,scalar_t__**) ;
 struct permission* xrecallocarray (struct permission*,scalar_t__,int ,int) ;

void
channel_clear_permission(struct ssh *ssh, int who, int where)
{
 struct permission **permp;
 u_int *npermp;

 permission_set_get_array(ssh, who, where, &permp, &npermp);
 *permp = xrecallocarray(*permp, *npermp, 0, sizeof(**permp));
 *npermp = 0;
}
