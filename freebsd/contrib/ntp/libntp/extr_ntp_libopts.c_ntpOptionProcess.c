
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tOptions ;


 int optionProcess (int *,int,char**) ;

int
ntpOptionProcess(
 tOptions * pOpts,
 int argc,
 char ** argv
 )
{
 return optionProcess(pOpts, argc, argv);
}
