
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct thread_map {int thr_state; scalar_t__ thr_lwpp; } ;
struct thread_info {TYPE_1__* private; int ptid; } ;
struct TYPE_5__ {int lwp_id; } ;
typedef TYPE_2__ __lwp_desc_t ;
struct TYPE_4__ {int mapp; int stable; } ;
typedef int CORE_ADDR ;


 int ISTID (int ) ;






 int read_lwp (int ,TYPE_2__*) ;
 int read_map (int ,struct thread_map*) ;
 int sprintf (char*,char*,char*,int) ;

__attribute__((used)) static char *
uw_extra_thread_info (struct thread_info *info)
{
  static char buf[80];
  struct thread_map map;
  __lwp_desc_t lwp;
  int lwpid;
  char *name;

  if (!ISTID (info->ptid))
    return ((void*)0);

  if (!info->private->stable)
    return "switching";

  if (!read_map (info->private->mapp, &map))
    return ((void*)0);

  if (!map.thr_lwpp || !read_lwp ((CORE_ADDR)map.thr_lwpp, &lwp))
    lwpid = 0;
  else
    lwpid = lwp.lwp_id;

  switch (map.thr_state) {
  case 132: name = "running"; break;
  case 130: name = "sleeping"; break;
  case 131: name = "runnable"; break;
  case 128: name = "zombie"; break;
  case 129: name = "suspended"; break;

  case 133: name = "forking"; break;

  default: name = "confused"; break;
  }

  if (!lwpid)
    return name;

  sprintf (buf, "%s, LWP %d", name, lwpid);
  return buf;
}
