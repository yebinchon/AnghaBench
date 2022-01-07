
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct match_list {int dummy; } ;
struct match {int pattern; } ;
struct archive_match {int setflag; } ;


 int ARCHIVE_OK ;
 int PATTERN_IS_SET ;
 int archive_mstring_copy_mbs_len (int *,char const*,size_t) ;
 struct match* calloc (int,int) ;
 int error_nomem (struct archive_match*) ;
 int match_list_add (struct match_list*,struct match*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int
add_pattern_mbs(struct archive_match *a, struct match_list *list,
    const char *pattern)
{
 struct match *match;
 size_t len;

 match = calloc(1, sizeof(*match));
 if (match == ((void*)0))
  return (error_nomem(a));

 len = strlen(pattern);
 if (len && pattern[len - 1] == '/')
  --len;
 archive_mstring_copy_mbs_len(&(match->pattern), pattern, len);
 match_list_add(list, match);
 a->setflag |= PATTERN_IS_SET;
 return (ARCHIVE_OK);
}
