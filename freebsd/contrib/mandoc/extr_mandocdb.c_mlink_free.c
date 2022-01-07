
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlink {struct mlink* fsec; struct mlink* name; struct mlink* arch; struct mlink* dsec; } ;


 int free (struct mlink*) ;

__attribute__((used)) static void
mlink_free(struct mlink *mlink)
{

 free(mlink->dsec);
 free(mlink->arch);
 free(mlink->name);
 free(mlink->fsec);
 free(mlink);
}
