
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int getent (char**,int *,char**,int,char const*,int ,int *) ;

int
cgetent(char **buf, char **db_array, const char *name)
{
 u_int dummy;

 return (getent(buf, &dummy, db_array, -1, name, 0, ((void*)0)));
}
