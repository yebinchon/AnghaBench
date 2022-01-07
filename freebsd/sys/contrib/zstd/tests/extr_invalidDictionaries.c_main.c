
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int * data; } ;
typedef TYPE_1__ dictionary ;
typedef int ZSTD_DDict ;
typedef int ZSTD_CDict ;


 int * ZSTD_createCDict (int *,int ,int) ;
 int * ZSTD_createDDict (int *,int ) ;
 int ZSTD_freeCDict (int *) ;
 int ZSTD_freeDDict (int *) ;
 TYPE_1__* dictionaries ;

int main(int argc, const char** argv) {
  const dictionary *dict;
  for (dict = dictionaries; dict->data != ((void*)0); ++dict) {
    ZSTD_CDict *cdict;
    ZSTD_DDict *ddict;
    cdict = ZSTD_createCDict(dict->data, dict->size, 1);
    if (cdict) {
      ZSTD_freeCDict(cdict);
      return 1;
    }
    ddict = ZSTD_createDDict(dict->data, dict->size);
    if (ddict) {
      ZSTD_freeDDict(ddict);
      return 2;
    }
  }

  (void)argc;
  (void)argv;
  return 0;
}
