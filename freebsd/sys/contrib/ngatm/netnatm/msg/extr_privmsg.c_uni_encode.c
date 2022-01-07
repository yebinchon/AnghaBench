
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct unicx {int dummy; } ;
struct uni_msg {int dummy; } ;
struct uni_all {int mtype; int u; } ;
struct TYPE_2__ {int (* encode ) (struct uni_msg*,int *,struct unicx*) ;} ;


 int stub1 (struct uni_msg*,int *,struct unicx*) ;
 TYPE_1__** uni_msgtable ;

int
uni_encode(struct uni_msg *msg, struct uni_all *in, struct unicx *cx)
{
 if (in->mtype >= 256)
  return (-1);
 if (uni_msgtable[in->mtype] == ((void*)0))
  return (-3);

 return ((uni_msgtable[in->mtype]->encode)(msg, &in->u, cx));
}
