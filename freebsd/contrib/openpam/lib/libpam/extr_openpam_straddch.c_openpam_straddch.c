
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 size_t MIN_STR_SIZE ;
 int PAM_LOG_ERROR ;
 int errno ;
 char* malloc (size_t) ;
 int openpam_log (int ,char*) ;
 char* realloc (char*,size_t) ;

int
openpam_straddch(char **str, size_t *size, size_t *len, int ch)
{
 size_t tmpsize;
 char *tmpstr;

 if (*str == ((void*)0)) {

  tmpsize = MIN_STR_SIZE;
  if ((tmpstr = malloc(tmpsize)) == ((void*)0)) {
   openpam_log(PAM_LOG_ERROR, "malloc(): %m");
   errno = ENOMEM;
   return (-1);
  }
  *str = tmpstr;
  *size = tmpsize;
  *len = 0;
 } else if (ch != 0 && *len + 1 >= *size) {

  tmpsize = *size * 2;
  if ((tmpstr = realloc(*str, tmpsize)) == ((void*)0)) {
   openpam_log(PAM_LOG_ERROR, "realloc(): %m");
   errno = ENOMEM;
   return (-1);
  }
  *size = tmpsize;
  *str = tmpstr;
 }
 if (ch != 0) {
  (*str)[*len] = ch;
  ++*len;
 }
 (*str)[*len] = '\0';
 return (0);
}
