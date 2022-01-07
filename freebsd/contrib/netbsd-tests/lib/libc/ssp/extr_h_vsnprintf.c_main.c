
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t atoi (char*) ;
 int wrap (size_t,char*,char*) ;

int
main(int argc, char *argv[])
{
 size_t len = atoi(argv[1]);
 wrap(len, "%s", "012345678901234567890");
 return 0;
}
