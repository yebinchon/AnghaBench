
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct passwd {int pw_uid; int pw_gid; void* pw_name; } ;


 struct passwd PwEntry ;
 void* __UNCONST (char*) ;
 int memset (struct passwd*,int ,int) ;

struct passwd *
getpwuid(uid_t uid)
{
 struct passwd *p = &PwEntry;

 memset(p, 0, sizeof(*p));
 if (uid == 0) {
  p->pw_name = __UNCONST("root");
  p->pw_uid = 0;
  p->pw_gid = 0;
 } else if (uid == 100) {
  p->pw_name = __UNCONST("test");
  p->pw_uid = 100;
  p->pw_gid = 100;
 } else
  p = ((void*)0);

 return p;
}
