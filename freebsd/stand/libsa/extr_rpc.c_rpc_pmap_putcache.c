
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_int ;
struct in_addr {int dummy; } ;
struct pmap_list {int port; void* vers; void* prog; struct in_addr addr; } ;


 size_t PMAP_NUM ;
 int printf (char*) ;
 struct pmap_list* rpc_pmap_list ;
 size_t rpc_pmap_num ;

void
rpc_pmap_putcache(struct in_addr addr, u_int prog, u_int vers, int port)
{
 struct pmap_list *pl;


 if (rpc_pmap_num >= PMAP_NUM) {

  rpc_pmap_num = PMAP_NUM - 1;



 }

 pl = &rpc_pmap_list[rpc_pmap_num];
 rpc_pmap_num++;


 pl->addr = addr;
 pl->prog = prog;
 pl->vers = vers;
 pl->port = port;
}
