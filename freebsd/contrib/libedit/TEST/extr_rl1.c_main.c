
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_history (char*) ;
 int history_length ;
 int printf (char*,int,char*) ;
 char* readline (char*) ;

int
main(int argc, char *argv[])
{
 char *p;
 while ((p = readline("hi$")) != ((void*)0)) {
  add_history(p);
  printf("%d %s\n", history_length, p);
 }
 return 0;
}
