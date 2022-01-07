
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statvfs {int dummy; } ;


 int EXIT_FAILURE ;
 struct statvfs* allstatvfs ;
 int err (int ,char*) ;
 struct statvfs* realloc (struct statvfs*,int) ;
 int sftotal ;
 int sfused ;

struct statvfs *
getnewstatvfs(void)
{

 if (sftotal == sfused) {
  sftotal = sftotal ? sftotal * 2 : 1;
  allstatvfs = realloc(allstatvfs,
      sftotal * sizeof(struct statvfs));
  if (allstatvfs == ((void*)0))
   err(EXIT_FAILURE, "realloc");
 }

 return (&allstatvfs[sfused++]);
}
