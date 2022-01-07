
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Objlist_Entry ;
typedef int Objlist ;
typedef int Obj_Entry ;


 int STAILQ_REMOVE (int *,int *,int ,int ) ;
 int Struct_Objlist_Entry ;
 int free (int *) ;
 int link ;
 int * objlist_find (int *,int *) ;

__attribute__((used)) static void
objlist_remove(Objlist *list, Obj_Entry *obj)
{
    Objlist_Entry *elm;

    if ((elm = objlist_find(list, obj)) != ((void*)0)) {
 STAILQ_REMOVE(list, elm, Struct_Objlist_Entry, link);
 free(elm);
    }
}
