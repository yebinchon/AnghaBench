
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {struct TYPE_9__* se_process; } ;
typedef TYPE_1__ session_t ;
struct TYPE_11__ {scalar_t__ (* put ) (TYPE_3__*,TYPE_2__*,TYPE_2__*,int ) ;} ;
struct TYPE_10__ {int size; TYPE_1__** data; } ;
typedef TYPE_2__ DBT ;


 int emergency (char*,TYPE_1__*,int ) ;
 int errno ;
 TYPE_3__* session_db ;
 int strerror (int ) ;
 scalar_t__ stub1 (TYPE_3__*,TYPE_2__*,TYPE_2__*,int ) ;

__attribute__((used)) static void
add_session(session_t *sp)
{
 DBT key;
 DBT data;

 key.data = &sp->se_process;
 key.size = sizeof sp->se_process;
 data.data = &sp;
 data.size = sizeof sp;

 if ((*session_db->put)(session_db, &key, &data, 0))
  emergency("insert %d: %s", sp->se_process, strerror(errno));
}
