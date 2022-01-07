
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPACKET ;


 int WPACKET_allocate_bytes (int *,size_t,unsigned char**) ;
 int WPACKET_close (int *) ;
 int WPACKET_start_sub_packet_len__ (int *,size_t) ;

int WPACKET_sub_allocate_bytes__(WPACKET *pkt, size_t len,
                                 unsigned char **allocbytes, size_t lenbytes)
{
    if (!WPACKET_start_sub_packet_len__(pkt, lenbytes)
            || !WPACKET_allocate_bytes(pkt, len, allocbytes)
            || !WPACKET_close(pkt))
        return 0;

    return 1;
}
