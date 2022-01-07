
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int i64 ;


 int SQLITE_TRANSIENT ;
 int UNUSED_PARAMETER (int) ;
 int memcpy (char*,char const*,int) ;
 int sqlite3_free (char*) ;
 scalar_t__ sqlite3_malloc64 (int) ;
 int sqlite3_result_error_nomem (int *) ;
 int sqlite3_result_text (int *,char*,int,int ) ;
 int sqlite3_result_value (int *,int *) ;
 int sqlite3_value_bytes (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;
 scalar_t__ strlen (char const*) ;
 char* unused_string (char const*,char*,char*,char*) ;

__attribute__((used)) static void shellEscapeCrnl(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  const char *zText = (const char*)sqlite3_value_text(argv[0]);
  UNUSED_PARAMETER(argc);
  if( zText[0]=='\'' ){
    int nText = sqlite3_value_bytes(argv[0]);
    int i;
    char zBuf1[20];
    char zBuf2[20];
    const char *zNL = 0;
    const char *zCR = 0;
    int nCR = 0;
    int nNL = 0;

    for(i=0; zText[i]; i++){
      if( zNL==0 && zText[i]=='\n' ){
        zNL = unused_string(zText, "\\n", "\\012", zBuf1);
        nNL = (int)strlen(zNL);
      }
      if( zCR==0 && zText[i]=='\r' ){
        zCR = unused_string(zText, "\\r", "\\015", zBuf2);
        nCR = (int)strlen(zCR);
      }
    }

    if( zNL || zCR ){
      int iOut = 0;
      i64 nMax = (nNL > nCR) ? nNL : nCR;
      i64 nAlloc = nMax * nText + (nMax+64)*2;
      char *zOut = (char*)sqlite3_malloc64(nAlloc);
      if( zOut==0 ){
        sqlite3_result_error_nomem(context);
        return;
      }

      if( zNL && zCR ){
        memcpy(&zOut[iOut], "replace(replace(", 16);
        iOut += 16;
      }else{
        memcpy(&zOut[iOut], "replace(", 8);
        iOut += 8;
      }
      for(i=0; zText[i]; i++){
        if( zText[i]=='\n' ){
          memcpy(&zOut[iOut], zNL, nNL);
          iOut += nNL;
        }else if( zText[i]=='\r' ){
          memcpy(&zOut[iOut], zCR, nCR);
          iOut += nCR;
        }else{
          zOut[iOut] = zText[i];
          iOut++;
        }
      }

      if( zNL ){
        memcpy(&zOut[iOut], ",'", 2); iOut += 2;
        memcpy(&zOut[iOut], zNL, nNL); iOut += nNL;
        memcpy(&zOut[iOut], "', char(10))", 12); iOut += 12;
      }
      if( zCR ){
        memcpy(&zOut[iOut], ",'", 2); iOut += 2;
        memcpy(&zOut[iOut], zCR, nCR); iOut += nCR;
        memcpy(&zOut[iOut], "', char(13))", 12); iOut += 12;
      }

      sqlite3_result_text(context, zOut, iOut, SQLITE_TRANSIENT);
      sqlite3_free(zOut);
      return;
    }
  }

  sqlite3_result_value(context, argv[0]);
}
