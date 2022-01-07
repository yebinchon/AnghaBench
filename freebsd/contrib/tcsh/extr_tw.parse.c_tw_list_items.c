
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Char ;


 char* CGETS (int,int,char*) ;
 int Isdigit (scalar_t__) ;
 int SHIN ;
 scalar_t__* STRNULL ;
 int STRlistmax ;
 int STRlistmaxrows ;
 int TRUE ;
 int TW_JOB ;
 int TW_SIGNAL ;
 scalar_t__ Tty_raw_mode ;
 int cleanup_push (char*,int ) ;
 int cleanup_until (char*) ;
 int fcompare ;
 int find_rows (scalar_t__**,int,int ) ;
 int flush () ;
 int print_by_column (scalar_t__*,scalar_t__**,int,int ) ;
 int qsort (scalar_t__**,int,int,int ) ;
 int * strchr (char*,char) ;
 char* strsave (char const*) ;
 scalar_t__** tw_item_get () ;
 scalar_t__* varval (int ) ;
 int xfree ;
 int xprintf (char*,int,...) ;
 int xputchar (char) ;
 int xread (int ,char*,int) ;

__attribute__((used)) static void
tw_list_items(int looking, int numitems, int list_max)
{
    Char *ptr;
    int max_items = 0;
    int max_rows = 0;

    if (numitems == 0)
 return;

    if ((ptr = varval(STRlistmax)) != STRNULL) {
 while (*ptr) {
     if (!Isdigit(*ptr)) {
  max_items = 0;
  break;
     }
     max_items = max_items * 10 + *ptr++ - '0';
 }
 if ((max_items > 0) && (numitems > max_items) && list_max)
     max_items = numitems;
 else
     max_items = 0;
    }

    if (max_items == 0 && (ptr = varval(STRlistmaxrows)) != STRNULL) {
 int rows;

 while (*ptr) {
     if (!Isdigit(*ptr)) {
  max_rows = 0;
  break;
     }
     max_rows = max_rows * 10 + *ptr++ - '0';
 }
 if (max_rows != 0 && looking != TW_JOB)
     rows = find_rows(tw_item_get(), numitems, TRUE);
 else
     rows = numitems;
 if ((max_rows > 0) && (rows > max_rows) && list_max)
     max_rows = rows;
 else
     max_rows = 0;
    }


    if (max_items || max_rows) {
 char tc, *sname;
 const char *name;
 int maxs;

 if (max_items) {
     name = CGETS(30, 5, "items");
     maxs = max_items;
 }
 else {
     name = CGETS(30, 6, "rows");
     maxs = max_rows;
 }

 sname = strsave(name);
 cleanup_push(sname, xfree);
 xprintf(CGETS(30, 7, "There are %d %s, list them anyway? [n/y] "),
  maxs, sname);
 cleanup_until(sname);
 flush();

 (void) xread(SHIN, &tc, 1);
 xprintf("%c\r\n", tc);




 if (strchr(CGETS(30, 13, "Yy"), tc) == ((void*)0))
     return;
    }

    if (looking != TW_SIGNAL)
 qsort(tw_item_get(), numitems, sizeof(Char *), fcompare);
    if (looking != TW_JOB)
 print_by_column(STRNULL, tw_item_get(), numitems, TRUE);
    else {




 int i;
 Char **w = tw_item_get();

 for (i = 0; i < numitems; i++) {
     xprintf("%S", w[i]);
     if (Tty_raw_mode)
  xputchar('\r');
     xputchar('\n');
 }
    }
}
