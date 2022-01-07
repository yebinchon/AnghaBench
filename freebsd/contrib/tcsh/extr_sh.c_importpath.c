
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int PATHSEP ;
 int* STRdot ;
 int STRpath ;
 int* Strsave (int*) ;
 int VAR_READWRITE ;
 int blk_cleanup ;
 int cleanup_ignore (int**) ;
 int cleanup_push (int**,int ) ;
 int cleanup_until (int**) ;
 int setq (int ,int**,int *,int ) ;
 int shvhed ;
 int** xcalloc (size_t,int) ;

void
importpath(Char *cp)
{
    size_t i = 0;
    Char *dp;
    Char **pv;
    int c;

    for (dp = cp; *dp; dp++)
 if (*dp == PATHSEP)
     i++;




    pv = xcalloc(i + 2, sizeof(Char *));
    dp = cp;
    i = 0;
    if (*dp)
 for (;;) {
     if ((c = *dp) == PATHSEP || c == 0) {
  *dp = 0;
  pv[i++] = Strsave(*cp ? cp : STRdot);
  if (c) {
      cp = dp + 1;
      *dp = PATHSEP;
  }
  else
      break;
     }




     dp++;
 }
    pv[i] = 0;
    cleanup_push(pv, blk_cleanup);
    setq(STRpath, pv, &shvhed, VAR_READWRITE);
    cleanup_ignore(pv);
    cleanup_until(pv);
}
