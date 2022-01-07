
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int pw_uid; } ;
typedef int off_t ;
typedef int line ;
typedef int FILE ;


 int BUFSIZ ;
 int SEEK_CUR ;
 char* cr ;
 int fclose (int *) ;
 int * fgets (unsigned char*,int,int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,char*) ;
 int fputc (unsigned char,int *) ;
 int fputs (char*,int *) ;
 int fseeko (int *,int ,int ) ;
 struct passwd* getpwnam (char*) ;
 scalar_t__ iscntrl (unsigned char) ;
 int isprint (unsigned char) ;
 int isspace (unsigned char) ;
 int setuid (int ) ;
 scalar_t__ strncmp (unsigned char*,char*,int) ;

__attribute__((used)) static void
jkfprintf(FILE *tp, char user[], char file[], off_t offset)
{
 unsigned char *cp, ch;
 FILE *fi;
 int linecnt, charcnt, inheader;
 struct passwd *p;
 unsigned char line[BUFSIZ];


 if ((p = getpwnam(user)) != ((void*)0))
  (void) setuid(p->pw_uid);

 if ((fi = fopen(file, "r")) == ((void*)0))
  return;

 (void)fseeko(fi, offset, SEEK_CUR);





 linecnt = 7;
 charcnt = 560;
 inheader = 1;
 while (fgets(line, sizeof(line), fi) != ((void*)0)) {
  if (inheader) {
   if (line[0] == '\n') {
    inheader = 0;
    continue;
   }
   if (line[0] == ' ' || line[0] == '\t' ||
       (strncmp(line, "From:", 5) &&
       strncmp(line, "Subject:", 8)))
    continue;
  }
  if (linecnt <= 0 || charcnt <= 0) {
   (void)fprintf(tp, "...more...%s", cr);
   (void)fclose(fi);
   return;
  }

  for (cp = line; (ch = *cp) && ch != '\n'; ++cp, --charcnt) {



   if (((ch & 0x80) && ch < 0xA0) ||
       (!(ch & 0x80) && !isprint(ch) &&
        !isspace(ch) && ch != '\a' && ch != '\b')
      ) {
    if (ch & 0x80) {
     ch &= ~0x80;
     (void)fputs("M-", tp);
    }
    if (iscntrl(ch)) {
     ch ^= 0x40;
     (void)fputc('^', tp);
    }
   }
   (void)fputc(ch, tp);
  }
  (void)fputs(cr, tp);
  --linecnt;
 }
 (void)fprintf(tp, "----%s\n", cr);
 (void)fclose(fi);
}
