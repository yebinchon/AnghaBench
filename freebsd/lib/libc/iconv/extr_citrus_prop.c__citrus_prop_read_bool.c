
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct _memstream {int dummy; } ;
struct TYPE_4__ {int boolean; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
typedef TYPE_2__ _citrus_prop_object_t ;


 int EINVAL ;
 char _bcs_tolower (int ) ;
 int _memstream_getc (struct _memstream*) ;
 int _memstream_skip_ws (struct _memstream*) ;

__attribute__((used)) static int
_citrus_prop_read_bool(struct _memstream * __restrict ms,
    _citrus_prop_object_t * __restrict obj)
{

 _memstream_skip_ws(ms);
 switch (_bcs_tolower(_memstream_getc(ms))) {
 case 't':
  if (_bcs_tolower(_memstream_getc(ms)) == 'r' &&
      _bcs_tolower(_memstream_getc(ms)) == 'u' &&
      _bcs_tolower(_memstream_getc(ms)) == 'e') {
   obj->u.boolean = 1;
   return (0);
  }
  break;
 case 'f':
  if (_bcs_tolower(_memstream_getc(ms)) == 'a' &&
      _bcs_tolower(_memstream_getc(ms)) == 'l' &&
      _bcs_tolower(_memstream_getc(ms)) == 's' &&
      _bcs_tolower(_memstream_getc(ms)) == 'e') {
   obj->u.boolean = 0;
   return (0);
  }
 }
 return (EINVAL);
}
