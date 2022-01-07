
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unicx {scalar_t__ errcnt; } ;
struct uni_msg {int dummy; } ;
struct uni_all {int dummy; } ;


 scalar_t__ uni_decode_body (struct uni_msg*,struct uni_all*,struct unicx*) ;
 scalar_t__ uni_decode_head (struct uni_msg*,struct uni_all*,struct unicx*) ;

int
uni_decode(struct uni_msg *msg, struct uni_all *out, struct unicx *cx)
{
 cx->errcnt = 0;
 if (uni_decode_head(msg, out, cx))
  return (-1);
 if (uni_decode_body(msg, out, cx))
  return (-2);
 return (0);
}
