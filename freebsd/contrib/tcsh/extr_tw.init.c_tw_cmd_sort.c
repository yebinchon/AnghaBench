
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t nlist; int * list; } ;
typedef int Char ;


 scalar_t__ Strcmp (int ,int ) ;
 int disabled_cleanup (int *) ;
 int fcompare ;
 int pintr_disabled ;
 int qsort (int *,size_t,int,int ) ;
 TYPE_1__ tw_cmd ;

__attribute__((used)) static void
tw_cmd_sort(void)
{
    size_t fwd, i;

    pintr_disabled++;

    qsort(tw_cmd.list, tw_cmd.nlist, sizeof(Char *), fcompare);


    for (i = 0, fwd = 0; i + 1 < tw_cmd.nlist; i++) {
 if (Strcmp(tw_cmd.list[i], tw_cmd.list[i + 1]) == 0)
     fwd++;
 else if (fwd)
     tw_cmd.list[i - fwd] = tw_cmd.list[i];
    }

    if (fwd)
 tw_cmd.list[i - fwd] = tw_cmd.list[i];
    tw_cmd.nlist -= fwd;
    disabled_cleanup(&pintr_disabled);
}
