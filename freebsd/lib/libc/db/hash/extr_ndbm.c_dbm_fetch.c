
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ dsize; int * dptr; } ;
typedef TYPE_1__ datum ;
struct TYPE_12__ {int (* get ) (TYPE_3__*,TYPE_2__*,TYPE_2__*,int ) ;} ;
struct TYPE_11__ {scalar_t__ size; int * data; } ;
typedef TYPE_2__ DBT ;
typedef TYPE_3__ DBM ;


 int stub1 (TYPE_3__*,TYPE_2__*,TYPE_2__*,int ) ;

extern datum
dbm_fetch(DBM *db, datum key)
{
 datum retdata;
 int status;
 DBT dbtkey, dbtretdata;

 dbtkey.data = key.dptr;
 dbtkey.size = key.dsize;
 status = (db->get)(db, &dbtkey, &dbtretdata, 0);
 if (status) {
  dbtretdata.data = ((void*)0);
  dbtretdata.size = 0;
 }
 retdata.dptr = dbtretdata.data;
 retdata.dsize = dbtretdata.size;
 return (retdata);
}
