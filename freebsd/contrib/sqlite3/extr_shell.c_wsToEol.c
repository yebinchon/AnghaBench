
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IsSpace (char const) ;

__attribute__((used)) static int wsToEol(const char *z){
  int i;
  for(i=0; z[i]; i++){
    if( z[i]=='\n' ) return 1;
    if( IsSpace(z[i]) ) continue;
    if( z[i]=='-' && z[i+1]=='-' ) return 1;
    return 0;
  }
  return 1;
}
