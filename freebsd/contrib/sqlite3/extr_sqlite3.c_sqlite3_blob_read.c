
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_blob ;


 int blobReadWrite (int *,void*,int,int,int ) ;
 int sqlite3BtreePayloadChecked ;

int sqlite3_blob_read(sqlite3_blob *pBlob, void *z, int n, int iOffset){
  return blobReadWrite(pBlob, z, n, iOffset, sqlite3BtreePayloadChecked);
}
