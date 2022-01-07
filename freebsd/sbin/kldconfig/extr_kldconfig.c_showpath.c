
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pathhead {int dummy; } ;


 int ENOMEM ;
 int err (int,char*) ;
 int errno ;
 int free (char*) ;
 int printf (char*,char*) ;
 char* qstring (struct pathhead*) ;

__attribute__((used)) static void
showpath(struct pathhead *pathq)
{
 char *s;

 if ((s = qstring(pathq)) == ((void*)0)) {
  errno = ENOMEM;
  err(1, "building path string");
 }
 printf("%s\n", s);
 free(s);
}
