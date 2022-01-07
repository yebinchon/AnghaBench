
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rdi_level; } ;
typedef int CORE_ADDR ;


 int RDP_CLEAR_BREAK ;
 TYPE_1__ ds ;
 int send_rdp (char*,int ,char*,...) ;

__attribute__((used)) static int
remote_rdp_remove_breakpoint (CORE_ADDR addr, char *save)
{
  int res;
  if (ds.rdi_level > 0)
    {
      send_rdp ("b-p-S-B",
  RDP_CLEAR_BREAK,
  save, 4,
  &res);
    }
  else
    {
      send_rdp ("bw-S-B",
  RDP_CLEAR_BREAK,
  addr,
  &res);
    }
  return res;
}
