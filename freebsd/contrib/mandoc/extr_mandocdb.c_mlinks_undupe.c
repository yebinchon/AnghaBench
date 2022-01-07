
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpage {scalar_t__ form; struct mlink* mlinks; } ;
struct mlink {scalar_t__ dform; struct mlink* next; int file; int dsec; } ;
typedef int buf ;


 scalar_t__ FORM_CAT ;
 scalar_t__ FORM_NONE ;
 int PATH_MAX ;
 int assert (int) ;
 int memcpy (char*,char*,int) ;
 int mlink_free (struct mlink*) ;
 int mlinks ;
 int * ohash_find (int *,int ) ;
 int ohash_qlookup (int *,char*) ;
 int say (int ,char*,char*) ;
 int strlcat (char*,int ,int) ;
 int strlcpy (char*,int ,int) ;
 char* strrchr (char*,char) ;
 char* strstr (char*,char*) ;
 scalar_t__ use_all ;
 scalar_t__ warnings ;

__attribute__((used)) static void
mlinks_undupe(struct mpage *mpage)
{
 char buf[PATH_MAX];
 struct mlink **prev;
 struct mlink *mlink;
 char *bufp;

 mpage->form = FORM_CAT;
 prev = &mpage->mlinks;
 while (((void*)0) != (mlink = *prev)) {
  if (FORM_CAT != mlink->dform) {
   mpage->form = FORM_NONE;
   goto nextlink;
  }
  (void)strlcpy(buf, mlink->file, sizeof(buf));
  bufp = strstr(buf, "cat");
  assert(((void*)0) != bufp);
  memcpy(bufp, "man", 3);
  if (((void*)0) != (bufp = strrchr(buf, '.')))
   *++bufp = '\0';
  (void)strlcat(buf, mlink->dsec, sizeof(buf));
  if (((void*)0) == ohash_find(&mlinks,
      ohash_qlookup(&mlinks, buf)))
   goto nextlink;
  if (warnings)
   say(mlink->file, "Man source exists: %s", buf);
  if (use_all)
   goto nextlink;
  *prev = mlink->next;
  mlink_free(mlink);
  continue;
nextlink:
  prev = &(*prev)->next;
 }
}
