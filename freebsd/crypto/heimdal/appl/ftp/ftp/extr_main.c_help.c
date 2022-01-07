
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd {char* c_name; int c_help; scalar_t__ c_proxy; } ;


 char* HELPINDENT ;
 size_t NCMDS ;
 struct cmd* cmdtab ;
 struct cmd* getcmd (char*) ;
 int printf (char*,...) ;
 int proxy ;
 int putchar (char) ;
 int strlen (char*) ;

void
help(int argc, char **argv)
{
 struct cmd *c;

 if (argc == 1) {
  int i, j, w, k;
  int columns, width = 0, lines;

  printf("Commands may be abbreviated.  Commands are:\n\n");
  for (c = cmdtab; c < &cmdtab[NCMDS]; c++) {
   int len = strlen(c->c_name);

   if (len > width)
    width = len;
  }
  width = (width + 8) &~ 7;
  columns = 80 / width;
  if (columns == 0)
   columns = 1;
  lines = (NCMDS + columns - 1) / columns;
  for (i = 0; i < lines; i++) {
   for (j = 0; j < columns; j++) {
    c = cmdtab + j * lines + i;
    if ((!proxy || c->c_proxy)) {
     printf("%s", c->c_name);
    } else {
     for (k=0; k < strlen(c->c_name); k++) {
      putchar(' ');
     }
    }
    if (c + lines >= &cmdtab[NCMDS]) {
     printf("\n");
     break;
    }
    w = strlen(c->c_name);
    while (w < width) {
     w = (w + 8) &~ 7;
     putchar('\t');
    }
   }
  }
  return;
 }
 while (--argc > 0) {
  char *arg;
  arg = *++argv;
  c = getcmd(arg);
  if (c == (struct cmd *)-1)
   printf("?Ambiguous help command %s\n", arg);
  else if (c == (struct cmd *)0)
   printf("?Invalid help command %s\n", arg);
  else
   printf("%-*s\t%s\n", HELPINDENT,
    c->c_name, c->c_help);
 }
}
