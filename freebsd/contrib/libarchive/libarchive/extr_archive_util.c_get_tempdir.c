
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string {char* s; int length; } ;


 int ARCHIVE_OK ;
 char* _PATH_TMP ;
 int archive_strappend_char (struct archive_string*,char) ;
 int archive_strcpy (struct archive_string*,char const*) ;
 char* getenv (char*) ;

__attribute__((used)) static int
get_tempdir(struct archive_string *temppath)
{
 const char *tmp;

 tmp = getenv("TMPDIR");
 if (tmp == ((void*)0))



                tmp = "/tmp";

 archive_strcpy(temppath, tmp);
 if (temppath->s[temppath->length-1] != '/')
  archive_strappend_char(temppath, '/');
 return (ARCHIVE_OK);
}
