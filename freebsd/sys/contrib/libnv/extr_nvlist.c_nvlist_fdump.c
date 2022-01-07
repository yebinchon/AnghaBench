
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int FILE ;


 int fflush (int *) ;
 int fileno (int *) ;
 int nvlist_dump (int const*,int ) ;

void
nvlist_fdump(const nvlist_t *nvl, FILE *fp)
{

 fflush(fp);
 nvlist_dump(nvl, fileno(fp));
}
