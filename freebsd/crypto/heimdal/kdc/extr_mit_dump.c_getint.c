
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* nexttoken (char**) ;
 int sscanf (char*,char*,int*) ;

__attribute__((used)) static int
getint(char **p)
{
    int val;
    char *q = nexttoken(p);
    sscanf(q, "%d", &val);
    return val;
}
