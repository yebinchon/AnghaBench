
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int chdir (char const*) ;
 int err (int ,char*,char const*) ;

__attribute__((used)) static void
dochdir(const char *path, const char *errmsg)
{

 if (chdir(path) == -1)
  err(EXIT_FAILURE, "%s", errmsg);
}
