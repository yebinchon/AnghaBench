
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atoi (char*) ;
 int printf (char*,char*) ;
 scalar_t__ strncasecmp (char*,char*,int) ;
 int verb ;

__attribute__((used)) static int
process_one_header(char* buf, size_t* clen, int* chunked)
{
 if(verb>=2) printf("header: '%s'\n", buf);
 if(strncasecmp(buf, "HTTP/1.1 ", 9) == 0) {

  if(buf[9] != '2') {
   if(verb) printf("bad status %s\n", buf+9);
   return 0;
  }
 } else if(strncasecmp(buf, "Content-Length: ", 16) == 0) {
  if(!*chunked)
   *clen = (size_t)atoi(buf+16);
 } else if(strncasecmp(buf, "Transfer-Encoding: chunked", 19+7) == 0) {
  *clen = 0;
  *chunked = 1;
 }
 return 1;
}
