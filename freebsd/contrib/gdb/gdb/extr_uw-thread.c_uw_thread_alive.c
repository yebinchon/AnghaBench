
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ptid_t ;
struct TYPE_2__ {int (* to_thread_alive ) (int ) ;} ;


 int ISTID (int ) ;
 TYPE_1__ base_ops ;
 int in_thread_list (int ) ;
 int stub1 (int ) ;

__attribute__((used)) static int
uw_thread_alive (ptid_t ptid)
{
  if (!ISTID (ptid))
    return base_ops.to_thread_alive (ptid);



  return in_thread_list (ptid);
}
