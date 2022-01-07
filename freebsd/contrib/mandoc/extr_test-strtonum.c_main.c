
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strtonum (char*,int,int,char const**) ;

int
main(void)
{
 const char *errstr;

 if (strtonum("1", 0, 2, &errstr) != 1)
  return 1;
 if (errstr != ((void*)0))
  return 2;
 if (strtonum("1x", 0, 2, &errstr) != 0)
  return 3;
 if (errstr == ((void*)0))
  return 4;
 if (strtonum("2", 0, 1, &errstr) != 0)
  return 5;
 if (errstr == ((void*)0))
  return 6;
 if (strtonum("0", 1, 2, &errstr) != 0)
  return 7;
 if (errstr == ((void*)0))
  return 8;
 return 0;
}
