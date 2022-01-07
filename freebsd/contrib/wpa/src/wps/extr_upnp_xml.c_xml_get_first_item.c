
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isgraph (char const) ;
 int os_memcpy (char*,char const*,int) ;
 int os_strlen (char const*) ;
 int os_strncasecmp (char const*,char const*,int) ;
 char* os_zalloc (int) ;
 scalar_t__ xml_next_tag (char const*,char const**,char const**,char const**) ;

char * xml_get_first_item(const char *doc, const char *item)
{
 const char *match = item;
 int match_len = os_strlen(item);
 const char *tag, *tagname, *end;
 char *value;






 for (;;) {
  if (xml_next_tag(doc, &tag, &tagname, &end))
   return ((void*)0);
  doc = end;
  if (!os_strncasecmp(tagname, match, match_len) &&
      *tag != '/' &&
      (tagname[match_len] == '>' ||
       !isgraph(tagname[match_len]))) {
   break;
  }
 }
 end = doc;
 while (*end && *end != '<')
  end++;
 value = os_zalloc(1 + (end - doc));
 if (value == ((void*)0))
  return ((void*)0);
 os_memcpy(value, doc, end - doc);
 return value;
}
