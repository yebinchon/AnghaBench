
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct match_list {int dummy; } ;
struct match {int pattern; } ;
struct archive_match {int setflag; } ;


 int ARCHIVE_OK ;
 int ID_IS_SET ;
 int archive_mstring_copy_mbs (int *,void const*) ;
 int archive_mstring_copy_wcs (int *,void const*) ;
 struct match* calloc (int,int) ;
 int error_nomem (struct archive_match*) ;
 int match_list_add (struct match_list*,struct match*) ;

__attribute__((used)) static int
add_owner_name(struct archive_match *a, struct match_list *list,
    int mbs, const void *name)
{
 struct match *match;

 match = calloc(1, sizeof(*match));
 if (match == ((void*)0))
  return (error_nomem(a));
 if (mbs)
  archive_mstring_copy_mbs(&(match->pattern), name);
 else
  archive_mstring_copy_wcs(&(match->pattern), name);
 match_list_add(list, match);
 a->setflag |= ID_IS_SET;
 return (ARCHIVE_OK);
}
