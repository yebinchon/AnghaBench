
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct match {scalar_t__ matches; struct match* next; } ;
struct TYPE_4__ {struct match* first; int unmatched_count; } ;
struct TYPE_3__ {struct match* first; } ;
struct archive_match {TYPE_2__ inclusions; TYPE_1__ exclusions; } ;


 int match_path_exclusion (struct archive_match*,struct match*,int,void const*) ;
 int match_path_inclusion (struct archive_match*,struct match*,int,void const*) ;

__attribute__((used)) static int
path_excluded(struct archive_match *a, int mbs, const void *pathname)
{
 struct match *match;
 struct match *matched;
 int r;

 if (a == ((void*)0))
  return (0);






 matched = ((void*)0);
 for (match = a->inclusions.first; match != ((void*)0);
     match = match->next){
  if (match->matches == 0 &&
      (r = match_path_inclusion(a, match, mbs, pathname)) != 0) {
   if (r < 0)
    return (r);
   a->inclusions.unmatched_count--;
   match->matches++;
   matched = match;
  }
 }


 for (match = a->exclusions.first; match != ((void*)0);
     match = match->next){
  r = match_path_exclusion(a, match, mbs, pathname);
  if (r)
   return (r);
 }



 if (matched != ((void*)0))
  return (0);



 for (match = a->inclusions.first; match != ((void*)0);
     match = match->next){

  if (match->matches > 0 &&
      (r = match_path_inclusion(a, match, mbs, pathname)) != 0) {
   if (r < 0)
    return (r);
   match->matches++;
   return (0);
  }
 }


 if (a->inclusions.first != ((void*)0))
     return (1);


 return (0);
}
