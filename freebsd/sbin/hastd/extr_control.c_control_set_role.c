
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct hast_resource {int dummy; } ;


 int control_set_role_common (int *,int *,int ,struct hast_resource*,int *,int ) ;

void
control_set_role(struct hast_resource *res, uint8_t role)
{

 control_set_role_common(((void*)0), ((void*)0), role, res, ((void*)0), 0);
}
