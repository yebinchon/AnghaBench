#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  int /*<<< orphan*/  krb5_keyblock ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_enctype ;
struct TYPE_7__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_crypto ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_8__ {int /*<<< orphan*/  enc_part; } ;
typedef  TYPE_2__ Ticket ;
typedef  int /*<<< orphan*/  EncTicketPart ;

/* Variables and functions */
 int /*<<< orphan*/  KRB5_KU_TICKET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9 (krb5_context context,
		      krb5_data *ticket,
		      krb5_principal server,
		      krb5_enctype enctype)
{
    krb5_error_code ret;
    krb5_crypto crypto;
    krb5_data dec_data;
    size_t len;
    EncTicketPart decr_part;
    krb5_keyblock key;
    Ticket tkt;

    ret = FUNC1 (ticket->data, ticket->length, &tkt, &len);
    if (ret)
	FUNC7 (context, 1, ret, "decode_Ticket");

    ret = FUNC8 (context, enctype, "foo", server, &key);
    if (ret)
	FUNC7 (context, 1, ret, "krb5_string_to_key");

    ret = FUNC4(context, &key, 0, &crypto);
    if (ret)
	FUNC7 (context, 1, ret, "krb5_crypto_init");

    ret = FUNC6 (context, crypto, KRB5_KU_TICKET,
				      &tkt.enc_part, &dec_data);
    FUNC3 (context, crypto);
    if (ret)
	FUNC7 (context, 1, ret, "krb5_decrypt_EncryptedData");
    ret = FUNC0 (dec_data.data, dec_data.length,
				&decr_part, &len);
    FUNC5 (&dec_data);
    if (ret)
	FUNC7 (context, 1, ret, "krb5_decode_EncTicketPart");
    FUNC2(&decr_part);
}