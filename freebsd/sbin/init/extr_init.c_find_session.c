
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int session_t ;
typedef int ret ;
typedef int pid_t ;
struct TYPE_7__ {scalar_t__ (* get ) (TYPE_2__*,TYPE_1__*,TYPE_1__*,int ) ;} ;
struct TYPE_6__ {int size; int * data; } ;
typedef TYPE_1__ DBT ;


 int bcopy (int *,char*,int) ;
 TYPE_2__* session_db ;
 scalar_t__ stub1 (TYPE_2__*,TYPE_1__*,TYPE_1__*,int ) ;

__attribute__((used)) static session_t *
find_session(pid_t pid)
{
 DBT key;
 DBT data;
 session_t *ret;

 key.data = &pid;
 key.size = sizeof pid;
 if ((*session_db->get)(session_db, &key, &data, 0) != 0)
  return 0;
 bcopy(data.data, (char *)&ret, sizeof(ret));
 return ret;
}
