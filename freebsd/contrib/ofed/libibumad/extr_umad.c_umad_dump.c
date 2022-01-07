
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_user_mad {int addr; int timeout_ms; int status; int agent_id; } ;


 int IBWARN (char*,int ,int ,int ) ;
 int umad_addr_dump (int *) ;

void umad_dump(void *umad)
{
 struct ib_user_mad *mad = umad;

 IBWARN("agent id %d status %x timeout %d",
        mad->agent_id, mad->status, mad->timeout_ms);
 umad_addr_dump(&mad->addr);
}
