
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_handle {scalar_t__ status; int maparrsz; int * rdap; int * mappings; } ;
typedef int rd_agent_t ;


 scalar_t__ PS_IDLE ;
 scalar_t__ PS_UNDEAD ;
 scalar_t__ RD_OK ;
 int * calloc (int,int) ;
 int map_iter ;
 scalar_t__ rd_loadobj_iter (int *,int ,struct proc_handle*) ;
 int * rd_new (struct proc_handle*) ;

rd_agent_t *
proc_rdagent(struct proc_handle *phdl)
{

 if (phdl->rdap == ((void*)0) && phdl->status != PS_UNDEAD &&
     phdl->status != PS_IDLE) {
  if ((phdl->rdap = rd_new(phdl)) == ((void*)0))
   return (((void*)0));

  phdl->maparrsz = 64;
  phdl->mappings = calloc(phdl->maparrsz,
      sizeof(*phdl->mappings));
  if (phdl->mappings == ((void*)0))
   return (phdl->rdap);
  if (rd_loadobj_iter(phdl->rdap, map_iter, phdl) != RD_OK)
   return (((void*)0));
 }
 return (phdl->rdap);
}
