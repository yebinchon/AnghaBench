
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;
struct archive_entry {int dummy; } ;
typedef int ssize_t ;


 char* archive_entry_acl_to_text (struct archive_entry*,int *,int) ;
 char* archive_entry_acl_to_text_w (struct archive_entry*,int *,int) ;
 int assertEqualInt (int ,int ) ;
 int assertEqualString (char*,char const*) ;
 int assertEqualWString (char*,char*) ;
 char* convert_s_to_ws (char const*) ;
 int free (char*) ;
 int strlen (char*) ;
 int wcslen (char*) ;

__attribute__((used)) static void
compare_acl_text(struct archive_entry *ae, int flags, const char *s)
{
 char *text;
 wchar_t *wtext;
 wchar_t *ws;
 ssize_t slen;

 ws = convert_s_to_ws(s);

 text = archive_entry_acl_to_text(ae, &slen, flags);
 assertEqualString(text, s);
 if (text != ((void*)0))
  assertEqualInt(strlen(text), slen);
 wtext = archive_entry_acl_to_text_w(ae, &slen, flags);
 assertEqualWString(wtext, ws);
 if (wtext != ((void*)0)) {
  assertEqualInt(wcslen(wtext), slen);
 }
 free(text);
 free(wtext);
 free(ws);
}
