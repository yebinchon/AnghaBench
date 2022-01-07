
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gmesh {int dummy; } ;


 int errno ;
 int free (char*) ;
 char* geom_getxml () ;
 int geom_xml2tree (struct gmesh*,char*) ;

int
geom_gettree(struct gmesh *gmp)
{
 char *p;
 int error;

 p = geom_getxml();
 if (p == ((void*)0))
  return (errno);
 error = geom_xml2tree(gmp, p);
 free(p);
 return (error);
}
