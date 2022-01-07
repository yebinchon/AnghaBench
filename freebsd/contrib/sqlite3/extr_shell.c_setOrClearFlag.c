
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ShellState ;


 int ShellClearFlag (int *,unsigned int) ;
 int ShellSetFlag (int *,unsigned int) ;
 scalar_t__ booleanValue (char const*) ;

__attribute__((used)) static void setOrClearFlag(ShellState *p, unsigned mFlag, const char *zArg){
  if( booleanValue(zArg) ){
    ShellSetFlag(p, mFlag);
  }else{
    ShellClearFlag(p, mFlag);
  }
}
