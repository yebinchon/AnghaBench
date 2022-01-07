
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IdxHash ;


 int memset (int *,int ,int) ;

__attribute__((used)) static void idxHashInit(IdxHash *pHash){
  memset(pHash, 0, sizeof(IdxHash));
}
