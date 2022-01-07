
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int db_index; unsigned long checksum; char* term_name; char* description; } ;
typedef int TERMDATA ;


 int compare_termdata ;
 int printf (char*,...) ;
 TYPE_1__* ptr_termdata ;
 int qsort (TYPE_1__*,int,int,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int use_termdata ;

__attribute__((used)) static void
show_termdata(int eargc, char **eargv)
{
    int j, k;
    size_t n;

    if (use_termdata) {
 if (eargc > 1) {
     for (j = 0; j < eargc; ++j) {
  for (k = 0; k <= j; ++k) {
      printf("--");
  }
  printf("> ");
  printf("%s\n", eargv[j]);
     }
 }
 if (use_termdata > 1)
     qsort(ptr_termdata, use_termdata, sizeof(TERMDATA), compare_termdata);
 for (n = 0; n < use_termdata; ++n) {




     if (eargc > 1) {
  unsigned long check = 0;
  k = 0;
  for (;;) {
      for (; k < ptr_termdata[n].db_index; ++k) {
   printf("--");
      }






      printf("%c-", ((check == 0
        || (check != ptr_termdata[n].checksum))
       ? '*'
       : '+'));
      check = ptr_termdata[n].checksum;

      ++k;
      if ((n + 1) >= use_termdata
   || strcmp(ptr_termdata[n].term_name,
      ptr_termdata[n + 1].term_name)) {
   break;
      }
      ++n;
  }
  for (; k < eargc; ++k) {
      printf("--");
  }
  printf(":\t");
     }

     (void) printf("%-10s\t%s\n",
     ptr_termdata[n].term_name,
     ptr_termdata[n].description);
 }
    }
}
