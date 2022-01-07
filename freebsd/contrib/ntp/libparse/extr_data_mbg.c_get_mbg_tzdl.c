
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* name; int tm_off; int tm_on; void* offs_dl; void* offs; } ;
typedef TYPE_1__ TZDL ;


 void* get_lsb_long (unsigned char**) ;
 int get_mbg_tm (unsigned char**,int *) ;
 int get_mbg_tzname (unsigned char**,char*) ;

void
get_mbg_tzdl(
 unsigned char **buffpp,
 TZDL *tzdlp
 )
{
  tzdlp->offs = get_lsb_long(buffpp);
  tzdlp->offs_dl = get_lsb_long(buffpp);
  get_mbg_tm(buffpp, &tzdlp->tm_on);
  get_mbg_tm(buffpp, &tzdlp->tm_off);
  get_mbg_tzname(buffpp, (char *)tzdlp->name[0]);
  get_mbg_tzname(buffpp, (char *)tzdlp->name[1]);
}
