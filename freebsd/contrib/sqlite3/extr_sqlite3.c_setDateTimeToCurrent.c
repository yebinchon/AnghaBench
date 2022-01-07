
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_context ;
struct TYPE_3__ {scalar_t__ iJD; int validJD; } ;
typedef TYPE_1__ DateTime ;


 scalar_t__ sqlite3StmtCurrentTime (int *) ;

__attribute__((used)) static int setDateTimeToCurrent(sqlite3_context *context, DateTime *p){
  p->iJD = sqlite3StmtCurrentTime(context);
  if( p->iJD>0 ){
    p->validJD = 1;
    return 0;
  }else{
    return 1;
  }
}
