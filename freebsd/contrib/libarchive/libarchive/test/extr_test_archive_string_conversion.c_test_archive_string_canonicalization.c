
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string_conv {int dummy; } ;
struct archive {int dummy; } ;


 int ARCHIVE_OK ;
 int LC_ALL ;
 int archive_read_free (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_string_conversion_charset_name (struct archive_string_conv*) ;
 struct archive_string_conv* archive_string_conversion_to_charset (struct archive*,char*,int) ;
 int assert (int ) ;
 int assertA (int) ;
 int assertEqualInt (int ,int ) ;
 int assertEqualString (char*,int ) ;
 int failure (char*) ;
 int setlocale (int ,char*) ;

__attribute__((used)) static void
test_archive_string_canonicalization(void)
{
 struct archive *a;
 struct archive_string_conv *sconv;

 setlocale(LC_ALL, "en_US.UTF-8");

 assert((a = archive_read_new()) != ((void*)0));

 assertA(((void*)0) != (sconv =
     archive_string_conversion_to_charset(a, "UTF-8", 1)));
 failure("Charset name should be UTF-8");
 assertEqualString("UTF-8",
     archive_string_conversion_charset_name(sconv));

 assertA(((void*)0) != (sconv =
     archive_string_conversion_to_charset(a, "UTF8", 1)));
 failure("Charset name should be UTF-8");
 assertEqualString("UTF-8",
     archive_string_conversion_charset_name(sconv));

 assertA(((void*)0) != (sconv =
     archive_string_conversion_to_charset(a, "utf8", 1)));
 failure("Charset name should be UTF-8");
 assertEqualString("UTF-8",
     archive_string_conversion_charset_name(sconv));

 assertA(((void*)0) != (sconv =
     archive_string_conversion_to_charset(a, "UTF-16BE", 1)));
 failure("Charset name should be UTF-16BE");
 assertEqualString("UTF-16BE",
     archive_string_conversion_charset_name(sconv));

 assertA(((void*)0) != (sconv =
     archive_string_conversion_to_charset(a, "UTF16BE", 1)));
 failure("Charset name should be UTF-16BE");
 assertEqualString("UTF-16BE",
     archive_string_conversion_charset_name(sconv));

 assertA(((void*)0) != (sconv =
     archive_string_conversion_to_charset(a, "utf16be", 1)));
 failure("Charset name should be UTF-16BE");
 assertEqualString("UTF-16BE",
     archive_string_conversion_charset_name(sconv));

 assertA(((void*)0) != (sconv =
     archive_string_conversion_to_charset(a, "UTF-16LE", 1)));
 failure("Charset name should be UTF-16LE");
 assertEqualString("UTF-16LE",
     archive_string_conversion_charset_name(sconv));

 assertA(((void*)0) != (sconv =
     archive_string_conversion_to_charset(a, "UTF16LE", 1)));
 failure("Charset name should be UTF-16LE");
 assertEqualString("UTF-16LE",
     archive_string_conversion_charset_name(sconv));

 assertA(((void*)0) != (sconv =
     archive_string_conversion_to_charset(a, "utf16le", 1)));
 failure("Charset name should be UTF-16LE");
 assertEqualString("UTF-16LE",
     archive_string_conversion_charset_name(sconv));

 assertEqualInt(ARCHIVE_OK, archive_read_free(a));

}
