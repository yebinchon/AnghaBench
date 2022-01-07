
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nCol; int mxSample; int db; int current; int * a; int * aBest; } ;
typedef TYPE_1__ Stat4Accum ;


 int sampleClear (int ,int *) ;
 int sqlite3DbFree (int ,TYPE_1__*) ;

__attribute__((used)) static void stat4Destructor(void *pOld){
  Stat4Accum *p = (Stat4Accum*)pOld;






  sqlite3DbFree(p->db, p);
}
