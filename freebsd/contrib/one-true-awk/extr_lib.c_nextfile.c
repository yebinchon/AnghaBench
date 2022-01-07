
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int argno ;
 int fclose (int *) ;
 int * infile ;
 int * stdin ;

void nextfile(void)
{
 if (infile != ((void*)0) && infile != stdin)
  fclose(infile);
 infile = ((void*)0);
 argno++;
}
