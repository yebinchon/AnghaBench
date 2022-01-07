
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union key {int dummy; } key ;
struct rpcent {int dummy; } ;
struct rpcent_state {char* buffer; size_t bufsize; struct rpcent rpc; } ;


 int ERANGE ;
 size_t RPCENT_STORAGE_INITIAL ;
 int RPCENT_STORAGE_MAX ;
 int errno ;
 int free (char*) ;
 void* malloc (size_t) ;
 int rpcent_getstate (struct rpcent_state**) ;

__attribute__((used)) static struct rpcent *
getrpc(int (*fn)(union key, struct rpcent *, char *, size_t, struct rpcent **),
    union key key)
{
 int rv;
 struct rpcent *res;
 struct rpcent_state * st;

 rv=rpcent_getstate(&st);
 if (rv != 0) {
  errno = rv;
  return ((void*)0);
 }

 if (st->buffer == ((void*)0)) {
  st->buffer = malloc(RPCENT_STORAGE_INITIAL);
  if (st->buffer == ((void*)0))
   return (((void*)0));
  st->bufsize = RPCENT_STORAGE_INITIAL;
 }
 do {
  rv = fn(key, &st->rpc, st->buffer, st->bufsize, &res);
  if (res == ((void*)0) && rv == ERANGE) {
   free(st->buffer);
   if ((st->bufsize << 1) > RPCENT_STORAGE_MAX) {
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
