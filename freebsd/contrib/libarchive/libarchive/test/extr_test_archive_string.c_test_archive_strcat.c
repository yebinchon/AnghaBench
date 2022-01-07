
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string {int dummy; } ;


 int EXTENT ;
 struct archive_string* archive_strcat (struct archive_string*,char*) ;
 int archive_string_free (struct archive_string*) ;
 int archive_string_init (struct archive_string*) ;
 int assert (int) ;
 int assertExactString (int,int ,char*,struct archive_string) ;

__attribute__((used)) static void
test_archive_strcat(void)
{
 struct archive_string s;

 archive_string_init(&s);
 assertExactString(0, 0, ((void*)0), s);


 assert(&s == archive_strcat(&s, ""));
 assertExactString(0, EXTENT, "", s);


 assert(&s == archive_strcat(&s, ""));
 assertExactString(0, EXTENT, "", s);


 assert(&s == archive_strcat(&s, "fubar"));
 assertExactString(5, EXTENT, "fubar", s);


 assert(&s == archive_strcat(&s, "baz"));
 assertExactString(8, EXTENT, "fubarbaz", s);

 archive_string_free(&s);
}
