
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_int64 ;
typedef int sqlite3_context ;


 int UNUSED_PARAMETER (int) ;
 int sqlite3_result_int64 (int *,int) ;
 scalar_t__ sqlite3_value_blob (int *) ;
 int sqlite3_value_bytes (int *) ;
 int sqlite3_value_int (int *) ;

__attribute__((used)) static void shellInt32(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  const unsigned char *pBlob;
  int nBlob;
  int iInt;

  UNUSED_PARAMETER(argc);
  nBlob = sqlite3_value_bytes(argv[0]);
  pBlob = (const unsigned char*)sqlite3_value_blob(argv[0]);
  iInt = sqlite3_value_int(argv[1]);

  if( iInt>=0 && (iInt+1)*4<=nBlob ){
    const unsigned char *a = &pBlob[iInt*4];
    sqlite3_int64 iVal = ((sqlite3_int64)a[0]<<24)
                       + ((sqlite3_int64)a[1]<<16)
                       + ((sqlite3_int64)a[2]<< 8)
                       + ((sqlite3_int64)a[3]<< 0);
    sqlite3_result_int64(context, iVal);
  }
}
