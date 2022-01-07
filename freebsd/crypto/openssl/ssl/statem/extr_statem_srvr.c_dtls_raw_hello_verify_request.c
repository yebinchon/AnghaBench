
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPACKET ;


 int DTLS1_VERSION ;
 int WPACKET_put_bytes_u16 (int *,int ) ;
 int WPACKET_sub_memcpy_u8 (int *,unsigned char*,size_t) ;

int dtls_raw_hello_verify_request(WPACKET *pkt, unsigned char *cookie,
                                  size_t cookie_len)
{

    if (!WPACKET_put_bytes_u16(pkt, DTLS1_VERSION)
            || !WPACKET_sub_memcpy_u8(pkt, cookie, cookie_len))
        return 0;

    return 1;
}
