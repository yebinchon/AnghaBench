
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REQUIRE (int) ;
 int readlink (char*,char*,int) ;

void
followlink(
 char * fname,
 size_t bufsiz
 )
{
 int len;

 REQUIRE(bufsiz > 0);

 len = readlink(fname, fname, (int)bufsiz);
 if (len < 0 ) {
  fname[0] = '\0';
  return;
 }
 if (len > (int)bufsiz - 1)
  len = (int)bufsiz - 1;
 fname[len] = '\0';
}
