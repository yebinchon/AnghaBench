
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int ARCHIVE_EOF ;
 int ARCHIVE_OK ;
 char* archive_entry_pathname_utf8 (struct archive_entry*) ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 int assert (int ) ;
 int assertEqualIntA (struct archive*,int ,int ) ;
 int assertEqualUTF8String (char const*,char*) ;

__attribute__((used)) static void
verify(struct archive *a) {
 struct archive_entry *ae;
 const char *p;

 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assert((p = archive_entry_pathname_utf8(ae)) != ((void*)0));
 assertEqualUTF8String(p, "File 1.txt");

 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assert((p = archive_entry_pathname_utf8(ae)) != ((void*)0));





 assertEqualUTF8String(p, "File 2 - \xC3\xB6.txt");


 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assert((p = archive_entry_pathname_utf8(ae)) != ((void*)0));





 assertEqualUTF8String(p, "File 3 - \xC3\xA4.txt");



 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assert((p = archive_entry_pathname_utf8(ae)) != ((void*)0));
 assertEqualUTF8String(p, "File 4 - xx.txt");

 assertEqualIntA(a, ARCHIVE_EOF, archive_read_next_header(a, &ae));
}
