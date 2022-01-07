
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGER_LOCKINGMODE_EXCLUSIVE ;
 int PAGER_LOCKINGMODE_NORMAL ;
 int PAGER_LOCKINGMODE_QUERY ;
 scalar_t__ sqlite3StrICmp (char const*,char*) ;

__attribute__((used)) static int getLockingMode(const char *z){
  if( z ){
    if( 0==sqlite3StrICmp(z, "exclusive") ) return PAGER_LOCKINGMODE_EXCLUSIVE;
    if( 0==sqlite3StrICmp(z, "normal") ) return PAGER_LOCKINGMODE_NORMAL;
  }
  return PAGER_LOCKINGMODE_QUERY;
}
