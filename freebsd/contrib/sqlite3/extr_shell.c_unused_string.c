
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sqlite3_snprintf (int,char*,char*,char const*,int ) ;
 scalar_t__ strstr (char const*,char const*) ;

__attribute__((used)) static const char *unused_string(
  const char *z,
  const char *zA, const char *zB,
  char *zBuf
){
  unsigned i = 0;
  if( strstr(z, zA)==0 ) return zA;
  if( strstr(z, zB)==0 ) return zB;
  do{
    sqlite3_snprintf(20,zBuf,"(%s%u)", zA, i++);
  }while( strstr(z,zBuf)!=0 );
  return zBuf;
}
