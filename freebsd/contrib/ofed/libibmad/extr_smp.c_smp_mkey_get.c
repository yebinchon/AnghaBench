
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ibmad_port {int smp_mkey; } ;



uint64_t smp_mkey_get(const struct ibmad_port *srcport)
{
 return srcport->smp_mkey;
}
