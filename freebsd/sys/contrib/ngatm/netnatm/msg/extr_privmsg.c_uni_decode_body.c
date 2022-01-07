
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unicx {scalar_t__ errcnt; } ;
struct uni_msg {int dummy; } ;
struct uni_all {int mtype; int u; } ;


 int uni_decode_body_internal (size_t,struct uni_msg*,int *,struct unicx*) ;
 int ** uni_msgtable ;

int
uni_decode_body(struct uni_msg *msg, struct uni_all *out, struct unicx *cx)
{
 cx->errcnt = 0;
 if (out->mtype >= 256)
  return (-1);
 if (uni_msgtable[out->mtype] == ((void*)0))
  return (-1);
 return (uni_decode_body_internal(out->mtype, msg, &out->u, cx));
}
