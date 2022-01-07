
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ internal; } ;
struct TYPE_4__ {scalar_t__ error; } ;
typedef TYPE_1__ HTAB ;
typedef TYPE_2__ DBM ;



extern int
dbm_clearerr(DBM *db)
{
 HTAB *hp;

 hp = (HTAB *)db->internal;
 hp->error = 0;
 return (0);
}
