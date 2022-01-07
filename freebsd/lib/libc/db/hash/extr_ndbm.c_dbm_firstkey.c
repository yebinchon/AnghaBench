
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int dsize; int * dptr; } ;
typedef TYPE_1__ datum ;
struct TYPE_11__ {int (* seq ) (TYPE_3__*,TYPE_2__*,TYPE_2__*,int ) ;} ;
struct TYPE_10__ {int size; int * data; } ;
typedef TYPE_2__ DBT ;
typedef TYPE_3__ DBM ;


 int R_FIRST ;
 int stub1 (TYPE_3__*,TYPE_2__*,TYPE_2__*,int ) ;

extern datum
dbm_firstkey(DBM *db)
{
 int status;
 datum retkey;
 DBT dbtretkey, dbtretdata;

 status = (db->seq)(db, &dbtretkey, &dbtretdata, R_FIRST);
 if (status)
  dbtretkey.data = ((void*)0);
 retkey.dptr = dbtretkey.data;
 retkey.dsize = dbtretkey.size;
 return (retkey);
}
