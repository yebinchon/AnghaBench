
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SLC_EXPORT ;
 scalar_t__ SLC_IMPORT ;
 int printf (char*,char*) ;
 scalar_t__ slc_mode ;

void
slcstate(void)
{
    printf("Special characters are %s values\n",
  slc_mode == SLC_IMPORT ? "remote default" :
  slc_mode == SLC_EXPORT ? "local" :
      "remote");
}
