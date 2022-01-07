
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_gate_sinit {int gs_error; int gs_sectorsize; int gs_mediasize; } ;


 int htobe16 (int ) ;
 int htobe32 (int ) ;
 int htobe64 (int ) ;

__attribute__((used)) static __inline void
g_gate_swap2n_sinit(struct g_gate_sinit *sinit)
{


 sinit->gs_mediasize = htobe64(sinit->gs_mediasize);
 sinit->gs_sectorsize = htobe32(sinit->gs_sectorsize);
 sinit->gs_error = htobe16(sinit->gs_error);
}
