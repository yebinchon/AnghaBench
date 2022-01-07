
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string {int dummy; } ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_EXTRACT_SECURE_NOABSOLUTEPATHS ;
 int ARCHIVE_EXTRACT_SECURE_NODOTDOT ;
 int ARCHIVE_FAILED ;
 int ARCHIVE_OK ;
 int cleanup_pathname_win (char*) ;
 int fsobj_error (int*,struct archive_string*,int ,char*,char*) ;

__attribute__((used)) static int
cleanup_pathname_fsobj(char *path, int *a_eno, struct archive_string *a_estr,
    int flags)
{
 char *dest, *src;
 char separator = '\0';

 dest = src = path;
 if (*src == '\0') {
  fsobj_error(a_eno, a_estr, ARCHIVE_ERRNO_MISC,
      "Invalid empty ", "pathname");
  return (ARCHIVE_FAILED);
 }





 if (*src == '/') {
  if (flags & ARCHIVE_EXTRACT_SECURE_NOABSOLUTEPATHS) {
   fsobj_error(a_eno, a_estr, ARCHIVE_ERRNO_MISC,
       "Path is ", "absolute");
   return (ARCHIVE_FAILED);
  }

  separator = *src++;
 }


 for (;;) {

  if (src[0] == '\0') {
   break;
  } else if (src[0] == '/') {

   src++;
   continue;
  } else if (src[0] == '.') {
   if (src[1] == '\0') {

    break;
   } else if (src[1] == '/') {

    src += 2;
    continue;
   } else if (src[1] == '.') {
    if (src[2] == '/' || src[2] == '\0') {

     if (flags
         & ARCHIVE_EXTRACT_SECURE_NODOTDOT) {
      fsobj_error(a_eno, a_estr,
          ARCHIVE_ERRNO_MISC,
          "Path contains ", "'..'");
      return (ARCHIVE_FAILED);
     }
    }







   }
  }


  if (separator)
   *dest++ = '/';
  while (*src != '\0' && *src != '/') {
   *dest++ = *src++;
  }

  if (*src == '\0')
   break;


  separator = *src++;
 }




 if (dest == path) {




  if (separator)
   *dest++ = '/';
  else
   *dest++ = '.';
 }

 *dest = '\0';
 return (ARCHIVE_OK);
}
