
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rdi_level; } ;
typedef int CORE_ADDR ;


 int RDP_SET_BREAK ;
 int RDP_SET_BREAK_TYPE_GET_HANDLE ;
 int RDP_SET_BREAK_TYPE_PC_EQUAL ;
 TYPE_1__ ds ;
 int send_rdp (char*,int ,int ,int,...) ;

__attribute__((used)) static int
remote_rdp_insert_breakpoint (CORE_ADDR addr, char *save)
{
  int res;
  if (ds.rdi_level > 0)
    {
      send_rdp ("bwb-SWB",
  RDP_SET_BREAK,
  addr,
  RDP_SET_BREAK_TYPE_PC_EQUAL | RDP_SET_BREAK_TYPE_GET_HANDLE,
  save,
  &res);
    }
  else
    {
      send_rdp ("bwb-SB",
  RDP_SET_BREAK,
  addr,
  RDP_SET_BREAK_TYPE_PC_EQUAL,
  &res);
    }
  return res;
}
