
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dfamust {int must; scalar_t__ exact; struct dfamust* next; } ;
struct TYPE_2__ {struct dfamust* musts; } ;


 TYPE_1__ dfa ;
 int error (int,int ,char const*) ;
 int kwset ;
 int kwset_exact_matches ;
 char* kwsincr (int ,int ,int ) ;
 int kwsinit () ;
 char* kwsprep (int ) ;
 int strlen (int ) ;

__attribute__((used)) static void
kwsmusts (void)
{
  struct dfamust const *dm;
  char const *err;

  if (dfa.musts)
    {
      kwsinit ();



      for (dm = dfa.musts; dm; dm = dm->next)
 {
   if (!dm->exact)
     continue;
   ++kwset_exact_matches;
   if ((err = kwsincr (kwset, dm->must, strlen (dm->must))) != 0)
     error (2, 0, err);
 }


      for (dm = dfa.musts; dm; dm = dm->next)
 {
   if (dm->exact)
     continue;
   if ((err = kwsincr (kwset, dm->must, strlen (dm->must))) != 0)
     error (2, 0, err);
 }
      if ((err = kwsprep (kwset)) != 0)
 error (2, 0, err);
    }
}
