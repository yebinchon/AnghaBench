
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ busy; } ;
struct TYPE_8__ {int flags; TYPE_1__ init; } ;
typedef TYPE_2__ sqlite3 ;
struct TYPE_9__ {int ncFlags; } ;
typedef TYPE_3__ NameContext ;


 int NC_IsDDL ;
 int SQLITE_DqsDDL ;
 int SQLITE_DqsDML ;
 scalar_t__ sqlite3WritableSchema (TYPE_2__*) ;

__attribute__((used)) static int areDoubleQuotedStringsEnabled(sqlite3 *db, NameContext *pTopNC){
  if( db->init.busy ) return 1;
  if( pTopNC->ncFlags & NC_IsDDL ){

    if( sqlite3WritableSchema(db) && (db->flags & SQLITE_DqsDML)!=0 ){
      return 1;
    }
    return (db->flags & SQLITE_DqsDDL)!=0;
  }else{

    return (db->flags & SQLITE_DqsDML)!=0;
  }
}
