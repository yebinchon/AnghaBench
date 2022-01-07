
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* errbuf; } ;
typedef TYPE_1__ kvm_t ;


 char* _kd_is_null ;

char *
kvm_geterr(kvm_t *kd)
{

 if (kd == ((void*)0))
  return (_kd_is_null);
 return (kd->errbuf);
}
