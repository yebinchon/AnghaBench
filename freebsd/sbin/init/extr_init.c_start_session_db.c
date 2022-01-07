
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ (* close ) (TYPE_1__*) ;} ;


 int DB_HASH ;
 int O_RDWR ;
 TYPE_1__* dbopen (int *,int ,int ,int ,int *) ;
 int emergency (char*,int ) ;
 int errno ;
 TYPE_1__* session_db ;
 int strerror (int ) ;
 scalar_t__ stub1 (TYPE_1__*) ;

__attribute__((used)) static int
start_session_db(void)
{
 if (session_db && (*session_db->close)(session_db))
  emergency("session database close: %s", strerror(errno));
 if ((session_db = dbopen(((void*)0), O_RDWR, 0, DB_HASH, ((void*)0))) == ((void*)0)) {
  emergency("session database open: %s", strerror(errno));
  return (1);
 }
 return (0);

}
