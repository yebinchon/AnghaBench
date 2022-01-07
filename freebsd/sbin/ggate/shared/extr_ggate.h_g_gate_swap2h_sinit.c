
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_gate_sinit {int gs_error; int gs_sectorsize; int gs_mediasize; } ;


 int be16toh (int ) ;
 int be32toh (int ) ;
 int be64toh (int ) ;

__attribute__((used)) static __inline void
g_gate_swap2h_sinit(struct g_gate_sinit *sinit)
{


 sinit->gs_mediasize = be64toh(sinit->gs_mediasize);
 sinit->gs_sectorsize = be32toh(sinit->gs_sectorsize);
 sinit->gs_error = be16toh(sinit->gs_error);
}
