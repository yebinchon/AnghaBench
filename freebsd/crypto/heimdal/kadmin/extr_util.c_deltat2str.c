
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int INT_MAX ;
 int snprintf (char*,size_t,char*) ;
 int unparse_time (unsigned int,char*,size_t) ;

void
deltat2str(unsigned t, char *str, size_t len)
{
    if(t == 0 || t == INT_MAX)
 snprintf(str, len, "unlimited");
    else
 unparse_time(t, str, len);
}
