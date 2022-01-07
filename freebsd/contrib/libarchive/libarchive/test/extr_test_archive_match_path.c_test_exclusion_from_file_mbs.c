
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;


 int archive_match_exclude_pattern_from_file (struct archive*,char*,int) ;
 int archive_match_free (struct archive*) ;
 struct archive* archive_match_new () ;
 int assert (int ) ;
 int assertEqualIntA (struct archive*,int ,int ) ;
 int exclusion_from_file (struct archive*) ;

__attribute__((used)) static void
test_exclusion_from_file_mbs(void)
{
 struct archive *m;


 if (!assert((m = archive_match_new()) != ((void*)0)))
  return;
 assertEqualIntA(m, 0,
     archive_match_exclude_pattern_from_file(m, "exclusion", 0));
 exclusion_from_file(m);

 archive_match_free(m);


 if (!assert((m = archive_match_new()) != ((void*)0)))
  return;

 assertEqualIntA(m, 0,
     archive_match_exclude_pattern_from_file(m, "exclusion_null", 1));
 exclusion_from_file(m);

 archive_match_free(m);
}
