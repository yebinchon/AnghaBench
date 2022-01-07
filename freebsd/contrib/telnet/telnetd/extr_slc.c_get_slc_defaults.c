
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ val; int flag; } ;
struct TYPE_5__ {int val; int flag; } ;
struct TYPE_6__ {TYPE_1__ current; int sptr; TYPE_2__ defset; } ;


 int NSLC ;
 int SLC_NOSUPPORT ;
 int init_termbuf () ;
 TYPE_3__* slctab ;
 int spcset (int,int *,int *) ;

void
get_slc_defaults(void)
{
 int i;

 init_termbuf();

 for (i = 1; i <= NSLC; i++) {
  slctab[i].defset.flag =
   spcset(i, &slctab[i].defset.val, &slctab[i].sptr);
  slctab[i].current.flag = SLC_NOSUPPORT;
  slctab[i].current.val = 0;
 }

}
