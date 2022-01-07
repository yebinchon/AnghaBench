
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * dbp ;
 int fclose (int *) ;
 scalar_t__ gottoprec ;
 int * pfp ;
 scalar_t__ slash ;

int
cgetclose(void)
{
 if (pfp != ((void*)0)) {
  (void)fclose(pfp);
  pfp = ((void*)0);
 }
 dbp = ((void*)0);
 gottoprec = 0;
 slash = 0;
 return(0);
}
