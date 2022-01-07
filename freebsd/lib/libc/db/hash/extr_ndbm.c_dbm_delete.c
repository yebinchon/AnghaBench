
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int dsize; int dptr; } ;
typedef TYPE_1__ datum ;
struct TYPE_10__ {int (* del ) (TYPE_3__*,TYPE_2__*,int ) ;} ;
struct TYPE_9__ {int size; int data; } ;
typedef TYPE_2__ DBT ;
typedef TYPE_3__ DBM ;


 int stub1 (TYPE_3__*,TYPE_2__*,int ) ;

extern int
dbm_delete(DBM *db, datum key)
{
 int status;
 DBT dbtkey;

 dbtkey.data = key.dptr;
 dbtkey.size = key.dsize;
 status = (db->del)(db, &dbtkey, 0);
 if (status)
  return (-1);
 else
  return (0);
}
