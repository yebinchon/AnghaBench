
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_6__ {int addr; int port; } ;
struct TYPE_7__ {TYPE_1__ tid; int sid; int pid; int rgid; int ruid; int egid; int euid; int auid; } ;
struct TYPE_8__ {TYPE_2__ subj64; } ;
struct TYPE_9__ {int len; TYPE_3__ tt; } ;
typedef TYPE_4__ tokenstr_t ;


 int READ_TOKEN_BYTES (int *,int,int *,int,int ,int) ;
 int READ_TOKEN_U_INT32 (int *,int,int ,int ,int) ;
 int READ_TOKEN_U_INT64 (int *,int,int ,int ,int) ;

__attribute__((used)) static int
fetch_subject64_tok(tokenstr_t *tok, u_char *buf, int len)
{
 int err = 0;

 READ_TOKEN_U_INT32(buf, len, tok->tt.subj64.auid, tok->len, err);
 if (err)
  return (-1);

 READ_TOKEN_U_INT32(buf, len, tok->tt.subj64.euid, tok->len, err);
 if (err)
  return (-1);

 READ_TOKEN_U_INT32(buf, len, tok->tt.subj64.egid, tok->len, err);
 if (err)
  return (-1);

 READ_TOKEN_U_INT32(buf, len, tok->tt.subj64.ruid, tok->len, err);
 if (err)
  return (-1);

 READ_TOKEN_U_INT32(buf, len, tok->tt.subj64.rgid, tok->len, err);
 if (err)
  return (-1);

 READ_TOKEN_U_INT32(buf, len, tok->tt.subj64.pid, tok->len, err);
 if (err)
  return (-1);

 READ_TOKEN_U_INT32(buf, len, tok->tt.subj64.sid, tok->len, err);
 if (err)
  return (-1);

 READ_TOKEN_U_INT64(buf, len, tok->tt.subj64.tid.port, tok->len, err);
 if (err)
  return (-1);

 READ_TOKEN_BYTES(buf, len, &tok->tt.subj64.tid.addr,
     sizeof(tok->tt.subj64.tid.addr), tok->len, err);
 if (err)
  return (-1);

 return (0);
}
