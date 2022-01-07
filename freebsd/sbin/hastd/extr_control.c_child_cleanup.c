
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hast_resource {scalar_t__ hr_workerpid; int * hr_conn; int * hr_event; int * hr_ctrl; } ;


 int proto_close (int *) ;

void
child_cleanup(struct hast_resource *res)
{

 proto_close(res->hr_ctrl);
 res->hr_ctrl = ((void*)0);
 if (res->hr_event != ((void*)0)) {
  proto_close(res->hr_event);
  res->hr_event = ((void*)0);
 }
 if (res->hr_conn != ((void*)0)) {
  proto_close(res->hr_conn);
  res->hr_conn = ((void*)0);
 }
 res->hr_workerpid = 0;
}
