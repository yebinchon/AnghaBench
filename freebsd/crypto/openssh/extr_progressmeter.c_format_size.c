
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int snprintf (char*,int,char*,long long,char,char*) ;
 char* unit ;

__attribute__((used)) static void
format_size(char *buf, int size, off_t bytes)
{
 int i;

 for (i = 0; bytes >= 10000 && unit[i] != 'T'; i++)
  bytes = (bytes + 512) / 1024;
 snprintf(buf, size, "%4lld%c%s",
     (long long) bytes,
     unit[i],
     i ? "B" : " ");
}
