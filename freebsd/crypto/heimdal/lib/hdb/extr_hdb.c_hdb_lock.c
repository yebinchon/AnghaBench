
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_error_code ;


 scalar_t__ EWOULDBLOCK ;
 int HDB_ERR_CANT_LOCK_DB ;
 int HDB_ERR_DB_INUSE ;
 int HDB_RLOCK ;
 int LOCK_EX ;
 int LOCK_NB ;
 int LOCK_SH ;
 scalar_t__ errno ;
 int flock (int,int) ;
 int sleep (int) ;

krb5_error_code
hdb_lock(int fd, int operation)
{
    int i, code = 0;

    for(i = 0; i < 3; i++){
 code = flock(fd, (operation == HDB_RLOCK ? LOCK_SH : LOCK_EX) | LOCK_NB);
 if(code == 0 || errno != EWOULDBLOCK)
     break;
 sleep(1);
    }
    if(code == 0)
 return 0;
    if(errno == EWOULDBLOCK)
 return HDB_ERR_DB_INUSE;
    return HDB_ERR_CANT_LOCK_DB;
}
