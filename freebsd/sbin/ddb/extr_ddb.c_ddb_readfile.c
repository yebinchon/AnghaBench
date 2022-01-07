
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int BUFSIZ ;
 int EX_UNAVAILABLE ;
 int MAXARG ;
 int WHITESP ;
 int ddb_main (int,char**) ;
 int err (int ,char*,char*) ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int printf (char*,int,...) ;
 size_t strcspn (char*,int ) ;
 size_t strlen (char*) ;
 size_t strspn (char*,int ) ;

void
ddb_readfile(char *filename)
{
 char buf[BUFSIZ];
 FILE* f;

 if ((f = fopen(filename, "r")) == ((void*)0))
  err(EX_UNAVAILABLE, "fopen: %s", filename);



 while (fgets(buf, BUFSIZ, f)) {
  int argc = 0;
  char *argv[2];
  size_t spn;

  spn = strlen(buf);
  if (buf[spn-1] == '\n')
   buf[spn-1] = '\0';

  spn = strspn(buf, " \t");
  argv[0] = buf + spn;
  if (*argv[0] == '#' || *argv[0] == '\0')
   continue;
  argc++;

  spn = strcspn(argv[0], " \t");
  argv[1] = argv[0] + spn + strspn(argv[0] + spn, " \t");
  argv[0][spn] = '\0';
  if (*argv[1] != '\0')
   argc++;
  ddb_main(argc, argv);
 }
 fclose(f);
}
