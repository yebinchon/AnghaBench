
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct _memstream {int dummy; } ;
struct TYPE_4__ {char const* str; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
typedef TYPE_2__ _citrus_prop_object_t ;


 int EINVAL ;
 int ENOMEM ;

 size_t _CITRUS_PROP_STR_BUFSIZ ;
 scalar_t__ _bcs_isspace (int) ;
 int _citrus_prop_read_character_common (struct _memstream*,int*) ;
 int _memstream_getc (struct _memstream*) ;
 int _memstream_skip_ws (struct _memstream*) ;
 int _memstream_ungetc (struct _memstream*,int) ;
 int free (char*) ;
 char* malloc (size_t) ;
 char* realloc (char*,size_t) ;

__attribute__((used)) static int
_citrus_prop_read_str(struct _memstream * __restrict ms,
    _citrus_prop_object_t * __restrict obj)
{
 int ch, errnum, quot;
 char *s, *t;

 size_t m, n;

 m = 512;
 s = malloc(m);
 if (s == ((void*)0))
  return (ENOMEM);
 n = 0;
 _memstream_skip_ws(ms);
 quot = _memstream_getc(ms);
 switch (quot) {
 case 128:
  goto done;

 case '\\':
  _memstream_ungetc(ms, quot);
  quot = 128;

 case '\"': case '\'':
  break;
 default:
  s[n] = quot;
  ++n, --m;
  quot = 128;
 }
 for (;;) {
  if (m < 1) {
   m = 512;
   t = realloc(s, n + m);
   if (t == ((void*)0)) {
    free(s);
    return (ENOMEM);
   }
   s = t;
  }
  ch = _memstream_getc(ms);
  if (quot == ch || (quot == 128 &&
      (ch == ';' || _bcs_isspace(ch)))) {
done:
   s[n] = '\0';
   obj->u.str = (const char *)s;
   return (0);
  }
  _memstream_ungetc(ms, ch);
  errnum = _citrus_prop_read_character_common(ms, &ch);
  if (errnum != 0) {
   free(s);
   return (errnum);
  }
  s[n] = ch;
  ++n, --m;
 }
 free(s);
 return (EINVAL);

}
