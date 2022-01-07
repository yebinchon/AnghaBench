
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dictContent; int totalCompressedSize; } ;
typedef TYPE_1__ COVER_dictSelection_t ;


 scalar_t__ ZSTD_isError (int ) ;

unsigned COVER_dictSelectionIsError(COVER_dictSelection_t selection) {
  return (ZSTD_isError(selection.totalCompressedSize) || !selection.dictContent);
}
