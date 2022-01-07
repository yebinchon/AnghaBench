
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termcapval {char* name; int val; } ;
struct termcapstr {char* name; } ;
typedef void* Char ;


 int ChangeSize (void*,void*) ;
 int ERR_NAME ;
 int ERR_SETTCUS ;
 int ERR_TCCAP ;
 scalar_t__ GoodStr (int ) ;
 int MARGIN_AUTO ;
 int MARGIN_MAGIC ;
 char* Str (int ) ;
 int TCset (struct termcapstr*,char*) ;
 scalar_t__ T_CanCEOL ;
 int T_CanDel ;
 int T_CanIns ;
 int T_CanUP ;
 void* T_Cols ;
 int T_DC ;
 void* T_HasMeta ;
 int T_IC ;
 void* T_Lines ;
 int T_Margin ;
 void* T_Tabs ;
 int T_UP ;
 size_t T_am ;
 int T_ce ;
 size_t T_co ;
 int T_dc ;
 int T_ic ;
 int T_im ;
 size_t T_km ;
 size_t T_li ;
 int T_me ;
 size_t T_pt ;
 int T_se ;
 int T_ue ;
 int T_up ;
 size_t T_xn ;
 void* Val (size_t) ;
 int atoi (char*) ;
 int me_all ;
 int setname (char*) ;
 int stderror (int,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 struct termcapstr* tstr ;
 struct termcapval* tval ;

void
SetTC(char *what, char *how)
{
    struct termcapstr *ts;
    struct termcapval *tv;




    setname("settc");
    for (ts = tstr; ts->name != ((void*)0); ts++)
 if (strcmp(ts->name, what) == 0)
     break;
    if (ts->name != ((void*)0)) {
 TCset(ts, how);



 if (GoodStr(T_me) && GoodStr(T_ue))
     me_all = (strcmp(Str(T_me), Str(T_ue)) == 0);
 else
     me_all = 0;
 if (GoodStr(T_me) && GoodStr(T_se))
     me_all |= (strcmp(Str(T_me), Str(T_se)) == 0);

 T_CanCEOL = GoodStr(T_ce);
 T_CanDel = GoodStr(T_dc) || GoodStr(T_DC);
 T_CanIns = GoodStr(T_im) || GoodStr(T_ic) || GoodStr(T_IC);
 T_CanUP = GoodStr(T_up) || GoodStr(T_UP);
 return;
    }




    for (tv = tval; tv->name != ((void*)0); tv++)
 if (strcmp(tv->name, what) == 0)
     break;

    if (tv->name != ((void*)0)) {
 if (tv == &tval[T_pt] || tv == &tval[T_km] ||
     tv == &tval[T_am] || tv == &tval[T_xn]) {
     if (strcmp(how, "yes") == 0)
  tv->val = 1;
     else if (strcmp(how, "no") == 0)
  tv->val = 0;
     else {
  stderror(ERR_SETTCUS, tv->name);
  return;
     }
     T_Tabs = Val(T_pt);
     T_HasMeta = Val(T_km);
     T_Margin = Val(T_am) ? MARGIN_AUTO : 0;
     T_Margin |= Val(T_xn) ? MARGIN_MAGIC : 0;
     if (tv == &tval[T_am] || tv == &tval[T_xn])
  ChangeSize(Val(T_li), Val(T_co));
     return;
 }
 else {
     tv->val = atoi(how);
     T_Cols = (Char) Val(T_co);
     T_Lines = (Char) Val(T_li);
     if (tv == &tval[T_co] || tv == &tval[T_li])
  ChangeSize(Val(T_li), Val(T_co));
     return;
 }
    }
    stderror(ERR_NAME | ERR_TCCAP, what);
    return;
}
