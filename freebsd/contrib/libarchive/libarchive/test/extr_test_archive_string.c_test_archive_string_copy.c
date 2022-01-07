
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string {int dummy; } ;


 int EXTENT ;
 int * archive_strcpy (struct archive_string*,char*) ;
 int archive_string_copy (struct archive_string*,struct archive_string*) ;
 int archive_string_free (struct archive_string*) ;
 int archive_string_init (struct archive_string*) ;
 int assert (int) ;
 int assertExactString (int,int ,char*,struct archive_string) ;

__attribute__((used)) static void
test_archive_string_copy(void)
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


 archive_string_copy(&t, &s);
 assertExactString(0, 0, ((void*)0), s);
 assertExactString(0, EXTENT, "", t);


 archive_string_copy(&u, &t);
 assertExactString(0, EXTENT, "", t);
 assertExactString(0, EXTENT, "", u);


 archive_string_copy(&u, &t);
 assertExactString(0, EXTENT, "", t);
 assertExactString(0, EXTENT, "", u);


 assert(((void*)0) != archive_strcpy(&s, "snafubar"));
 assertExactString(8, EXTENT, "snafubar", s);

 archive_string_copy(&v, &s);
 assertExactString(8, EXTENT, "snafubar", s);
 assertExactString(8, EXTENT, "snafubar", v);


 assertExactString(0, EXTENT, "", t);
 archive_string_copy(&t, &s);
 assertExactString(8, EXTENT, "snafubar", s);
 assertExactString(8, EXTENT, "snafubar", t);


 assert(((void*)0) != archive_strcpy(&s, "fubar"));
 assertExactString(5, EXTENT, "fubar", s);

 archive_string_copy(&t, &s);
 assertExactString(5, EXTENT, "fubar", s);
 assertExactString(5, EXTENT, "fubar", t);

 archive_string_free(&v);
 archive_string_free(&u);
 archive_string_free(&t);
 archive_string_free(&s);
}
