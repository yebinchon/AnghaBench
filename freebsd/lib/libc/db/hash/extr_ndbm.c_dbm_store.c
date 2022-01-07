
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int dsize; int dptr; } ;
typedef TYPE_1__ datum ;
struct TYPE_12__ {int (* put ) (TYPE_3__*,TYPE_2__*,TYPE_2__*,int ) ;} ;
struct TYPE_11__ {int size; int data; } ;
typedef TYPE_2__ DBT ;
typedef TYPE_3__ DBM ;


 int DBM_INSERT ;
 int R_NOOVERWRITE ;
 int stub1 (TYPE_3__*,TYPE_2__*,TYPE_2__*,int ) ;

extern int
dbm_store(DBM *db, datum key, datum data, int flags)
{
 DBT dbtkey, dbtdata;

 dbtkey.data = key.dptr;
 dbtkey.size = key.dsize;
 dbtdata.data = data.dptr;
 dbtdata.size = data.dsize;
 return ((db->put)(db, &dbtkey, &dbtdata,
     (flags == DBM_INSERT) ? R_NOOVERWRITE : 0));
}
