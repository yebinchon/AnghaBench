
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_gate_cinit {int gc_token; int gc_nconn; int gc_flags; } ;


 int htobe16 (int ) ;
 int htobe32 (int ) ;
 int htobe64 (int ) ;

__attribute__((used)) static __inline void
g_gate_swap2n_cinit(struct g_gate_cinit *cinit)
{

 cinit->gc_flags = htobe64(cinit->gc_flags);
 cinit->gc_nconn = htobe16(cinit->gc_nconn);
 cinit->gc_token = htobe32(cinit->gc_token);
}
