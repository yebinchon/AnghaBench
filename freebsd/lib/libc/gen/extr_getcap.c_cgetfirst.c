
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cgetclose () ;
 int cgetnext (char**,char**) ;

int
cgetfirst(char **buf, char **db_array)
{
 (void)cgetclose();
 return (cgetnext(buf, db_array));
}
