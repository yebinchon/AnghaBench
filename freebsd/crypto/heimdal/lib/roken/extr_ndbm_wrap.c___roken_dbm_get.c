
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ dsize; int * dptr; } ;
typedef TYPE_1__ datum ;
struct TYPE_13__ {scalar_t__ (* c_get ) (TYPE_4__*,int *,int *,int) ;} ;
struct TYPE_12__ {int (* seq ) (TYPE_2__*,int *,int *,int) ;int (* cursor ) (TYPE_2__*,int *,TYPE_4__**,int ) ;} ;
typedef int DBT ;
typedef TYPE_2__ DB ;


 int DBT2DATUM (int *,TYPE_1__*) ;
 TYPE_4__* cursor ;
 int stub1 (TYPE_2__*,int *,TYPE_4__**,int ) ;
 scalar_t__ stub2 (TYPE_4__*,int *,int *,int) ;
 int stub3 (TYPE_2__*,int *,int *,int) ;

__attribute__((used)) static datum
dbm_get (DB *db, int flags)
{
    DBT key, value;
    datum datum;
    db->seq(db, &key, &value, flags);
    DBT2DATUM(&value, &datum);

    return datum;
}
