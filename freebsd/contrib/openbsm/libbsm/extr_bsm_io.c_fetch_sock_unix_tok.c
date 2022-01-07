
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_5__ {int path; int family; } ;
struct TYPE_6__ {TYPE_1__ sockunix; } ;
struct TYPE_7__ {int len; TYPE_2__ tt; } ;
typedef TYPE_3__ tokenstr_t ;


 int READ_TOKEN_BYTES (int *,int,int ,int,int,int) ;
 int READ_TOKEN_U_INT16 (int *,int,int ,int,int) ;
 scalar_t__ memchr (void const*,char,int) ;

__attribute__((used)) static int
fetch_sock_unix_tok(tokenstr_t *tok, u_char *buf, int len)
{
 int err = 0;
 u_char *p;
 int slen;


 READ_TOKEN_U_INT16(buf, len, tok->tt.sockunix.family, tok->len, err);
 if (err)
  return (-1);


 p = (u_char *)memchr((const void *)(buf + tok->len), '\0', 104);
 slen = (p ? (int)(p - (buf + tok->len)) : 104) + 1;

 READ_TOKEN_BYTES(buf, len, tok->tt.sockunix.path, slen, tok->len, err);
 if (err)
  return (-1);

 return (0);
}
