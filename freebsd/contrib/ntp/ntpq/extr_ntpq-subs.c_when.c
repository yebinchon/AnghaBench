
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ l_ui; } ;
typedef TYPE_1__ l_fp ;



__attribute__((used)) static long
when(
 l_fp *ts,
 l_fp *rec,
 l_fp *reftime
 )
{
 l_fp *lasttime;

 if (rec->l_ui != 0)
  lasttime = rec;
 else if (reftime->l_ui != 0)
  lasttime = reftime;
 else
  return 0;

 if (ts->l_ui < lasttime->l_ui)
  return -1;
 return (ts->l_ui - lasttime->l_ui);
}
