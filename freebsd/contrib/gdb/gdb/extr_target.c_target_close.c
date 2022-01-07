
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int (* to_close ) (int) ;int (* to_xclose ) (struct target_ops*,int) ;} ;


 int stub1 (struct target_ops*,int) ;
 int stub2 (int) ;

void
target_close (struct target_ops *targ, int quitting)
{
  if (targ->to_xclose != ((void*)0))
    targ->to_xclose (targ, quitting);
  else if (targ->to_close != ((void*)0))
    targ->to_close (quitting);
}
