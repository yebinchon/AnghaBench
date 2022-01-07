
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i802_bss {int dummy; } ;


 int android_priv_cmd (struct i802_bss*,char*) ;

int android_pno_stop(struct i802_bss *bss)
{
 return android_priv_cmd(bss, "PNOFORCE 0");
}
