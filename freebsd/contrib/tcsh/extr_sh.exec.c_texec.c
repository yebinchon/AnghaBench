
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varent {int ** vec; } ;
struct stat {int st_mode; } ;
typedef int Char ;


 int EISDIR ;



 int ERR_ARCH ;
 int ERR_SYSTEM ;
 int O_LARGEFILE ;
 int O_RDONLY ;
 int * STR_BSHELL ;
 int * STR_SHELLPATH ;
 int STRshell ;
 scalar_t__ S_ISDIR (int ) ;
 int ** Strsave (int *) ;
 int ** Vexpath ;
 char** Vt ;
 int __setostype (int) ;
 int adrof (int ) ;
 struct varent* adrof1 (int ,int *) ;
 int aliases ;
 int blkfree (int **) ;
 int ** blkspl (int **,int **) ;
 int errno ;
 int execv (char*,char**) ;
 int exerr ;
 int ** expath ;
 int hashbang (int,int ***) ;
 int isprint (unsigned char) ;
 int nt_feed_to_cmd (char*,char**) ;
 int ** saveblk (int **) ;
 char** short2blk (int **) ;
 char* short2str (int *) ;
 scalar_t__ stat (char*,struct stat*) ;
 int stderror (int ,char*,int ) ;
 int strerror (int) ;
 int * varval (int ) ;
 int xclose (int) ;
 int xfree (int **) ;
 int xopen (char*,int) ;
 int xread (int,char*,int) ;

__attribute__((used)) static void
texec(Char *sf, Char **st)
{
    char **t;
    char *f;
    struct varent *v;
    Char **vp;
    Char *lastsh[2];
    char pref[2];
    int fd;
    Char *st0, **ost;


    t = short2blk(st);
    f = short2str(sf);



    errno = 0;
    {



 (void) execv(f, t);



    }



    blkfree((Char **) t);
    switch (errno) {

    case 129:







 if ((fd = xopen(f, O_RDONLY|O_LARGEFILE)) != -1) {
     int nread;
     if ((nread = xread(fd, pref, 2)) == 2) {
  if (!isprint((unsigned char)pref[0]) &&
      (pref[0] != '\n' && pref[0] != '\t')) {
      int err;

      err = errno;
      xclose(fd);



      stderror(ERR_ARCH, f, strerror(err));
  }
     }
     else if (nread < 0) {
     }






 }
     v = adrof1(STRshell, &aliases);
     if (v == ((void*)0) || v->vec == ((void*)0)) {
  vp = lastsh;
  vp[0] = adrof(STRshell) ? varval(STRshell) : STR_SHELLPATH;
  vp[1] = ((void*)0);
  vp = saveblk(vp);
     }
     else
  vp = saveblk(v->vec);



 if (fd != -1)
     xclose(fd);

 st0 = st[0];
 st[0] = sf;
 ost = st;
 st = blkspl(vp, st);
 ost[0] = st0;
 sf = *st;

 t = short2blk(st);
 f = short2str(sf);
 xfree(st);
 blkfree((Char **) vp);






 (void) execv(f, t);






 blkfree((Char **) t);

 stderror(ERR_SYSTEM, f, strerror(errno));
 break;

    case 128:
 stderror(ERR_SYSTEM, f, strerror(errno));
 break;




    case 130:
 break;

    default:
 if (exerr == 0) {
     exerr = strerror(errno);
     xfree(expath);
     expath = Strsave(sf);



 }
 break;
    }
}
