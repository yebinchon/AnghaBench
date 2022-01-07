
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uchar_t ;


 int PCPU_GET (int ) ;
 int cpuid ;
 int fm_ena_generate_cpu (int ,int ,int ) ;

uint64_t
fm_ena_generate(uint64_t timestamp, uchar_t format)
{
 return (fm_ena_generate_cpu(timestamp, PCPU_GET(cpuid), format));
}
