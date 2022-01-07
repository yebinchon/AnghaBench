
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tac_handle {int dummy; } ;
struct clnt_str {size_t len; int * data; } ;


 int free_str (struct clnt_str*) ;
 int memcpy (int *,void const*,size_t) ;
 int * xmalloc (struct tac_handle*,size_t) ;

__attribute__((used)) static int
save_str(struct tac_handle *h, struct clnt_str *cs, const void *data,
    size_t len)
{
 free_str(cs);
 if (data != ((void*)0) && len != 0) {
  if ((cs->data = xmalloc(h, len)) == ((void*)0))
   return -1;
  cs->len = len;
  memcpy(cs->data, data, len);
 }
 return 0;
}
