
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proto {int dummy; } ;


 int PJDLOG_ASSERT (int) ;
 int TAILQ_INSERT_HEAD (int *,struct proto*,int ) ;
 int TAILQ_INSERT_TAIL (int *,struct proto*,int ) ;
 int protos ;
 int prt_next ;

void
proto_register(struct proto *proto, bool isdefault)
{
 static bool seen_default = 0;

 if (!isdefault)
  TAILQ_INSERT_HEAD(&protos, proto, prt_next);
 else {
  PJDLOG_ASSERT(!seen_default);
  seen_default = 1;
  TAILQ_INSERT_TAIL(&protos, proto, prt_next);
 }
}
