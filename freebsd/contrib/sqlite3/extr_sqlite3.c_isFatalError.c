
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ALWAYS (int) ;
 int SQLITE_BUSY ;
 int SQLITE_LOCKED ;
 int SQLITE_OK ;

__attribute__((used)) static int isFatalError(int rc){
  return (rc!=SQLITE_OK && rc!=SQLITE_BUSY && ALWAYS(rc!=SQLITE_LOCKED));
}
