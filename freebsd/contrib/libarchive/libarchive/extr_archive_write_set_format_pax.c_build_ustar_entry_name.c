
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static char *
build_ustar_entry_name(char *dest, const char *src, size_t src_length,
    const char *insert)
{
 const char *prefix, *prefix_end;
 const char *suffix, *suffix_end;
 const char *filename, *filename_end;
 char *p;
 int need_slash = 0;
 size_t suffix_length = 99;
 size_t insert_length;


 if (insert == ((void*)0))
  insert_length = 0;
 else

  insert_length = strlen(insert) + 2;


 if (src_length < 100 && insert == ((void*)0)) {
  strncpy(dest, src, src_length);
  dest[src_length] = '\0';
  return (dest);
 }


 filename_end = src + src_length;

 for (;;) {
  if (filename_end > src && filename_end[-1] == '/') {
   filename_end --;
   need_slash = 1;
   continue;
  }
  if (filename_end > src + 1 && filename_end[-1] == '.'
      && filename_end[-2] == '/') {
   filename_end -= 2;
   need_slash = 1;
   continue;
  }
  break;
 }
 if (need_slash)
  suffix_length--;

 filename = filename_end - 1;
 while ((filename > src) && (*filename != '/'))
  filename --;
 if ((*filename == '/') && (filename < filename_end - 1))
  filename ++;

 suffix_length -= insert_length;
 if (filename_end > filename + suffix_length)
  filename_end = filename + suffix_length;

 suffix_length -= filename_end - filename;



 prefix = src;
 prefix_end = prefix + 155;
 if (prefix_end > filename)
  prefix_end = filename;
 while (prefix_end > prefix && *prefix_end != '/')
  prefix_end--;
 if ((prefix_end < filename) && (*prefix_end == '/'))
  prefix_end++;



 suffix = prefix_end;
 suffix_end = suffix + suffix_length;
 if (suffix_end > filename)
  suffix_end = filename;
 if (suffix_end < suffix)
  suffix_end = suffix;
 while (suffix_end > suffix && *suffix_end != '/')
  suffix_end--;
 if ((suffix_end < filename) && (*suffix_end == '/'))
  suffix_end++;




 p = dest;
 if (prefix_end > prefix) {
  strncpy(p, prefix, prefix_end - prefix);
  p += prefix_end - prefix;
 }
 if (suffix_end > suffix) {
  strncpy(p, suffix, suffix_end - suffix);
  p += suffix_end - suffix;
 }
 if (insert != ((void*)0)) {

  strcpy(p, insert);
  p += strlen(insert);
  *p++ = '/';
 }
 strncpy(p, filename, filename_end - filename);
 p += filename_end - filename;
 if (need_slash)
  *p++ = '/';
 *p = '\0';

 return (dest);
}
