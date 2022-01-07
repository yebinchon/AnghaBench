
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ibmad_port {int smp_mkey; } ;



void smp_mkey_set(struct ibmad_port *srcport, uint64_t mkey)
{
 srcport->smp_mkey = mkey;
}
