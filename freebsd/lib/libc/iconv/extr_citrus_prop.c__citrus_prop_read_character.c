
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct _memstream {int dummy; } ;
struct TYPE_5__ {int chr; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
typedef TYPE_2__ _citrus_prop_object_t ;


 int EINVAL ;
 int _citrus_prop_read_character_common (struct _memstream*,int*) ;
 int _citrus_prop_read_chr (struct _memstream*,TYPE_2__*) ;
 int _memstream_getc (struct _memstream*) ;
 int _memstream_skip_ws (struct _memstream*) ;
 int _memstream_ungetc (struct _memstream*,int) ;

__attribute__((used)) static int
_citrus_prop_read_character(struct _memstream * __restrict ms,
    _citrus_prop_object_t * __restrict obj)
{
 int ch, errnum;

 _memstream_skip_ws(ms);
 ch = _memstream_getc(ms);
 if (ch != '\'') {
  _memstream_ungetc(ms, ch);
  return (_citrus_prop_read_chr(ms, obj));
 }
 errnum = _citrus_prop_read_character_common(ms, &ch);
 if (errnum != 0)
  return (errnum);
 obj->u.chr = ch;
 ch = _memstream_getc(ms);
 if (ch != '\'')
  return (EINVAL);
 return (0);
}
