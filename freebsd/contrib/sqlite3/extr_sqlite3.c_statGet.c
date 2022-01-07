
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ tRowcnt ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_6__ {int* anDLt; int* anEq; } ;
struct TYPE_9__ {int nKeyCol; int nRow; scalar_t__ iGet; scalar_t__ nSample; int nCol; TYPE_3__* a; TYPE_1__ current; } ;
struct TYPE_7__ {int aRowid; int iRowid; } ;
struct TYPE_8__ {scalar_t__ nRowid; scalar_t__* anDLt; scalar_t__* anLt; scalar_t__* anEq; TYPE_2__ u; } ;
typedef TYPE_3__ Stat4Sample ;
typedef TYPE_4__ Stat4Accum ;


 int SQLITE_TRANSIENT ;
 int STAT_GET_NDLT ;


 int STAT_GET_ROWID ;
 int STAT_GET_STAT1 ;
 int UNUSED_PARAMETER (int) ;
 int assert (int) ;
 int samplePushPrevious (TYPE_4__*,int ) ;
 char* sqlite3MallocZero (int) ;
 int sqlite3Strlen30 (char*) ;
 int sqlite3_free ;
 int sqlite3_result_blob (int *,int ,scalar_t__,int ) ;
 int sqlite3_result_error_nomem (int *) ;
 int sqlite3_result_int64 (int *,int ) ;
 int sqlite3_result_text (int *,char*,int,int ) ;
 int sqlite3_snprintf (int,char*,char*,int) ;
 scalar_t__ sqlite3_value_blob (int *) ;
 int sqlite3_value_int (int *) ;

__attribute__((used)) static void statGet(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  Stat4Accum *p = (Stat4Accum*)sqlite3_value_blob(argv[0]);
  assert( argc==1 );

  {
    char *z;
    int i;

    char *zRet = sqlite3MallocZero( (p->nKeyCol+1)*25 );
    if( zRet==0 ){
      sqlite3_result_error_nomem(context);
      return;
    }

    sqlite3_snprintf(24, zRet, "%llu", (u64)p->nRow);
    z = zRet + sqlite3Strlen30(zRet);
    for(i=0; i<p->nKeyCol; i++){
      u64 nDistinct = p->current.anDLt[i] + 1;
      u64 iVal = (p->nRow + nDistinct - 1) / nDistinct;
      sqlite3_snprintf(24, z, " %llu", iVal);
      z += sqlite3Strlen30(z);
      assert( p->current.anEq[i] );
    }
    assert( z[0]=='\0' && z>zRet );

    sqlite3_result_text(context, zRet, -1, sqlite3_free);
  }
  UNUSED_PARAMETER( argc );

}
