
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;


 int SQLITE_BUSY ;
 int SQLITE_IOERR_BLOCKED ;
 int SQLITE_LOCKED ;
 int SQLITE_OK ;
 scalar_t__ getpid () ;
 int krb5_set_error_message (int ,scalar_t__,char*,char const*,int ) ;
 int krb5_warnx (int ,char*,int) ;
 int sleep (int) ;
 int sqlite3_errmsg (int *) ;
 int sqlite3_exec (int *,char const*,int *,int *,int *) ;

__attribute__((used)) static krb5_error_code
hdb_sqlite_exec_stmt(krb5_context context,
                     sqlite3 *database,
                     const char *statement,
                     krb5_error_code error_code)
{
    int ret;

    ret = sqlite3_exec(database, statement, ((void*)0), ((void*)0), ((void*)0));

    while(((ret == SQLITE_BUSY) ||
           (ret == SQLITE_IOERR_BLOCKED) ||
           (ret == SQLITE_LOCKED))) {
 krb5_warnx(context, "hdb-sqlite: exec busy: %d", (int)getpid());
        sleep(1);
        ret = sqlite3_exec(database, statement, ((void*)0), ((void*)0), ((void*)0));
    }

    if (ret != SQLITE_OK && error_code) {
        krb5_set_error_message(context, error_code,
          "Execute %s: %s", statement,
                              sqlite3_errmsg(database));
        return error_code;
    }

    return 0;
}
