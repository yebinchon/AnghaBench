
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct files_state {TYPE_1__* db; } ;
struct TYPE_3__ {int (* close ) (TYPE_1__*) ;} ;
typedef TYPE_1__ DB ;


 int free (void*) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void
files_endstate(void *p)
{
 DB *db;

 if (p == ((void*)0))
  return;
 db = ((struct files_state *)p)->db;
 if (db != ((void*)0))
  db->close(db);
 free(p);
}
