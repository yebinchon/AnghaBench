
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_gate_version {void* gv_error; void* gv_version; } ;


 void* htobe16 (void*) ;

__attribute__((used)) static __inline void
g_gate_swap2n_version(struct g_gate_version *ver)
{

 ver->gv_version = htobe16(ver->gv_version);
 ver->gv_error = htobe16(ver->gv_error);
}
