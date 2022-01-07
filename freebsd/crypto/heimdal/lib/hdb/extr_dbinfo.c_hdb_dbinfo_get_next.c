
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdb_dbinfo {struct hdb_dbinfo* next; } ;



struct hdb_dbinfo *
hdb_dbinfo_get_next(struct hdb_dbinfo *dbp, struct hdb_dbinfo *dbprevp)
{
    if (dbprevp == ((void*)0))
 return dbp;
    else
 return dbprevp->next;
}
