
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 int * fgets (char*,int,int *) ;
 unsigned long page_size ;
 int sscanf (char*,char*,unsigned long*) ;
 int strstr (char*,char*) ;

__attribute__((used)) static unsigned long smaps_page_size(FILE *file)
{
 int n;
 unsigned long size = page_size;
 char buf[1024];

 while (fgets(buf, sizeof(buf), file) != ((void*)0)) {
  if (!strstr(buf, "KernelPageSize:"))
   continue;

  n = sscanf(buf, "%*s %lu", &size);
  if (n < 1)
   continue;


  size = size * 1024;

  break;
 }

 return size;
}
