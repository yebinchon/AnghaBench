
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ cmd; } ;
struct TYPE_9__ {size_t key; scalar_t__ type; TYPE_6__ fun; } ;
struct TYPE_8__ {char* str; } ;
struct TYPE_7__ {int buf; int len; } ;
typedef scalar_t__ KEYCMD ;
typedef TYPE_1__ CStr ;


 int A_K_NKEYS ;
 int AddXkey (TYPE_1__*,TYPE_6__*,scalar_t__) ;
 scalar_t__* CcAltMap ;
 scalar_t__* CcEmacsMap ;
 scalar_t__* CcKeyMap ;
 scalar_t__* CcViCmdMap ;
 int ClearXkey (scalar_t__*,TYPE_1__*) ;
 int DefaultArrowKeys () ;
 scalar_t__ F_UNASSIGNED ;
 scalar_t__ F_XKEY ;
 int GotTermCaps ;
 int Strlen (int ) ;
 scalar_t__ VImode ;
 scalar_t__ XK_CMD ;
 scalar_t__ XK_NOD ;
 TYPE_3__* arrow ;
 int str2short (char*) ;
 TYPE_2__* tstr ;

void
BindArrowKeys(void)
{
    KEYCMD *map, *dmap;
    int i, j;
    char *p;
    CStr cs;

    if (!GotTermCaps)
 return;
    map = VImode ? CcAltMap : CcKeyMap;
    dmap = VImode ? CcViCmdMap : CcEmacsMap;

    DefaultArrowKeys();

    for (i = 0; i < A_K_NKEYS; i++) {
 p = tstr[arrow[i].key].str;
 if (p && *p) {
     j = (unsigned char) *p;
     cs.buf = str2short(p);
     cs.len = Strlen(cs.buf);
     if (arrow[i].type == XK_NOD) {
  ClearXkey(map, &cs);
     }
     else {
  if (p[1] && (dmap[j] == map[j] || map[j] == F_XKEY)) {
      AddXkey(&cs, &arrow[i].fun, arrow[i].type);
      map[j] = F_XKEY;
  }
  else if (map[j] == F_UNASSIGNED) {
      ClearXkey(map, &cs);
      if (arrow[i].type == XK_CMD)
   map[j] = arrow[i].fun.cmd;
      else
   AddXkey(&cs, &arrow[i].fun, arrow[i].type);
  }
     }
 }
    }
}
