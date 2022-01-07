
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worker {int dummy; } ;
struct comm_reply {int dummy; } ;
struct comm_point {int dummy; } ;
typedef enum acl_access { ____Placeholder_acl_access } acl_access ;


 int acl_deny_non_local ;
 int acl_refuse_non_local ;
 int deny_refuse (struct comm_point*,int,int ,int ,struct worker*,struct comm_reply*) ;

__attribute__((used)) static int
deny_refuse_non_local(struct comm_point* c, enum acl_access acl,
 struct worker* worker, struct comm_reply* repinfo)
{
 return deny_refuse(c, acl, acl_deny_non_local, acl_refuse_non_local, worker, repinfo);
}
