#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uid_t ;
struct TYPE_11__ {int AuthHandle; unsigned char* HandShakeKey; int /*<<< orphan*/  EndTimestamp; int /*<<< orphan*/  BeginTimestamp; int /*<<< orphan*/  ViceId; } ;
struct kafs_token {unsigned char* ticket; size_t ticket_len; TYPE_10__ ct; } ;
struct TYPE_15__ {int /*<<< orphan*/  endtime; int /*<<< orphan*/  starttime; } ;
struct TYPE_13__ {int length; int /*<<< orphan*/  data; } ;
struct TYPE_14__ {TYPE_2__ keyvalue; } ;
struct TYPE_12__ {size_t length; int /*<<< orphan*/  data; } ;
struct TYPE_16__ {TYPE_4__ times; TYPE_3__ session; TYPE_1__ ticket; } ;
typedef  TYPE_5__ krb5_creds ;
struct TYPE_17__ {int tkt_vno; int /*<<< orphan*/  enc_part; } ;
typedef  TYPE_6__ Ticket ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char*,size_t,int /*<<< orphan*/ *,size_t*,int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EncryptedData ; 
 int KAFS_RXKAD_2B_KVNO ; 
 int KAFS_RXKAD_K5_KVNO ; 
 int KRB5KRB_ERR_GENERIC ; 
 int /*<<< orphan*/  FUNC1 (TYPE_10__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,size_t,TYPE_6__*,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 unsigned char* FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(krb5_creds *cred, uid_t uid, struct kafs_token *kt, int local524)
{
    int kvno, ret;

    kt->ticket = NULL;

    /* check if des key */
    if (cred->session.keyvalue.length != 8)
	return EINVAL;

    if (local524) {
	Ticket t;
	unsigned char *buf;
	size_t buf_len;
	size_t len;

	kvno = KAFS_RXKAD_2B_KVNO;

	ret = FUNC2(cred->ticket.data, cred->ticket.length, &t, &len);
	if (ret)
	    return ret;
	if (t.tkt_vno != 5)
	    return -1;

	FUNC0(EncryptedData, buf, buf_len, &t.enc_part,
			   &len, ret);
	FUNC4(&t);
	if (ret)
	    return ret;
	if(buf_len != len) {
	    FUNC3(buf);
	    return KRB5KRB_ERR_GENERIC;
	}

	kt->ticket = buf;
	kt->ticket_len = buf_len;

    } else {
	kvno = KAFS_RXKAD_K5_KVNO;
	kt->ticket = FUNC5(cred->ticket.length);
	if (kt->ticket == NULL)
	    return ENOMEM;
	kt->ticket_len = cred->ticket.length;
	FUNC6(kt->ticket, cred->ticket.data, kt->ticket_len);

	ret = 0;
    }


    /*
     * Build a struct ClearToken
     */

    kt->ct.AuthHandle = kvno;
    FUNC6(kt->ct.HandShakeKey, cred->session.keyvalue.data, 8);
    kt->ct.ViceId = uid;
    kt->ct.BeginTimestamp = cred->times.starttime;
    kt->ct.EndTimestamp = cred->times.endtime;

    FUNC1(&kt->ct, uid);

    return 0;
}