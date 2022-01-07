
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mansearch {int firstmatch; int argmode; int * outkey; int sec; int * arch; } ;
struct manpaths {scalar_t__ sz; } ;
struct mandoc_xr {int line; int count; int sec; int name; scalar_t__ pos; struct mandoc_xr* next; } ;


 int ARG_NAME ;
 int MANDOCERR_XR_BAD ;
 int fs_search (struct mansearch*,struct manpaths*,int,int *,int *,size_t*) ;
 int mandoc_msg (int ,int,scalar_t__,char*,int ,int ,...) ;
 struct mandoc_xr* mandoc_xr_get () ;
 int manpath_base (struct manpaths*) ;
 scalar_t__ mansearch (struct mansearch*,struct manpaths*,int,int *,int *,size_t*) ;

__attribute__((used)) static void
check_xr(void)
{
 static struct manpaths paths;
 struct mansearch search;
 struct mandoc_xr *xr;
 size_t sz;

 if (paths.sz == 0)
  manpath_base(&paths);

 for (xr = mandoc_xr_get(); xr != ((void*)0); xr = xr->next) {
  if (xr->line == -1)
   continue;
  search.arch = ((void*)0);
  search.sec = xr->sec;
  search.outkey = ((void*)0);
  search.argmode = ARG_NAME;
  search.firstmatch = 1;
  if (mansearch(&search, &paths, 1, &xr->name, ((void*)0), &sz))
   continue;
  if (fs_search(&search, &paths, 1, &xr->name, ((void*)0), &sz) != -1)
   continue;
  if (xr->count == 1)
   mandoc_msg(MANDOCERR_XR_BAD, xr->line,
       xr->pos + 1, "Xr %s %s", xr->name, xr->sec);
  else
   mandoc_msg(MANDOCERR_XR_BAD, xr->line,
       xr->pos + 1, "Xr %s %s (%d times)",
       xr->name, xr->sec, xr->count);
 }
}
