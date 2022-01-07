
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int sqlite3 ;
typedef int krb5_context ;


 int SQLITE_BUSY ;
 int SQLITE_IOERR_BLOCKED ;
 int SQLITE_LOCKED ;
 scalar_t__ getpid () ;
 int krb5_warnx (int ,char*,int) ;
 int sleep (int) ;
 int sqlite3_step (int *) ;

__attribute__((used)) static int
hdb_sqlite_step(krb5_context context, sqlite3 *db, sqlite3_stmt *stmt)
{
    int ret;

    ret = sqlite3_step(stmt);
    while(((ret == SQLITE_BUSY) ||
           (ret == SQLITE_IOERR_BLOCKED) ||
           (ret == SQLITE_LOCKED))) {
 krb5_warnx(context, "hdb-sqlite: step busy: %d", (int)getpid());
        sleep(1);
        ret = sqlite3_step(stmt);
    }
    return ret;
}
