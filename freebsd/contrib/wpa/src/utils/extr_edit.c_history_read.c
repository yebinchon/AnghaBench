
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int CMD_BUF_LEN ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int history_add (char*) ;

__attribute__((used)) static void history_read(const char *fname)
{
 FILE *f;
 char buf[CMD_BUF_LEN], *pos;

 f = fopen(fname, "r");
 if (f == ((void*)0))
  return;

 while (fgets(buf, CMD_BUF_LEN, f)) {
  for (pos = buf; *pos; pos++) {
   if (*pos == '\r' || *pos == '\n') {
    *pos = '\0';
    break;
   }
  }
  history_add(buf);
 }

 fclose(f);
}
