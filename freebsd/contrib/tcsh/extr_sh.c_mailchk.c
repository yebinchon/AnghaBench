
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct varent {int ** vec; } ;
struct stat {scalar_t__ st_mtime; scalar_t__ st_size; scalar_t__ st_atime; int st_mode; } ;
struct TYPE_2__ {scalar_t__ tv_sec; } ;
typedef int DIR ;
typedef int Char ;


 char* CGETS (int,int,char*) ;
 int MAILINTVL ;
 int STRmail ;
 scalar_t__ S_ISDIR (int ) ;
 struct varent* adrof (int ) ;
 int blklen (int **) ;
 scalar_t__ chktim ;
 int cleanup_push (char*,int (*) (char*)) ;
 int cleanup_until (char*) ;
 int closedir (int *) ;
 int getn (int ) ;
 scalar_t__ loginsh ;
 scalar_t__ number (int *) ;
 int * opendir (char*) ;
 scalar_t__ readdir (int *) ;
 scalar_t__ seconds0 ;
 char* short2str (int *) ;
 int stat (char*,struct stat*) ;
 char* strsave (char*) ;
 int time (scalar_t__*) ;
 TYPE_1__ time0 ;
 char* xasprintf (char*,char*) ;
 int xfree (char*) ;
 int xprintf (char*,...) ;

__attribute__((used)) static void
mailchk(void)
{
    struct varent *v;
    Char **vp;
    time_t t;
    int intvl, cnt;
    struct stat stb;
    int new;

    v = adrof(STRmail);
    if (v == ((void*)0) || v->vec == ((void*)0))
 return;
    (void) time(&t);
    vp = v->vec;
    cnt = blklen(vp);
    intvl = (cnt && number(*vp)) ? (--cnt, getn(*vp++)) : MAILINTVL;
    if (intvl < 1)
 intvl = 1;
    if (chktim + intvl > t)
 return;
    for (; *vp; vp++) {
 char *filename = short2str(*vp);
 char *mboxdir = filename;

 if (stat(filename, &stb) < 0)
     continue;



 new = stb.st_mtime > seconds0;

 if (S_ISDIR(stb.st_mode)) {
     DIR *mailbox;
     int mailcount = 0;
     char *tempfilename;
     struct stat stc;

     tempfilename = xasprintf("%s/new", filename);

     if (stat(tempfilename, &stc) != -1 && S_ISDIR(stc.st_mode)) {




  stb = stc;



  new = stb.st_mtime > seconds0;

  mboxdir = tempfilename;
     }

     if (stb.st_mtime <= chktim + 1 || (loginsh && !new)) {
  xfree(tempfilename);
  continue;
     }

     mailbox = opendir(mboxdir);
     xfree(tempfilename);
     if (mailbox == ((void*)0))
  continue;


     if (!readdir(mailbox) || !readdir(mailbox)) {
  (void)closedir(mailbox);
  continue;
     }

     while (readdir(mailbox))
  mailcount++;

     (void)closedir(mailbox);
     if (mailcount == 0)
  continue;

     if (cnt == 1)
  xprintf(CGETS(11, 3, "You have %d mail messages.\n"),
   mailcount);
     else
  xprintf(CGETS(11, 4, "You have %d mail messages in %s.\n"),
   mailcount, filename);
 }
 else {
     char *type;

     if (stb.st_size == 0 || stb.st_atime >= stb.st_mtime ||
  (stb.st_atime <= chktim && stb.st_mtime <= chktim) ||
  (loginsh && !new))
  continue;
     type = strsave(new ? CGETS(11, 6, "new ") : "");
     cleanup_push(type, xfree);
     if (cnt == 1)
  xprintf(CGETS(11, 5, "You have %smail.\n"), type);
     else
         xprintf(CGETS(11, 7, "You have %smail in %s.\n"), type, filename);
     cleanup_until(type);
 }
    }
    chktim = t;
}
