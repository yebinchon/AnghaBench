
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;


 int SQLITE_BLOB ;
 int SQLITE_NULL ;
 int UNUSED_PARAMETER (int) ;
 scalar_t__ memcmp (unsigned char const*,unsigned char const*,int) ;
 int sqlite3_result_error_nomem (int *) ;
 int sqlite3_result_int (int *,int) ;
 unsigned char* sqlite3_value_blob (int *) ;
 int sqlite3_value_bytes (int *) ;
 int * sqlite3_value_dup (int *) ;
 int sqlite3_value_free (int *) ;
 unsigned char* sqlite3_value_text (int *) ;
 int sqlite3_value_type (int *) ;

__attribute__((used)) static void instrFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  const unsigned char *zHaystack;
  const unsigned char *zNeedle;
  int nHaystack;
  int nNeedle;
  int typeHaystack, typeNeedle;
  int N = 1;
  int isText;
  unsigned char firstChar;
  sqlite3_value *pC1 = 0;
  sqlite3_value *pC2 = 0;

  UNUSED_PARAMETER(argc);
  typeHaystack = sqlite3_value_type(argv[0]);
  typeNeedle = sqlite3_value_type(argv[1]);
  if( typeHaystack==SQLITE_NULL || typeNeedle==SQLITE_NULL ) return;
  nHaystack = sqlite3_value_bytes(argv[0]);
  nNeedle = sqlite3_value_bytes(argv[1]);
  if( nNeedle>0 ){
    if( typeHaystack==SQLITE_BLOB && typeNeedle==SQLITE_BLOB ){
      zHaystack = sqlite3_value_blob(argv[0]);
      zNeedle = sqlite3_value_blob(argv[1]);
      isText = 0;
    }else if( typeHaystack!=SQLITE_BLOB && typeNeedle!=SQLITE_BLOB ){
      zHaystack = sqlite3_value_text(argv[0]);
      zNeedle = sqlite3_value_text(argv[1]);
      isText = 1;
    }else{
      pC1 = sqlite3_value_dup(argv[0]);
      zHaystack = sqlite3_value_text(pC1);
      if( zHaystack==0 ) goto endInstrOOM;
      nHaystack = sqlite3_value_bytes(pC1);
      pC2 = sqlite3_value_dup(argv[1]);
      zNeedle = sqlite3_value_text(pC2);
      if( zNeedle==0 ) goto endInstrOOM;
      nNeedle = sqlite3_value_bytes(pC2);
      isText = 1;
    }
    if( zNeedle==0 || (nHaystack && zHaystack==0) ) goto endInstrOOM;
    firstChar = zNeedle[0];
    while( nNeedle<=nHaystack
       && (zHaystack[0]!=firstChar || memcmp(zHaystack, zNeedle, nNeedle)!=0)
    ){
      N++;
      do{
        nHaystack--;
        zHaystack++;
      }while( isText && (zHaystack[0]&0xc0)==0x80 );
    }
    if( nNeedle>nHaystack ) N = 0;
  }
  sqlite3_result_int(context, N);
endInstr:
  sqlite3_value_free(pC1);
  sqlite3_value_free(pC2);
  return;
endInstrOOM:
  sqlite3_result_error_nomem(context);
  goto endInstr;
}
