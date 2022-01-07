
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strncmp (char*,char const*,size_t) ;

__attribute__((used)) static int
cmdcmp(char* p, const char* cmd, size_t len)
{
 return strncmp(p,cmd,len)==0 && (p[len]==0||p[len]==' '||p[len]=='\t');
}
