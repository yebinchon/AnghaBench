
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* wchar_t ;
struct xlocale_collate {TYPE_1__* info; } ;
typedef int int32_t ;
struct TYPE_2__ {int directive_count; int* directive; } ;


 int COLLATE_MAX_PRIORITY ;
 int DIRECTIVE_BACKWARD ;
 int DIRECTIVE_FORWARD ;
 int DIRECTIVE_POSITION ;
 int DIRECTIVE_UNDEFINED ;
 int EINVAL ;
 int ENOMEM ;
 int _collate_lookup (struct xlocale_collate*,void* const*,int*,int*,int,int const**) ;
 int assert (void* const*) ;
 int errno ;
 int free (void**) ;
 void** wcsdup (void* const*) ;
 int wcslen (void**) ;

size_t
_collate_wxfrm(struct xlocale_collate *table, const wchar_t *src, wchar_t *xf,
    size_t room)
{
 int pri;
 int len;
 const wchar_t *t;
 wchar_t *tr = ((void*)0);
 int direc;
 int pass;
 const int32_t *state;
 size_t want = 0;
 size_t need = 0;
 int ndir = table->info->directive_count;

 assert(src);

 for (pass = 0; pass <= ndir; pass++) {

  state = ((void*)0);

  if (pass != 0) {

   if (room) {
    *xf++ = 1;
    room--;
   }
   want++;
  }


  if (pass == ndir) {
   direc = DIRECTIVE_FORWARD | DIRECTIVE_UNDEFINED;
  } else {
   direc = table->info->directive[pass];
  }

  t = src;

  if (direc & DIRECTIVE_BACKWARD) {
   wchar_t *bp, *fp, c;
   free(tr);
   if ((tr = wcsdup(t)) == ((void*)0)) {
    errno = ENOMEM;
    goto fail;
   }
   bp = tr;
   fp = tr + wcslen(tr) - 1;
   while (bp < fp) {
    c = *bp;
    *bp++ = *fp;
    *fp-- = c;
   }
   t = (const wchar_t *)tr;
  }

  if (direc & DIRECTIVE_POSITION) {
   while (*t || state) {
    _collate_lookup(table, t, &len, &pri, pass, &state);
    t += len;
    if (pri <= 0) {
     if (pri < 0) {
      errno = EINVAL;
      goto fail;
     }
     state = ((void*)0);
     pri = COLLATE_MAX_PRIORITY;
    }
    if (room) {
     *xf++ = pri;
     room--;
    }
    want++;
    need = want;
   }
  } else {
   while (*t || state) {
    _collate_lookup(table, t, &len, &pri, pass, &state);
    t += len;
    if (pri <= 0) {
     if (pri < 0) {
      errno = EINVAL;
      goto fail;
     }
     state = ((void*)0);
     continue;
    }
    if (room) {
     *xf++ = pri;
     room--;
    }
    want++;
    need = want;
   }
  }
 }
 free(tr);
 return (need);

fail:
 free(tr);
 return ((size_t)(-1));
}
