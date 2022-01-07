
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int gr_gid; void* gr_name; } ;
typedef int gid_t ;


 struct group GrEntry ;
 void* __UNCONST (char*) ;
 int memset (struct group*,int ,int) ;

struct group *
getgrgid(gid_t gid)
{
 struct group *g = &GrEntry;

 memset(g, 0, sizeof(*g));
 if (gid == 0) {
  g->gr_name = __UNCONST("wheel");
  g->gr_gid = 0;
 } else if (gid == 100) {
  g->gr_name = __UNCONST("users");
  g->gr_gid = 100;
 } else
  g = ((void*)0);

 return g;
}
