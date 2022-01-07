
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ wchar_t ;
typedef int _wc_t ;
typedef int _index_t ;
typedef int _csid_t ;
struct TYPE_3__ {int mode; } ;
typedef TYPE_1__ _MSKanjiEncodingInfo ;


 int EILSEQ ;
 int MODE_JIS2004 ;
 int _mskanji1 (int) ;
 int _mskanji2 (int) ;

__attribute__((used)) static __inline int

_citrus_MSKanji_stdenc_wctocs(_MSKanjiEncodingInfo * __restrict ei,
    _csid_t * __restrict csid, _index_t * __restrict idx, wchar_t wc)
{
 _index_t col, row;
 int offset;

 if ((_wc_t)wc < 0x80) {

  *csid = 0;
  *idx = (_index_t)wc;
 } else if ((_wc_t)wc < 0x100) {

  *csid = 1;
  *idx = (_index_t)wc & 0x7F;
 } else {
  row = ((_wc_t)wc >> 8) & 0xFF;
  col = (_wc_t)wc & 0xFF;
  if (!_mskanji1(row) || !_mskanji2(col))
   return (EILSEQ);
  if ((ei->mode & MODE_JIS2004) == 0 || row < 0xF0) {
   *csid = 2;
   offset = 0x81;
  } else {
   *csid = 3;
   if ((_wc_t)wc <= 0xF49E) {
    offset = (_wc_t)wc >= 0xF29F ||
        ((_wc_t)wc >= 0xF09F &&
        (_wc_t)wc <= 0xF0FC) ? 0xED : 0xF0;
   } else
    offset = 0xCE;
  }
  row -= offset;
  if (row >= 0x5F)
   row -= 0x40;
  row = row * 2 + 0x21;
  col -= 0x1F;
  if (col >= 0x61)
   col -= 1;
  if (col > 0x7E) {
   row += 1;
   col -= 0x5E;
  }
  *idx = ((_index_t)row << 8) | col;
 }

 return (0);
}
