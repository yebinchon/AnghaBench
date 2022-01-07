
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int se_process; } ;
typedef TYPE_1__ session_t ;
struct TYPE_9__ {scalar_t__ (* del ) (TYPE_3__*,TYPE_2__*,int ) ;} ;
struct TYPE_8__ {int size; int * data; } ;
typedef TYPE_2__ DBT ;


 int emergency (char*,int ,int ) ;
 int errno ;
 TYPE_3__* session_db ;
 int strerror (int ) ;
 scalar_t__ stub1 (TYPE_3__*,TYPE_2__*,int ) ;

__attribute__((used)) static void
del_session(session_t *sp)
{
 DBT key;

 key.data = &sp->se_process;
 key.size = sizeof sp->se_process;

 if ((*session_db->del)(session_db, &key, 0))
  emergency("delete %d: %s", sp->se_process, strerror(errno));
}
