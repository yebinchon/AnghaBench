
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string {int dummy; } ;


 int EXTENT ;
 struct archive_string* archive_strcpy (struct archive_string*,char*) ;
 int archive_string_free (struct archive_string*) ;
 int archive_string_init (struct archive_string*) ;
 int assert (int) ;
 int assertExactString (int,int ,char*,struct archive_string) ;

__attribute__((used)) static void
test_archive_strcpy(void)
{
 struct archive_string s;

 archive_string_init(&s);
 assertExactString(0, 0, ((void*)0), s);


 assert(&s == archive_strcpy(&s, "snafu"));
 assertExactString(5, EXTENT, "snafu", s);


 assert(&s == archive_strcpy(&s, "foo"));
 assertExactString(3, EXTENT, "foo", s);


 assert(&s == archive_strcpy(&s, ""));
 assertExactString(0, EXTENT, "", s);

 archive_string_free(&s);
}
