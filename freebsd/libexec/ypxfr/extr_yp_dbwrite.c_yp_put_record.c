
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* put ) (TYPE_1__*,int *,int *,int ) ;int (* close ) (TYPE_1__*) ;} ;
typedef int DBT ;
typedef TYPE_1__ DB ;


 int R_NOOVERWRITE ;
 int YP_BADDB ;
 int YP_FALSE ;
 int YP_TRUE ;
 int stub1 (TYPE_1__*,int *,int *,int ) ;
 int stub2 (TYPE_1__*) ;

int
yp_put_record(DB *dbp, DBT *key, DBT *data, int allow_overwrite)
{
 int rval;

 if ((rval = (dbp->put)(dbp,key,data, allow_overwrite ? 0 :
       R_NOOVERWRITE))) {
  switch (rval) {
  case 1:
   return(YP_FALSE);
   break;
  case -1:
  default:
   (void)(dbp->close)(dbp);
   return(YP_BADDB);
   break;
  }
 }

 return(YP_TRUE);
}
