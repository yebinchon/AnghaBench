
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpage {struct mpage* desc; struct mpage* title; struct mpage* arch; struct mpage* sec; struct mpage* next; struct mlink* mlinks; } ;
struct mlink {struct mlink* next; } ;


 int free (struct mpage*) ;
 int mlink_free (struct mlink*) ;
 struct mpage* mpage_head ;

__attribute__((used)) static void
mpages_free(void)
{
 struct mpage *mpage;
 struct mlink *mlink;

 while ((mpage = mpage_head) != ((void*)0)) {
  while ((mlink = mpage->mlinks) != ((void*)0)) {
   mpage->mlinks = mlink->next;
   mlink_free(mlink);
  }
  mpage_head = mpage->next;
  free(mpage->sec);
  free(mpage->arch);
  free(mpage->title);
  free(mpage->desc);
  free(mpage);
 }
}
