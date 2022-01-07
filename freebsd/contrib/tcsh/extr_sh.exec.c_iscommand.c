
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varent {scalar_t__** vec; } ;
typedef scalar_t__ Char ;


 scalar_t__ ABSOLUTEP (scalar_t__*) ;
 int STRautorehash ;
 int STRdot ;
 int STRpath ;
 int STRslash ;
 scalar_t__* Strspl (int ,scalar_t__*) ;
 struct varent* adrof (int ) ;
 int any (int ,char) ;
 int bit (int,int) ;
 int dohash (int *,int *) ;
 scalar_t__ eq (scalar_t__*,int ) ;
 scalar_t__ executable (scalar_t__*,scalar_t__*,int ) ;
 int hash (int,int) ;
 int hashname (scalar_t__*) ;
 scalar_t__ havhash ;
 scalar_t__** justabs ;
 int short2str (scalar_t__*) ;
 int xfree (scalar_t__*) ;
 int xhash ;

__attribute__((used)) static int
iscommand(Char *name)
{
    Char **opv, **pv;
    Char *sav;
    struct varent *v;
    int slash = any(short2str(name), '/');
    int hashval, rehashed, i;

    v = adrof(STRpath);
    if (v == ((void*)0) || v->vec == ((void*)0) || v->vec[0] == ((void*)0) || slash)
 opv = justabs;
    else
 opv = v->vec;
    sav = Strspl(STRslash, name);
    hashval = havhash ? hashname(name) : 0;

    rehashed = 0;
retry:
    pv = opv;
    i = 0;
    do {
 if (!slash && ABSOLUTEP(pv[0]) && havhash) {




     int hashval1 = hash(hashval, i);
     if (!bit(xhash, hashval1))
  goto cont;

 }
 if (pv[0][0] == 0 || eq(pv[0], STRdot)) {
     if (executable(((void*)0), name, 0)) {
  xfree(sav);
  return i + 1;
     }
 }
 else {
     if (executable(*pv, sav, 0)) {
  xfree(sav);
  return i + 1;
     }
 }
cont:
 pv++;
 i++;
    } while (*pv);
    if (adrof(STRautorehash) && !rehashed && havhash && opv != justabs) {
 dohash(((void*)0), ((void*)0));
 rehashed = 1;
 goto retry;
    }
    xfree(sav);
    return 0;
}
