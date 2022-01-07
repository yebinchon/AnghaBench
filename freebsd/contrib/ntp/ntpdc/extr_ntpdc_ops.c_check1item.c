
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int FILE ;


 int fprintf (int *,char*,...) ;

__attribute__((used)) static int
check1item(
 size_t items,
 FILE *fp
 )
{
 if (items == 0) {
  (void) fprintf(fp, "No data returned in response to query\n");
  return 0;
 }
 if (items > 1) {
  (void) fprintf(fp, "Expected one item in response, got %lu\n",
          (u_long)items);
  return 0;
 }
 return 1;
}
