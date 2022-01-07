
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj_root {struct varobj_root* next; struct varobj* rootvar; } ;
struct varobj {int dummy; } ;


 int rootcount ;
 struct varobj_root* rootlist ;
 int warning (char*,int,int) ;
 struct varobj** xmalloc (int) ;

int
varobj_list (struct varobj ***varlist)
{
  struct varobj **cv;
  struct varobj_root *croot;
  int mycount = rootcount;


  *varlist = xmalloc ((rootcount + 1) * sizeof (struct varobj *));

  cv = *varlist;
  croot = rootlist;
  while ((croot != ((void*)0)) && (mycount > 0))
    {
      *cv = croot->rootvar;
      mycount--;
      cv++;
      croot = croot->next;
    }

  *cv = ((void*)0);

  if (mycount || (croot != ((void*)0)))
    warning
      ("varobj_list: assertion failed - wrong tally of root vars (%d:%d)",
       rootcount, mycount);

  return rootcount;
}
