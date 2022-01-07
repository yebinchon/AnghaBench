
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* mkdtemp (char*) ;
 int rmdir (char*) ;

int
main(void)
{
 char dirname[] = "/tmp/temp.XXXXXX";

 if (mkdtemp(dirname) != dirname)
  return 1;
 return rmdir(dirname) == -1;
}
