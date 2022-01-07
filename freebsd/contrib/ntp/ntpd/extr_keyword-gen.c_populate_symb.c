
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;
typedef int FILE ;


 int COUNTOF (int *) ;
 int MAX_TOK_LEN ;
 int estrdup (char*) ;
 int exit (int) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,int,char*) ;
 int perror (char*) ;
 int sscanf (char*,char*,char*,int*) ;
 int stderr ;
 int strlen (char*) ;
 int * symb ;

void
populate_symb(
 char *header_file
 )
{
 FILE * yh;
 char line[2 * MAX_TOK_LEN];
 char name[2 * MAX_TOK_LEN];
 int token;

 yh = fopen(header_file, "r");
 if (((void*)0) == yh) {
  perror("unable to open yacc/bison header file");
  exit(4);
 }

 while (((void*)0) != fgets(line, sizeof(line), yh))
  if (2 == sscanf(line, "#define %s %d", name, &token)
      && 'T' == name[0] && '_' == name[1] && token >= 0
      && token < COUNTOF(symb)) {

   symb[token] = estrdup(name);
   if (strlen(name) > MAX_TOK_LEN) {
    fprintf(stderr,
     "MAX_TOK_LEN %d too small for '%s'\n"
     "Edit keyword-gen.c to raise.\n",
     MAX_TOK_LEN, name);
    exit(10);
   }
  }
 fclose(yh);
}
