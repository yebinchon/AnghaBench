
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_4__ {size_t len; int t_data; } ;
typedef TYPE_1__ token_t ;


 int EINVAL ;
 int ENOMEM ;
 int au_free_token (TYPE_1__*) ;
 int errno ;
 int memcpy (int *,int ,size_t) ;

int
au_close_token(token_t *tok, u_char *buffer, size_t *buflen)
{

 if (tok->len > *buflen) {
  au_free_token(tok);
  errno = ENOMEM;
  return (EINVAL);
 }

 memcpy(buffer, tok->t_data, tok->len);
 *buflen = tok->len;
 au_free_token(tok);
 return (0);
}
