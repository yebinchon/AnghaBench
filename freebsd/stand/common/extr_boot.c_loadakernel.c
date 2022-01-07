
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getbootfile (int) ;
 scalar_t__ mod_loadkld (char*,int,char**) ;
 int printf (char*,char*) ;

__attribute__((used)) static int
loadakernel(int try, int argc, char* argv[])
{
 char *cp;

 for (try = 0; (cp = getbootfile(try)) != ((void*)0); try++)
  if (mod_loadkld(cp, argc - 1, argv + 1) != 0)
   printf("can't load '%s'\n", cp);
  else
   return 1;
 return 0;
}
