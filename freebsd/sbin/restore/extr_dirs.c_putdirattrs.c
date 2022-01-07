
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fail_dirtmp (int ) ;
 int fwrite (char*,size_t,int,int *) ;
 int * mf ;
 int modefile ;

__attribute__((used)) static void
putdirattrs(char *buf, size_t size)
{

 if (mf != ((void*)0) && fwrite(buf, size, 1, mf) != 1)
  fail_dirtmp(modefile);
}
