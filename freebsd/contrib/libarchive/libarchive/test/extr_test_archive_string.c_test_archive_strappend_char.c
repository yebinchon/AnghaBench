
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string {int dummy; } ;


 int EXTENT ;
 int archive_strappend_char (struct archive_string*,char) ;
 int archive_string_free (struct archive_string*) ;
 int archive_string_init (struct archive_string*) ;
 int assertExactString (int,int ,char*,struct archive_string) ;

__attribute__((used)) static void
test_archive_strappend_char(void)
{
 struct archive_string s;

 archive_string_init(&s);
 assertExactString(0, 0, ((void*)0), s);


 archive_strappend_char(&s, 'X');
 assertExactString(1, EXTENT, "X", s);


 archive_strappend_char(&s, 'Y');
 assertExactString(2, EXTENT, "XY", s);

 archive_string_free(&s);
}
