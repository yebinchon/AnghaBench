
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int htons (int) ;
 int sscanf (char const*,char*,int*) ;

__attribute__((used)) static int
init_port(const char *s, int fallback)
{
    if (s) {
 int tmp;

 sscanf (s, "%d", &tmp);
 return htons(tmp);
    } else
 return fallback;
}
