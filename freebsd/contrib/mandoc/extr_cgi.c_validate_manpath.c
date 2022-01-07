
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct req {size_t psz; int * p; } ;


 int strcmp (char const*,int ) ;

__attribute__((used)) static int
validate_manpath(const struct req *req, const char* manpath)
{
 size_t i;

 for (i = 0; i < req->psz; i++)
  if ( ! strcmp(manpath, req->p[i]))
   return 1;

 return 0;
}
