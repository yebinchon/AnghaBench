
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servent {int dummy; } ;
struct servent_state {char* buffer; size_t bufsize; struct servent serv; } ;
struct key {int dummy; } ;


 int ERANGE ;
 size_t SERVENT_STORAGE_INITIAL ;
 int SERVENT_STORAGE_MAX ;
 int errno ;
 int free (char*) ;
 void* malloc (size_t) ;
 int servent_getstate (struct servent_state**) ;

__attribute__((used)) static struct servent *
getserv(int (*fn)(struct key, struct servent *, char *, size_t,
    struct servent **), struct key key)
{
 int rv;
 struct servent *res;
 struct servent_state * st;

 rv = servent_getstate(&st);
 if (rv != 0) {
  errno = rv;
  return ((void*)0);
 }

 if (st->buffer == ((void*)0)) {
  st->buffer = malloc(SERVENT_STORAGE_INITIAL);
  if (st->buffer == ((void*)0))
   return (((void*)0));
  st->bufsize = SERVENT_STORAGE_INITIAL;
 }
 do {
  rv = fn(key, &st->serv, st->buffer, st->bufsize, &res);
  if (res == ((void*)0) && rv == ERANGE) {
   free(st->buffer);
   if ((st->bufsize << 1) > SERVENT_STORAGE_MAX) {
    st->buffer = ((void*)0);
    errno = ERANGE;
    return (((void*)0));
   }
   st->bufsize <<= 1;
   st->buffer = malloc(st->bufsize);
   if (st->buffer == ((void*)0))
    return (((void*)0));
  }
 } while (res == ((void*)0) && rv == ERANGE);
 if (rv != 0)
  errno = rv;

 return (res);
}
