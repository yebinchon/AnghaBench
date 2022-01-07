
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Objlist_Entry ;
typedef int Objlist ;


 int STAILQ_EMPTY (int *) ;
 int * STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int free (int *) ;
 int link ;

__attribute__((used)) static void
objlist_clear(Objlist *list)
{
    Objlist_Entry *elm;

    while (!STAILQ_EMPTY(list)) {
 elm = STAILQ_FIRST(list);
 STAILQ_REMOVE_HEAD(list, link);
 free(elm);
    }
}
