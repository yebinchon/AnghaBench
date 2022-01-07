
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string {int dummy; } ;


 int EXTENT ;
 struct archive_string* archive_string_ensure (struct archive_string*,int) ;
 int archive_string_free (struct archive_string*) ;
 int archive_string_init (struct archive_string*) ;
 int assert (int) ;
 int assertExactString (int ,int ,int *,struct archive_string) ;
 int assertNonNULLString (int ,int,struct archive_string) ;

__attribute__((used)) static void
test_archive_string_ensure(void)
{
 struct archive_string s;

 archive_string_init(&s);
 assertExactString(0, 0, ((void*)0), s);


 assert(&s == archive_string_ensure(&s, 5));
 assertNonNULLString(0, EXTENT, s);


 assert(&s == archive_string_ensure(&s, EXTENT - 1));
 assertNonNULLString(0, EXTENT, s);

 assert(&s == archive_string_ensure(&s, EXTENT));
 assertNonNULLString(0, EXTENT, s);

 assert(&s == archive_string_ensure(&s, EXTENT + 1));
 assertNonNULLString(0, 2 * EXTENT, s);

 archive_string_free(&s);
}
