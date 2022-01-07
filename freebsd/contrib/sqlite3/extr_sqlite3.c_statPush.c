
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int tRowcnt ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_12__ {int* anEq; int* anLt; int iHash; int isPSample; int iCol; int * anDLt; } ;
struct TYPE_11__ {int nCol; scalar_t__ nRow; int iPrn; int nPSample; TYPE_2__ current; int * aBest; int db; } ;
typedef TYPE_1__ Stat4Accum ;


 scalar_t__ SQLITE_INTEGER ;
 int UNUSED_PARAMETER (int) ;
 int assert (int) ;
 int sampleCopy (TYPE_1__*,int *,TYPE_2__*) ;
 int sampleInsert (TYPE_1__*,TYPE_2__*,int) ;
 scalar_t__ sampleIsBetterPost (TYPE_1__*,TYPE_2__*,int *) ;
 int samplePushPrevious (TYPE_1__*,int) ;
 int sampleSetRowid (int ,TYPE_2__*,int ,scalar_t__) ;
 int sampleSetRowidInt64 (int ,TYPE_2__*,int ) ;
 scalar_t__ sqlite3_value_blob (int *) ;
 int sqlite3_value_bytes (int *) ;
 int sqlite3_value_int (int *) ;
 int sqlite3_value_int64 (int *) ;
 scalar_t__ sqlite3_value_type (int *) ;

__attribute__((used)) static void statPush(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  int i;


  Stat4Accum *p = (Stat4Accum*)sqlite3_value_blob(argv[0]);
  int iChng = sqlite3_value_int(argv[1]);

  UNUSED_PARAMETER( argc );
  UNUSED_PARAMETER( context );
  assert( p->nCol>0 );
  assert( iChng<p->nCol );

  if( p->nRow==0 ){

    for(i=0; i<p->nCol; i++) p->current.anEq[i] = 1;
  }else{

    samplePushPrevious(p, iChng);



    for(i=0; i<iChng; i++){
      p->current.anEq[i]++;
    }
    for(i=iChng; i<p->nCol; i++){
      p->current.anDLt[i]++;



      p->current.anEq[i] = 1;
    }
  }
  p->nRow++;
}
