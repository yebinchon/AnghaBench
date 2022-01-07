
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUFSIZ ;
 int STDIN_FILENO ;
 char* malloc (int) ;
 int read (int ,char*,int) ;
 char* realloc (char*,int) ;

__attribute__((used)) static int
read_stdin (char **buf)
{
 int size = BUFSIZ, remain, ret;
 char *p;

 *buf = malloc (size);
 if (*buf == ((void*)0)) {
  return -1;
 }

 p = *buf;
 remain = size;

 while ((ret = read (STDIN_FILENO, p, remain - 1)) > 0) {
  remain -= ret;
  p += ret;

  if (remain <= 1) {
   *buf = realloc (*buf, size * 2);
   if (*buf == ((void*)0)) {
    return -1;
   }

   p = *buf + size - 1;
   remain = size + 1;
   size *= 2;
  }
 }

 *p = '\0';

 return ret;
}
