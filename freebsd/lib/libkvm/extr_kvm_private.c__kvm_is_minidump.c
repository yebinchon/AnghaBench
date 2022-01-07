
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pmfd; scalar_t__ rawdump; } ;
typedef TYPE_1__ kvm_t ;


 scalar_t__ memcmp (char**,char*,int) ;
 int pread (int ,char**,int,int ) ;

int
_kvm_is_minidump(kvm_t *kd)
{
 char minihdr[8];

 if (kd->rawdump)
  return (0);
 if (pread(kd->pmfd, &minihdr, 8, 0) == 8 &&
     memcmp(&minihdr, "minidump", 8) == 0)
  return (1);
 return (0);
}
