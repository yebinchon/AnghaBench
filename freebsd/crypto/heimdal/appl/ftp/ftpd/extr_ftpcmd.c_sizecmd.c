
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; scalar_t__ st_size; } ;
typedef int FILE ;


 int EOF ;
 int S_ISREG (int ) ;



 int fclose (int *) ;
 int fileno (int *) ;
 int * fopen (char*,char*) ;
 int fstat (int ,struct stat*) ;
 int getc (int *) ;
 int perror_reply (int,char*) ;
 int reply (int,char*,...) ;
 int stat (char*,struct stat*) ;
 int type ;

__attribute__((used)) static void
sizecmd(char *filename)
{
 switch (type) {
 case 128:
 case 129: {
  struct stat stbuf;
  if (stat(filename, &stbuf) < 0 || !S_ISREG(stbuf.st_mode))
   reply(550, "%s: not a plain file.", filename);
  else
   reply(213, "%lu", (unsigned long)stbuf.st_size);
  break;
 }
 case 130: {
  FILE *fin;
  int c;
  size_t count;
  struct stat stbuf;
  fin = fopen(filename, "r");
  if (fin == ((void*)0)) {
   perror_reply(550, filename);
   return;
  }
  if (fstat(fileno(fin), &stbuf) < 0 || !S_ISREG(stbuf.st_mode)) {
   reply(550, "%s: not a plain file.", filename);
   fclose(fin);
   return;
  }

  count = 0;
  while((c=getc(fin)) != EOF) {
   if (c == '\n')
    count++;
   count++;
  }
  fclose(fin);

  reply(213, "%lu", (unsigned long)count);
  break;
 }
 default:
  reply(504, "SIZE not implemented for Type %c.", "?AEIL"[type]);
 }
}
