
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fclose (int *) ;
 int * uf ;

void
endutxent(void)
{

 if (uf != ((void*)0)) {
  fclose(uf);
  uf = ((void*)0);
 }
}
