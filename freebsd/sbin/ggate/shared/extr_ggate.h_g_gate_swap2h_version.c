
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_gate_version {void* gv_error; void* gv_version; } ;


 void* be16toh (void*) ;

__attribute__((used)) static __inline void
g_gate_swap2h_version(struct g_gate_version *ver)
{

 ver->gv_version = be16toh(ver->gv_version);
 ver->gv_error = be16toh(ver->gv_error);
}
