
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsocket {int state; } ;


 scalar_t__ rs_have_rdata (struct rsocket*) ;
 int rs_readable ;

__attribute__((used)) static int rs_conn_have_rdata(struct rsocket *rs)
{
 return rs_have_rdata(rs) || !(rs->state & rs_readable);
}
