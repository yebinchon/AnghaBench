
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string {int dummy; } ;


 int EXTENT ;
 int archive_string_free (struct archive_string*) ;
 int archive_string_init (struct archive_string*) ;
 struct archive_string* archive_strncpy (struct archive_string*,char*,int) ;
 int assert (int) ;
 int assertExactString (int,int ,char*,struct archive_string) ;

__attribute__((used)) static void
test_archive_strncpy(void)
{
 struct archive_string s;

 archive_string_init(&s);
 assertExactString(0, 0, ((void*)0), s);


 assert(&s == archive_strncpy(&s, "fubar", 5));
 assertExactString(5, EXTENT, "fubar", s);


 assert(&s == archive_strncpy(&s, "snafubar", 5));
 assertExactString(5, EXTENT, "snafu", s);


 assert(&s == archive_strncpy(&s, "snafu", 8));
 assertExactString(5, EXTENT, "snafu", s);

 archive_string_free(&s);
}
