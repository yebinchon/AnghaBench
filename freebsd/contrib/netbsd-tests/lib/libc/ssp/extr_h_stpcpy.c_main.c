
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int printf (char*,char*) ;
 char* stpcpy (char*,char*) ;
 size_t strlen (char*) ;

int
main(int argc, char *argv[])
{
 char b[10];
 char *q = stpcpy(b, argv[1]);

 if ((size_t)(q - b) != strlen(argv[1]))
  abort();

 (void)printf("%s\n", b);
 return 0;
}
