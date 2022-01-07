
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsocket {int dummy; } ;


 scalar_t__ rs_give_credits (struct rsocket*) ;
 int rs_send_credits (struct rsocket*) ;

__attribute__((used)) static void rs_update_credits(struct rsocket *rs)
{
 if (rs_give_credits(rs))
  rs_send_credits(rs);
}
