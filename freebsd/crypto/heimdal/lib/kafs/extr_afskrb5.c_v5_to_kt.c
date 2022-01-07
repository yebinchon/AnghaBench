
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int uid_t ;
struct TYPE_11__ {int AuthHandle; unsigned char* HandShakeKey; int EndTimestamp; int BeginTimestamp; int ViceId; } ;
struct kafs_token {unsigned char* ticket; size_t ticket_len; TYPE_10__ ct; } ;
struct TYPE_15__ {int endtime; int starttime; } ;
struct TYPE_13__ {int length; int data; } ;
struct TYPE_14__ {TYPE_2__ keyvalue; } ;
struct TYPE_12__ {size_t length; int data; } ;
struct TYPE_16__ {TYPE_4__ times; TYPE_3__ session; TYPE_1__ ticket; } ;
typedef TYPE_5__ krb5_creds ;
struct TYPE_17__ {int tkt_vno; int enc_part; } ;
typedef TYPE_6__ Ticket ;


 int ASN1_MALLOC_ENCODE (int ,unsigned char*,size_t,int *,size_t*,int) ;
 int EINVAL ;
 int ENOMEM ;
 int EncryptedData ;
 int KAFS_RXKAD_2B_KVNO ;
 int KAFS_RXKAD_K5_KVNO ;
 int KRB5KRB_ERR_GENERIC ;
 int _kafs_fixup_viceid (TYPE_10__*,int ) ;
 int decode_Ticket (int ,size_t,TYPE_6__*,size_t*) ;
 int free (unsigned char*) ;
 int free_Ticket (TYPE_6__*) ;
 unsigned char* malloc (size_t) ;
 int memcpy (unsigned char*,int ,int) ;

__attribute__((used)) static int
v5_to_kt(krb5_creds *cred, uid_t uid, struct kafs_token *kt, int local524)
{
    int kvno, ret;

    kt->ticket = ((void*)0);


    if (cred->session.keyvalue.length != 8)
 return EINVAL;

    if (local524) {
 Ticket t;
 unsigned char *buf;
 size_t buf_len;
 size_t len;

 kvno = KAFS_RXKAD_2B_KVNO;

 ret = decode_Ticket(cred->ticket.data, cred->ticket.length, &t, &len);
 if (ret)
     return ret;
 if (t.tkt_vno != 5)
     return -1;

 ASN1_MALLOC_ENCODE(EncryptedData, buf, buf_len, &t.enc_part,
      &len, ret);
 free_Ticket(&t);
 if (ret)
     return ret;
 if(buf_len != len) {
     free(buf);
     return KRB5KRB_ERR_GENERIC;
 }

 kt->ticket = buf;
 kt->ticket_len = buf_len;

    } else {
 kvno = KAFS_RXKAD_K5_KVNO;
 kt->ticket = malloc(cred->ticket.length);
 if (kt->ticket == ((void*)0))
     return ENOMEM;
 kt->ticket_len = cred->ticket.length;
 memcpy(kt->ticket, cred->ticket.data, kt->ticket_len);

 ret = 0;
    }






    kt->ct.AuthHandle = kvno;
    memcpy(kt->ct.HandShakeKey, cred->session.keyvalue.data, 8);
    kt->ct.ViceId = uid;
    kt->ct.BeginTimestamp = cred->times.starttime;
    kt->ct.EndTimestamp = cred->times.endtime;

    _kafs_fixup_viceid(&kt->ct, uid);

    return 0;
}
