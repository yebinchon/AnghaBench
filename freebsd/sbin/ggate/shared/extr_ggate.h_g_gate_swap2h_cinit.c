
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_gate_cinit {int gc_token; int gc_nconn; int gc_flags; } ;


 int be16toh (int ) ;
 int be32toh (int ) ;
 int be64toh (int ) ;

__attribute__((used)) static __inline void
g_gate_swap2h_cinit(struct g_gate_cinit *cinit)
{

 cinit->gc_flags = be64toh(cinit->gc_flags);
 cinit->gc_nconn = be16toh(cinit->gc_nconn);
 cinit->gc_token = be32toh(cinit->gc_token);
}
