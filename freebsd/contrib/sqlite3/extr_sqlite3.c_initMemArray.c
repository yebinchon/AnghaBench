
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
typedef int sqlite3 ;
struct TYPE_3__ {scalar_t__ pScopyFrom; scalar_t__ szMalloc; int flags; int * db; } ;
typedef TYPE_1__ Mem ;



__attribute__((used)) static void initMemArray(Mem *p, int N, sqlite3 *db, u16 flags){
  while( (N--)>0 ){
    p->db = db;
    p->flags = flags;
    p->szMalloc = 0;



    p++;
  }
}
