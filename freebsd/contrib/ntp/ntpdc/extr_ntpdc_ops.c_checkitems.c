
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*) ;

__attribute__((used)) static int
checkitems(
 size_t items,
 FILE *fp
 )
{
 if (items == 0) {
  (void) fprintf(fp, "No data returned in response to query\n");
  return 0;
 }
 return 1;
}
