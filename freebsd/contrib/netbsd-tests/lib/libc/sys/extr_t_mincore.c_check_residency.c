
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE (int) ;
 int fprintf (int ,char*,char*,char*) ;
 int free (char*) ;
 char* malloc (size_t) ;
 scalar_t__ mincore (void*,size_t,char*) ;
 size_t page ;
 int stderr ;

__attribute__((used)) static size_t
check_residency(void *addr, size_t npgs)
{
 size_t i, resident;
 char *vec;

 vec = malloc(npgs);

 ATF_REQUIRE(vec != ((void*)0));
 ATF_REQUIRE(mincore(addr, npgs * page, vec) == 0);

 for (i = resident = 0; i < npgs; i++) {

  if (vec[i] != 0)
   resident++;





 }

 free(vec);

 return resident;
}
