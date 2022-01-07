
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RDP_EXEC ;
 int RDP_EXEC_TYPE_SYNC ;
 int send_rdp (char*,int ,int ) ;

__attribute__((used)) static void
rdp_execute_start (void)
{

  send_rdp ("bb-", RDP_EXEC, RDP_EXEC_TYPE_SYNC);
}
