
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int alist_t ;


 int * load_file (char*) ;
 int * load_http (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

alist_t *
load_url(char *url)
{
 alist_t *hosts = ((void*)0);

 if (strncmp(url, "file://", 7) == 0) {




  hosts = load_file(url);

 } else if (*url == '/' || *url == '.') {
  hosts = load_file(url);

 } else if (strncmp(url, "http://", 7) == 0) {
  hosts = load_http(url);
 }

 return hosts;
}
