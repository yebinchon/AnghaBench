
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xx {int token; char* name; } ;
typedef int FILE ;


 int FIRSTTOKEN ;
 int LASTTOKEN ;
 int SIZE ;
 int exit (int) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ malloc (scalar_t__) ;
 char** names ;
 int printf (char*,...) ;
 struct xx* proc ;
 int sscanf (char*,char*,char*,char*,char*,int*) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;
 char** table ;

int main(int argc, char *argv[])
{
 const struct xx *p;
 int i, n, tok;
 char c;
 FILE *fp;
 char buf[200], name[200], def[200];

 printf("#include <stdio.h>\n");
 printf("#include \"awk.h\"\n");
 printf("#include \"ytab.h\"\n\n");
 for (i = SIZE; --i >= 0; )
  names[i] = "";

 if (argc != 2) {
  fprintf(stderr, "usage: maketab YTAB_H\n");
  exit(1);
 }
 if ((fp = fopen(argv[1], "r")) == ((void*)0)) {
  fprintf(stderr, "maketab can't open %s!\n", argv[1]);
  exit(1);
 }
 printf("static char *printname[%d] = {\n", SIZE);
 i = 0;
 while (fgets(buf, sizeof buf, fp) != ((void*)0)) {
  n = sscanf(buf, "%1c %s %s %d", &c, def, name, &tok);
  if (c != '#' || (n != 4 && strcmp(def,"define") != 0))
   continue;
  if (strcmp(name, "YYSTYPE_IS_DECLARED") == 0)
   continue;
  if (tok < FIRSTTOKEN || tok > LASTTOKEN) {

   continue;
  }
  names[tok-FIRSTTOKEN] = (char *) malloc(strlen(name)+1);
  strcpy(names[tok-FIRSTTOKEN], name);
  printf("\t(char *) \"%s\",\t/* %d */\n", name, tok);
  i++;
 }
 printf("};\n\n");

 for (p=proc; p->token!=0; p++)
  table[p->token-FIRSTTOKEN] = p->name;
 printf("\nCell *(*proctab[%d])(Node **, int) = {\n", SIZE);
 for (i=0; i<SIZE; i++)
  if (table[i]==((void*)0))
   printf("\tnullproc,\t/* %s */\n", names[i]);
  else
   printf("\t%s,\t/* %s */\n", table[i], names[i]);
 printf("};\n\n");

 printf("char *tokname(int n)\n");
 printf("{\n");
 printf("	static char buf[100];\n\n");
 printf("	if (n < FIRSTTOKEN || n > LASTTOKEN) {\n");
 printf("		sprintf(buf, \"token %%d\", n);\n");
 printf("		return buf;\n");
 printf("	}\n");
 printf("	return printname[n-FIRSTTOKEN];\n");
 printf("}\n");
 return 0;
}
