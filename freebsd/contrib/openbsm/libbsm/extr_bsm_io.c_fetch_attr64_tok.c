
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_5__ {int dev; int nid; int fsid; int gid; int uid; int mode; } ;
struct TYPE_6__ {TYPE_1__ attr64; } ;
struct TYPE_7__ {int len; TYPE_2__ tt; } ;
typedef TYPE_3__ tokenstr_t ;


 int READ_TOKEN_U_INT32 (int *,int,int ,int ,int) ;
 int READ_TOKEN_U_INT64 (int *,int,int ,int ,int) ;

__attribute__((used)) static int
fetch_attr64_tok(tokenstr_t *tok, u_char *buf, int len)
{
 int err = 0;

 READ_TOKEN_U_INT32(buf, len, tok->tt.attr64.mode, tok->len, err);
 if (err)
  return (-1);

 READ_TOKEN_U_INT32(buf, len, tok->tt.attr64.uid, tok->len, err);
 if (err)
  return (-1);

 READ_TOKEN_U_INT32(buf, len, tok->tt.attr64.gid, tok->len, err);
 if (err)
  return (-1);

 READ_TOKEN_U_INT32(buf, len, tok->tt.attr64.fsid, tok->len, err);
 if (err)
  return (-1);

 READ_TOKEN_U_INT64(buf, len, tok->tt.attr64.nid, tok->len, err);
 if (err)
  return (-1);

 READ_TOKEN_U_INT64(buf, len, tok->tt.attr64.dev, tok->len, err);
 if (err)
  return (-1);

 return (0);
}
