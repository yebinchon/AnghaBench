
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uni_subaddr {int type; int len; int addr; } ;
struct uni_msg {int dummy; } ;


 int APP_BUF (struct uni_msg*,int ,int ) ;
 int APP_BYTE (struct uni_msg*,int) ;

__attribute__((used)) static void
encode_subaddr(struct uni_msg *msg, struct uni_subaddr *addr)
{
 APP_BYTE(msg, 0x80|(addr->type<<4));
 APP_BUF(msg, addr->addr, addr->len);
}
