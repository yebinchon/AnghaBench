
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_5__ {int length; int data; } ;
struct TYPE_6__ {TYPE_1__ invalid; } ;
struct TYPE_7__ {int len; TYPE_2__ tt; } ;
typedef TYPE_3__ tokenstr_t ;


 int AUDIT_TRAILER_SIZE ;
 int SET_PTR (char*,int,int ,int,int,int) ;

__attribute__((used)) static int
fetch_invalid_tok(tokenstr_t *tok, u_char *buf, int len)
{
 int err = 0;
 int recoversize;

 recoversize = len - (tok->len + AUDIT_TRAILER_SIZE);
 if (recoversize <= 0)
  return (-1);

 tok->tt.invalid.length = recoversize;

 SET_PTR((char*)buf, len, tok->tt.invalid.data, recoversize, tok->len,
     err);
 if (err)
  return (-1);

 return (0);
}
