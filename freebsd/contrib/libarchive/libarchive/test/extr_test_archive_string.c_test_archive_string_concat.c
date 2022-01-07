
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string {int dummy; } ;


 int EXTENT ;
 struct archive_string* archive_strcpy (struct archive_string*,char*) ;
 int archive_string_concat (struct archive_string*,struct archive_string*) ;
 int archive_string_free (struct archive_string*) ;
 int archive_string_init (struct archive_string*) ;
 int assert (int) ;
 int assertExactString (int,int ,char*,struct archive_string) ;

__attribute__((used)) static void
test_archive_string_concat(void)
{
 struct archive_string s, t, u, v;

 archive_string_init(&s);
 assertExactString(0, 0, ((void*)0), s);
 archive_string_init(&t);
 assertExactString(0, 0, ((void*)0), t);
 archive_string_init(&u);
 assertExactString(0, 0, ((void*)0), u);
 archive_string_init(&v);
 assertExactString(0, 0, ((void*)0), v);


 archive_string_concat(&t, &s);
 assertExactString(0, 0, ((void*)0), s);
 assertExactString(0, EXTENT, "", t);


 assert(&s == archive_strcpy(&s, ""));
 archive_string_concat(&u, &s);
 assertExactString(0, EXTENT, "", s);
 assertExactString(0, EXTENT, "", u);


 assert(&s == archive_strcpy(&s, "foo"));
 archive_string_concat(&v, &s);
 assertExactString(3, EXTENT, "foo", s);
 assertExactString(3, EXTENT, "foo", v);


 assert(&s == archive_strcpy(&s, ""));
 assert(&t == archive_strcpy(&t, ""));
 archive_string_concat(&t, &s);
 assertExactString(0, EXTENT, "", s);
 assertExactString(0, EXTENT, "", t);


 assert(&s == archive_strcpy(&s, "snafu"));
 assert(&t == archive_strcpy(&t, ""));
 archive_string_concat(&t, &s);
 assertExactString(5, EXTENT, "snafu", s);
 assertExactString(5, EXTENT, "snafu", t);

 archive_string_free(&v);
 archive_string_free(&u);
 archive_string_free(&t);
 archive_string_free(&s);
}
