
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZBUFFv04_DCtx ;


 size_t ZBUFF_decompressWithDictionary (int *,void const*,size_t) ;

size_t ZBUFFv04_decompressWithDictionary(ZBUFFv04_DCtx* dctx, const void* src, size_t srcSize)
{ return ZBUFF_decompressWithDictionary(dctx, src, srcSize); }
