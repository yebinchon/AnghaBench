
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int numhosts ;
 scalar_t__ openhost (char*,int) ;

int
ntpq_openhost(
 char *hostname,
 int fam
 )
{
 if ( openhost(hostname, fam) )
 {
  numhosts = 1;
 } else {
  numhosts = 0;
 }

 return numhosts;

}
