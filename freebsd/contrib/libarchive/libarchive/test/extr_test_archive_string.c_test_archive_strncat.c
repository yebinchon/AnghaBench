
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string {int dummy; } ;


 int EXTENT ;
 int archive_string_free (struct archive_string*) ;
 int archive_string_init (struct archive_string*) ;
 struct archive_string* archive_strncat (struct archive_string*,char*,int) ;
 int assert (int) ;
 int assertExactString (int,int ,char*,struct archive_string) ;

__attribute__((used)) static void
test_archive_strncat(void)
{
 struct archive_string s;

 archive_string_init(&s);
 assertExactString(0, 0, ((void*)0), s);


 assert(&s == archive_strncat(&s, "snafu", 5));
 assertExactString(5, EXTENT, "snafu", s);


 assert(&s == archive_strncat(&s, "barbazqux", 3));
 assertExactString(8, EXTENT, "snafubar", s);


 assert(&s == archive_strncat(&s, "snafu", 8));
 assertExactString(13, EXTENT, "snafubarsnafu", s);

 archive_string_free(&s);
}
