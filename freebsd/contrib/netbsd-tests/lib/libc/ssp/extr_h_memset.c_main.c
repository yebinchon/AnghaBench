
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t atoi (char*) ;
 int memset (char*,int ,size_t) ;

int
main(int argc, char *argv[])
{
 char b[10];
 size_t len = atoi(argv[1]);
 (void)memset(b, 0, len);
 return b[0];
}
