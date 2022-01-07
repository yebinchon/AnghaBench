
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int FILE ;


 int fprintf (int *,char*) ;

__attribute__((used)) static void
print_tabs(FILE *out, size_t nr, uint8_t *map, size_t treedepth)
{
 size_t i;
 for (i = 0; i < nr; i++) {
  if (i == nr - 1) {
   fprintf(out, "|---");
  } else if (map && i < treedepth && map[i] == 1) {
   fprintf(out, "|   ");
  } else {
   fprintf(out, "    ");
  }
 }
}
