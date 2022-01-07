
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ gl_pathc; int gl_flags; scalar_t__ gl_matchc; scalar_t__ gl_pathv; scalar_t__ gl_offs; } ;
typedef TYPE_1__ glob_t ;
typedef int Char ;


 int ERR_GLOB ;
 int ERR_NAME ;
 int ERR_NOMEM ;

 int GLOB_ALTNOT ;
 int GLOB_APPEND ;
 int GLOB_DOT ;
 int GLOB_MAGCHAR ;
 int GLOB_NOCHECK ;
 int GLOB_NOMAGIC ;

 int GLOB_QUOTE ;
 int GLOB_STAR ;
 int STRglobdot ;
 int STRglobstar ;
 int STRnonomatch ;
 scalar_t__ adrof (int ) ;
 int ** blk2short (scalar_t__) ;
 int glob (char*,int,int ,TYPE_1__*) ;
 int globfree (TYPE_1__*) ;
 int setname (char*) ;
 char* short2qstr (int *) ;
 int stderror (int) ;

__attribute__((used)) static Char **
libglob(Char **vl)
{
    int gflgs = GLOB_QUOTE | GLOB_NOMAGIC | GLOB_ALTNOT;
    glob_t globv;
    char *ptr;
    int nonomatch = adrof(STRnonomatch) != 0, magic = 0, match = 0;

    if (adrof(STRglobdot))
       gflgs |= GLOB_DOT;

    if (adrof(STRglobstar))
       gflgs |= GLOB_STAR;

    if (!vl || !vl[0])
 return(vl);

    globv.gl_offs = 0;
    globv.gl_pathv = 0;
    globv.gl_pathc = 0;

    if (nonomatch)
 gflgs |= GLOB_NOCHECK;

    do {
 ptr = short2qstr(*vl);
 switch (glob(ptr, gflgs, 0, &globv)) {
 case 129:
     globfree(&globv);
     setname(ptr);
     stderror(ERR_NAME | ERR_GLOB);

 case 128:
     globfree(&globv);
     stderror(ERR_NOMEM);

 default:
     break;
 }
 if (globv.gl_flags & GLOB_MAGCHAR) {
     match |= (globv.gl_matchc != 0);
     magic = 1;
 }
 gflgs |= GLOB_APPEND;
    }
    while (*++vl);
    vl = (globv.gl_pathc == 0 || (magic && !match && !nonomatch)) ?
 ((void*)0) : blk2short(globv.gl_pathv);
    globfree(&globv);
    return (vl);
}
