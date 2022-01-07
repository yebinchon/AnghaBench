
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct url {struct url* doc; } ;


 int free (struct url*) ;

void
fetchFreeURL(struct url *u)
{
 free(u->doc);
 free(u);
}
