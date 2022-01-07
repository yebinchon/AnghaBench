
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef size_t uChar ;
struct command {int dummy; } ;
struct TYPE_12__ {int* buf; int len; } ;
typedef scalar_t__ KEYCMD ;
typedef char Char ;
typedef TYPE_1__ CStr ;


 int AddXkey (TYPE_1__*,int ,int) ;
 int BindArrowKeys () ;
 int CGETS (int,int,char*) ;
 char CHAR ;
 scalar_t__* CcAltMap ;
 scalar_t__* CcKeyMap ;
 int ClearArrowKeys (TYPE_1__*) ;
 int ClearXkey (scalar_t__*,TYPE_1__*) ;
 int DeleteXkey (TYPE_1__*) ;
 scalar_t__ F_UNASSIGNED ;
 scalar_t__ F_XKEY ;
 int IsArrowKey (char*) ;
 int MapsAreInited ;
 int PrintArrowKeys (TYPE_1__*) ;
 int SetArrowKeys (TYPE_1__*,int ,int) ;
 int Strlen (int*) ;
 int* Strsave (char*) ;
 int USE (struct command*) ;



 int XmapCmd (int) ;
 int XmapStr (TYPE_1__*) ;
 int abort () ;
 int bad_spec (int*) ;
 int bindkey_usage () ;
 int cleanup_ignore (char*) ;
 int cleanup_push (int*,int ) ;
 int cleanup_until (int*) ;
 int ed_InitEmacsMaps () ;
 int ed_InitMaps () ;
 int ed_InitVIMaps () ;
 int list_functions () ;
 int * parsebind (char*,TYPE_1__*) ;
 scalar_t__ parsecmd (char*) ;
 int * parsestring (char*,TYPE_1__*) ;
 int print_all_keys () ;
 int printkey (scalar_t__*,TYPE_1__*) ;
 int xfree ;
 int xprintf (int ,char*) ;

void
dobindkey(Char **v, struct command *c)
{
    KEYCMD *map;
    int ntype, no, removeb, key, bindk;
    Char *par;
    Char p;
    KEYCMD cmd;
    CStr in;
    CStr out;
    uChar ch;

    USE(c);
    if (!MapsAreInited)
 ed_InitMaps();

    map = CcKeyMap;
    ntype = 130;
    key = removeb = bindk = 0;
    for (no = 1, par = v[no];
  par != ((void*)0) && (*par++ & CHAR) == '-'; no++, par = v[no]) {
 if ((p = (*par & CHAR)) == '-') {
     no++;
     break;
 }
 else
     switch (p) {
     case 'b':
  bindk = 1;
  break;
     case 'k':
  key = 1;
  break;
     case 'a':
  map = CcAltMap;
  break;
     case 's':
  ntype = 128;
  break;
     case 'c':
  ntype = 129;
  break;
     case 'r':
  removeb = 1;
  break;
     case 'v':
  ed_InitVIMaps();
  return;
     case 'e':
  ed_InitEmacsMaps();
  return;
     case 'd':



  ed_InitEmacsMaps();

  return;
     case 'l':
  list_functions();
  return;
     default:
  bindkey_usage();
  return;
     }
    }

    if (!v[no]) {
 print_all_keys();
 return;
    }

    if (key) {
 if (!IsArrowKey(v[no]))
     xprintf(CGETS(20, 1, "Invalid key name `%S'\n"), v[no]);
 in.buf = Strsave(v[no++]);
 in.len = Strlen(in.buf);
    }
    else {
 if (bindk) {
     if (parsebind(v[no++], &in) == ((void*)0))
  return;
 }
 else {
     if (parsestring(v[no++], &in) == ((void*)0))
  return;
 }
    }
    cleanup_push(in.buf, xfree);


    if (in.buf[0] > 0xFF) {
 bad_spec(in.buf);
 cleanup_until(in.buf);
 return;
    }

    ch = (uChar) in.buf[0];

    if (removeb) {
 if (key)
     (void) ClearArrowKeys(&in);
 else if (in.len > 1) {
     (void) DeleteXkey(&in);
 }
 else if (map[ch] == F_XKEY) {
     (void) DeleteXkey(&in);
     map[ch] = F_UNASSIGNED;
 }
 else {
     map[ch] = F_UNASSIGNED;
 }
 cleanup_until(in.buf);
 return;
    }
    if (!v[no]) {
 if (key)
     PrintArrowKeys(&in);
 else
     printkey(map, &in);
 cleanup_until(in.buf);
 return;
    }
    if (v[no + 1]) {
 bindkey_usage();
 cleanup_until(in.buf);
 return;
    }
    switch (ntype) {
    case 128:
    case 129:
 if (parsestring(v[no], &out) == ((void*)0)) {
     cleanup_until(in.buf);
     return;
 }
 cleanup_push(out.buf, xfree);
 if (key) {
     if (SetArrowKeys(&in, XmapStr(&out), ntype) == -1)
  xprintf(CGETS(20, 2, "Bad key name: %S\n"), in.buf);
     else
  cleanup_ignore(out.buf);
 }
 else
     AddXkey(&in, XmapStr(&out), ntype);
 map[ch] = F_XKEY;
 break;
    case 130:
 if ((cmd = parsecmd(v[no])) == 0) {
     cleanup_until(in.buf);
     return;
 }
 if (key)
     (void) SetArrowKeys(&in, XmapCmd((int) cmd), ntype);
 else {
     if (in.len > 1) {
  AddXkey(&in, XmapCmd((int) cmd), ntype);
  map[ch] = F_XKEY;
     }
     else {
  ClearXkey(map, &in);
  map[ch] = cmd;
     }
 }
 break;
    default:
 abort();
 break;
    }
    cleanup_until(in.buf);
    if (key)
 BindArrowKeys();
}
