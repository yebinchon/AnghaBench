
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtree_entry {struct mtree_entry* reg_info; struct mtree_entry* dir_info; int fflags_text; int gname; int uname; int symlink; int pathname; int basename; int parentdir; } ;


 int archive_string_free (int *) ;
 int free (struct mtree_entry*) ;

__attribute__((used)) static void
mtree_entry_free(struct mtree_entry *me)
{
 archive_string_free(&me->parentdir);
 archive_string_free(&me->basename);
 archive_string_free(&me->pathname);
 archive_string_free(&me->symlink);
 archive_string_free(&me->uname);
 archive_string_free(&me->gname);
 archive_string_free(&me->fflags_text);
 free(me->dir_info);
 free(me->reg_info);
 free(me);
}
