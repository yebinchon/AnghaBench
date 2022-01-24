#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int tRowcnt ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_12__ {int* anEq; int* anLt; int iHash; int isPSample; int iCol; int /*<<< orphan*/ * anDLt; } ;
struct TYPE_11__ {int nCol; scalar_t__ nRow; int iPrn; int nPSample; TYPE_2__ current; int /*<<< orphan*/ * aBest; int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ Stat4Accum ;

/* Variables and functions */
 scalar_t__ SQLITE_INTEGER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  int i;

  /* The three function arguments */
  Stat4Accum *p = (Stat4Accum*)FUNC8(argv[0]);
  int iChng = FUNC10(argv[1]);

  FUNC0( argc );
  FUNC0( *context );
  FUNC1( p->nCol>0 );
  FUNC1( iChng<p->nCol );

  if( p->nRow==0 ){
    /* This is the first call to this function. Do initialization. */
    for(i=0; i<p->nCol; i++) p->current.anEq[i] = 1;
  }else{
    /* Second and subsequent calls get processed here */
    FUNC5(p, iChng);

    /* Update anDLt[], anLt[] and anEq[] to reflect the values that apply
    ** to the current row of the index. */
    for(i=0; i<iChng; i++){
      p->current.anEq[i]++;
    }
    for(i=iChng; i<p->nCol; i++){
      p->current.anDLt[i]++;
#ifdef SQLITE_ENABLE_STAT4
      p->current.anLt[i] += p->current.anEq[i];
#endif
      p->current.anEq[i] = 1;
    }
  }
  p->nRow++;
#ifdef SQLITE_ENABLE_STAT4
  if( sqlite3_value_type(argv[2])==SQLITE_INTEGER ){
    sampleSetRowidInt64(p->db, &p->current, sqlite3_value_int64(argv[2]));
  }else{
    sampleSetRowid(p->db, &p->current, sqlite3_value_bytes(argv[2]),
                                       sqlite3_value_blob(argv[2]));
  }
  p->current.iHash = p->iPrn = p->iPrn*1103515245 + 12345;
#endif

#ifdef SQLITE_ENABLE_STAT4
  {
    tRowcnt nLt = p->current.anLt[p->nCol-1];

    /* Check if this is to be a periodic sample. If so, add it. */
    if( (nLt/p->nPSample)!=(nLt+1)/p->nPSample ){
      p->current.isPSample = 1;
      p->current.iCol = 0;
      sampleInsert(p, &p->current, p->nCol-1);
      p->current.isPSample = 0;
    }

    /* Update the aBest[] array. */
    for(i=0; i<(p->nCol-1); i++){
      p->current.iCol = i;
      if( i>=iChng || sampleIsBetterPost(p, &p->current, &p->aBest[i]) ){
        sampleCopy(p, &p->aBest[i], &p->current);
      }
    }
  }
#endif
}