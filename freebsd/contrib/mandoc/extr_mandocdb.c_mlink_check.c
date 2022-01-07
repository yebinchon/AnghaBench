
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct str {int mask; } ;
struct mpage {scalar_t__ form; int arch; int sec; } ;
struct mlink {int file; int name; int arch; int dsec; } ;


 scalar_t__ FORM_CAT ;
 scalar_t__ FORM_SRC ;
 int NAME_TITLE ;
 int assert (int) ;
 int names ;
 struct str* ohash_find (int *,unsigned int) ;
 unsigned int ohash_qlookup (int *,int ) ;
 int say (int ,char*,...) ;
 scalar_t__ strcasecmp (int ,int ) ;

__attribute__((used)) static void
mlink_check(struct mpage *mpage, struct mlink *mlink)
{
 struct str *str;
 unsigned int slot;
 if (FORM_SRC == mpage->form &&
     strcasecmp(mpage->sec, mlink->dsec))
  say(mlink->file, "Section \"%s\" manual in %s directory",
      mpage->sec, mlink->dsec);
 if (strcasecmp(mpage->arch, mlink->arch))
  say(mlink->file, "Architecture \"%s\" manual in "
      "\"%s\" directory", mpage->arch, mlink->arch);






 if (FORM_CAT == mpage->form)
  return;






 slot = ohash_qlookup(&names, mlink->name);
 str = ohash_find(&names, slot);
 assert(((void*)0) != str);
 if ( ! (NAME_TITLE & str->mask))
  say(mlink->file, "Name missing in NAME section");
}
