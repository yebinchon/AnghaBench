
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varent {char** vec; } ;
struct biltins {int bname; } ;
typedef char Char ;


 char* CGETS (int,int,char*) ;
 int STRautorehash ;
 int STRdot ;
 int STRpath ;
 int STRslash ;
 char* Strspl (int ,char*) ;
 struct varent* adrof (int ) ;
 struct varent* adrof1 (char*,int *) ;
 int aliases ;
 scalar_t__ any (int ,char) ;
 struct biltins const* bfunc ;
 int bit (int,int) ;
 int blkpr (char**) ;
 int cleanup_push (char*,int ) ;
 int cleanup_until (char*) ;
 int dohash (int *,int *) ;
 scalar_t__ eq (char*,int ) ;
 int executable (char*,char*,int ) ;
 int hash (int,int) ;
 int hashdebug ;
 int hashname (char*) ;
 scalar_t__ havhash ;
 size_t nbfunc ;
 struct biltins const* nt_bfunc ;
 size_t nt_nbfunc ;
 int short2str (char*) ;
 int str2short (int ) ;
 int xfree ;
 int xhash ;
 int xprintf (char*,char*) ;
 int xputchar (char) ;

int
find_cmd(Char *cmd, int prt)
{
    struct varent *var;
    const struct biltins *bptr;
    Char **pv;
    Char *sv;
    int hashval, rehashed, i, ex, rval = 0;

    if (prt && any(short2str(cmd), '/')) {
 xprintf("%s", CGETS(13, 7, "where: / in command makes no sense\n"));
 return rval;
    }



    if (prt && adrof1(cmd, &aliases)) {
 if ((var = adrof1(cmd, &aliases)) != ((void*)0)) {
     xprintf(CGETS(13, 8, "%S is aliased to "), cmd);
     if (var->vec != ((void*)0))
  blkpr(var->vec);
     xputchar('\n');
     rval = 1;
 }
    }



    for (bptr = bfunc; bptr < &bfunc[nbfunc]; bptr++) {
 if (eq(cmd, str2short(bptr->bname))) {
     rval = 1;
     if (prt)
  xprintf(CGETS(13, 9, "%S is a shell built-in\n"), cmd);
     else
  return rval;
 }
    }
    if ((var = adrof(STRpath)) == ((void*)0))
 return rval;

    hashval = havhash ? hashname(cmd) : 0;

    sv = Strspl(STRslash, cmd);
    cleanup_push(sv, xfree);

    rehashed = 0;
retry:
    for (pv = var->vec, i = 0; pv && *pv; pv++, i++) {
 if (havhash && !eq(*pv, STRdot)) {




     int hashval1 = hash(hashval, i);
     if (!bit(xhash, hashval1))
  continue;

 }
 ex = executable(*pv, sv, 0);






 if (ex) {
     rval = 1;
     if (prt) {
  xprintf("%S/", *pv);
  xprintf("%S\n", cmd);
     }
     else
  return rval;
 }
    }




    if (!prt && adrof(STRautorehash) && !rehashed && havhash) {
 dohash(((void*)0), ((void*)0));
 rehashed = 1;
 goto retry;
    }
    cleanup_until(sv);
    return rval;
}
