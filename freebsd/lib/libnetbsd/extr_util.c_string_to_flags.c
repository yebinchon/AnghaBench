
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int strtofflags (char**,int *,int *) ;

int
string_to_flags(char **stringp, u_long *setp, u_long *clrp)
{

 return strtofflags(stringp, setp, clrp);
}
