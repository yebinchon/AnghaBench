#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (char*,unsigned int,char*,int /*<<< orphan*/ ) ; 
 unsigned int INT_MAX ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ ,long*) ; 
 int /*<<< orphan*/  bio_c_out ; 
 int /*<<< orphan*/  bio_err ; 
 scalar_t__ c_debug ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char*,long) ; 
 int /*<<< orphan*/  psk_identity ; 
 int /*<<< orphan*/  psk_key ; 

__attribute__((used)) static unsigned int FUNC5(SSL *ssl, const char *hint, char *identity,
                                  unsigned int max_identity_len,
                                  unsigned char *psk,
                                  unsigned int max_psk_len)
{
    int ret;
    long key_len;
    unsigned char *key;

    if (c_debug)
        FUNC0(bio_c_out, "psk_client_cb\n");
    if (!hint) {
        /* no ServerKeyExchange message */
        if (c_debug)
            FUNC0(bio_c_out,
                       "NULL received PSK identity hint, continuing anyway\n");
    } else if (c_debug) {
        FUNC0(bio_c_out, "Received PSK identity hint '%s'\n", hint);
    }

    /*
     * lookup PSK identity and PSK key based on the given identity hint here
     */
    ret = FUNC1(identity, max_identity_len, "%s", psk_identity);
    if (ret < 0 || (unsigned int)ret > max_identity_len)
        goto out_err;
    if (c_debug)
        FUNC0(bio_c_out, "created identity '%s' len=%d\n", identity,
                   ret);

    /* convert the PSK key to binary */
    key = FUNC3(psk_key, &key_len);
    if (key == NULL) {
        FUNC0(bio_err, "Could not convert PSK key '%s' to buffer\n",
                   psk_key);
        return 0;
    }
    if (max_psk_len > INT_MAX || key_len > (long)max_psk_len) {
        FUNC0(bio_err,
                   "psk buffer of callback is too small (%d) for key (%ld)\n",
                   max_psk_len, key_len);
        FUNC2(key);
        return 0;
    }

    FUNC4(psk, key, key_len);
    FUNC2(key);

    if (c_debug)
        FUNC0(bio_c_out, "created PSK len=%ld\n", key_len);

    return key_len;
 out_err:
    if (c_debug)
        FUNC0(bio_err, "Error in PSK client callback\n");
    return 0;
}