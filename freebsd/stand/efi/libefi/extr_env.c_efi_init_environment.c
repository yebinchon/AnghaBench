
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int var ;
struct TYPE_3__ {int Revision; } ;
struct TYPE_4__ {TYPE_1__ Hdr; } ;


 int EV_VOLATILE ;
 TYPE_2__* ST ;
 int env_noset ;
 int env_nounset ;
 int env_setenv (char*,int ,char*,int ,int ) ;
 int snprintf (char*,int,char*,int,int) ;

void
efi_init_environment(void)
{
 char var[128];

 snprintf(var, sizeof(var), "%d.%02d", ST->Hdr.Revision >> 16,
     ST->Hdr.Revision & 0xffff);
 env_setenv("efi-version", EV_VOLATILE, var, env_noset, env_nounset);
}
