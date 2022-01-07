
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXPATHLEN ;
 size_t atoi (char*) ;
 int getcwd (char*,size_t) ;
 int printf (char*,char*) ;

int
main(int argc, char *argv[])
{
 char b[MAXPATHLEN];
 size_t len = atoi(argv[1]);
 (void)getcwd(b, len);
 (void)printf("%s\n", b);
 return 0;
}
