
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string {char* s; void* length; } ;


 int archive_strncpy (struct archive_string*,char*,size_t) ;
 char* strchr (char*,char) ;
 void* strlen (char*) ;

__attribute__((used)) static int
lha_parse_linkname(struct archive_string *linkname,
    struct archive_string *pathname)
{
 char * linkptr;
 size_t symlen;

 linkptr = strchr(pathname->s, '|');
 if (linkptr != ((void*)0)) {
  symlen = strlen(linkptr + 1);
  archive_strncpy(linkname, linkptr+1, symlen);

  *linkptr = 0;
  pathname->length = strlen(pathname->s);

  return (1);
 }
 return (0);
}
