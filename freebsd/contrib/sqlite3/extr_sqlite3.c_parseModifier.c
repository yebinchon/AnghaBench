
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef size_t u8 ;
typedef int tx ;
typedef int sqlite3_int64 ;
typedef int sqlite3_context ;
struct TYPE_13__ {int iJD; double s; int validJD; int tzSet; int validHMS; int D; int M; int Y; int validTZ; int rawS; int m; int h; int validYMD; } ;
struct TYPE_12__ {int nName; char const* zName; double rLimit; double rXform; int eType; } ;
typedef TYPE_1__ DateTime ;


 int ArraySize (TYPE_10__*) ;
 int SQLITE_OK ;
 int SQLITE_UTF8 ;
 TYPE_10__* aXformType ;
 int clearYMD_HMS_TZ (TYPE_1__*) ;
 int computeJD (TYPE_1__*) ;
 int computeYMD (TYPE_1__*) ;
 int computeYMD_HMS (TYPE_1__*) ;
 int localtimeOffset (TYPE_1__*,int *,int*) ;
 int memset (TYPE_1__*,int ,int) ;
 int parseHhMmSs (char const*,TYPE_1__*) ;
 int sqlite3AtoF (char const*,double*,int,int ) ;
 int sqlite3Isdigit (char const) ;
 int sqlite3Isspace (char const) ;
 int sqlite3NotPureFunc (int *) ;
 int sqlite3Strlen30 (char const*) ;
 int* sqlite3UpperToLower ;
 int sqlite3_stricmp (char const*,char*) ;
 int sqlite3_strnicmp (char const*,char const*,int) ;

__attribute__((used)) static int parseModifier(
  sqlite3_context *pCtx,
  const char *z,
  int n,
  DateTime *p
){
  int rc = 1;
  double r;
  switch(sqlite3UpperToLower[(u8)z[0]] ){

    case 'l': {





      if( sqlite3_stricmp(z, "localtime")==0 && sqlite3NotPureFunc(pCtx) ){
        computeJD(p);
        p->iJD += localtimeOffset(p, pCtx, &rc);
        clearYMD_HMS_TZ(p);
      }
      break;
    }

    case 'u': {






      if( sqlite3_stricmp(z, "unixepoch")==0 && p->rawS ){
        r = p->s*1000.0 + 210866760000000.0;
        if( r>=0.0 && r<464269060800000.0 ){
          clearYMD_HMS_TZ(p);
          p->iJD = (sqlite3_int64)r;
          p->validJD = 1;
          p->rawS = 0;
          rc = 0;
        }
      }

      else if( sqlite3_stricmp(z, "utc")==0 && sqlite3NotPureFunc(pCtx) ){
        if( p->tzSet==0 ){
          sqlite3_int64 c1;
          computeJD(p);
          c1 = localtimeOffset(p, pCtx, &rc);
          if( rc==SQLITE_OK ){
            p->iJD -= c1;
            clearYMD_HMS_TZ(p);
            p->iJD += c1 - localtimeOffset(p, pCtx, &rc);
          }
          p->tzSet = 1;
        }else{
          rc = SQLITE_OK;
        }
      }

      break;
    }
    case 'w': {







      if( sqlite3_strnicmp(z, "weekday ", 8)==0
               && sqlite3AtoF(&z[8], &r, sqlite3Strlen30(&z[8]), SQLITE_UTF8)>0
               && (n=(int)r)==r && n>=0 && r<7 ){
        sqlite3_int64 Z;
        computeYMD_HMS(p);
        p->validTZ = 0;
        p->validJD = 0;
        computeJD(p);
        Z = ((p->iJD + 129600000)/86400000) % 7;
        if( Z>n ) Z -= 7;
        p->iJD += (n - Z)*86400000;
        clearYMD_HMS_TZ(p);
        rc = 0;
      }
      break;
    }
    case 's': {






      if( sqlite3_strnicmp(z, "start of ", 9)!=0 ) break;
      if( !p->validJD && !p->validYMD && !p->validHMS ) break;
      z += 9;
      computeYMD(p);
      p->validHMS = 1;
      p->h = p->m = 0;
      p->s = 0.0;
      p->rawS = 0;
      p->validTZ = 0;
      p->validJD = 0;
      if( sqlite3_stricmp(z,"month")==0 ){
        p->D = 1;
        rc = 0;
      }else if( sqlite3_stricmp(z,"year")==0 ){
        p->M = 1;
        p->D = 1;
        rc = 0;
      }else if( sqlite3_stricmp(z,"day")==0 ){
        rc = 0;
      }
      break;
    }
    case '+':
    case '-':
    case '0':
    case '1':
    case '2':
    case '3':
    case '4':
    case '5':
    case '6':
    case '7':
    case '8':
    case '9': {
      double rRounder;
      int i;
      for(n=1; z[n] && z[n]!=':' && !sqlite3Isspace(z[n]); n++){}
      if( sqlite3AtoF(z, &r, n, SQLITE_UTF8)<=0 ){
        rc = 1;
        break;
      }
      if( z[n]==':' ){





        const char *z2 = z;
        DateTime tx;
        sqlite3_int64 day;
        if( !sqlite3Isdigit(*z2) ) z2++;
        memset(&tx, 0, sizeof(tx));
        if( parseHhMmSs(z2, &tx) ) break;
        computeJD(&tx);
        tx.iJD -= 43200000;
        day = tx.iJD/86400000;
        tx.iJD -= day*86400000;
        if( z[0]=='-' ) tx.iJD = -tx.iJD;
        computeJD(p);
        clearYMD_HMS_TZ(p);
        p->iJD += tx.iJD;
        rc = 0;
        break;
      }



      z += n;
      while( sqlite3Isspace(*z) ) z++;
      n = sqlite3Strlen30(z);
      if( n>10 || n<3 ) break;
      if( sqlite3UpperToLower[(u8)z[n-1]]=='s' ) n--;
      computeJD(p);
      rc = 1;
      rRounder = r<0 ? -0.5 : +0.5;
      for(i=0; i<ArraySize(aXformType); i++){
        if( aXformType[i].nName==n
         && sqlite3_strnicmp(aXformType[i].zName, z, n)==0
         && r>-aXformType[i].rLimit && r<aXformType[i].rLimit
        ){
          switch( aXformType[i].eType ){
            case 1: {
              int x;
              computeYMD_HMS(p);
              p->M += (int)r;
              x = p->M>0 ? (p->M-1)/12 : (p->M-12)/12;
              p->Y += x;
              p->M -= x*12;
              p->validJD = 0;
              r -= (int)r;
              break;
            }
            case 2: {
              int y = (int)r;
              computeYMD_HMS(p);
              p->Y += y;
              p->validJD = 0;
              r -= (int)r;
              break;
            }
          }
          computeJD(p);
          p->iJD += (sqlite3_int64)(r*aXformType[i].rXform + rRounder);
          rc = 0;
          break;
        }
      }
      clearYMD_HMS_TZ(p);
      break;
    }
    default: {
      break;
    }
  }
  return rc;
}
