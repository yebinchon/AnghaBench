
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int _IOLBF ;
 int setvbuf (int *,char*,int ,size_t) ;

int
setlinebuf(FILE *fp)
{

 return (setvbuf(fp, (char *)((void*)0), _IOLBF, (size_t)0));
}
