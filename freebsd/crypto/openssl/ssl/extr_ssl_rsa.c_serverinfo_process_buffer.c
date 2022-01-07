
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;
typedef int PACKET ;


 int PACKET_buf_init (int *,unsigned char const*,size_t) ;
 int PACKET_get_length_prefixed_2 (int *,int *) ;
 int PACKET_get_net_2 (int *,unsigned int*) ;
 int PACKET_get_net_4 (int *,unsigned long*) ;
 scalar_t__ PACKET_remaining (int *) ;
 int SSL_CTX_add_custom_ext (int *,unsigned int,unsigned long,int ,int *,int *,int ,int *) ;
 int SSL_CTX_add_server_custom_ext (int *,unsigned int,int ,int *,int *,int ,int *) ;
 unsigned int SSL_SERVERINFOV1 ;
 unsigned int SSL_SERVERINFOV2 ;
 unsigned long SYNTHV1CONTEXT ;
 int serverinfo_srv_add_cb ;
 int serverinfo_srv_parse_cb ;
 int serverinfoex_srv_add_cb ;
 int serverinfoex_srv_parse_cb ;

__attribute__((used)) static int serverinfo_process_buffer(unsigned int version,
                                     const unsigned char *serverinfo,
                                     size_t serverinfo_length, SSL_CTX *ctx)
{
    PACKET pkt;

    if (serverinfo == ((void*)0) || serverinfo_length == 0)
        return 0;

    if (version != SSL_SERVERINFOV1 && version != SSL_SERVERINFOV2)
        return 0;

    if (!PACKET_buf_init(&pkt, serverinfo, serverinfo_length))
        return 0;

    while (PACKET_remaining(&pkt)) {
        unsigned long context = 0;
        unsigned int ext_type = 0;
        PACKET data;

        if ((version == SSL_SERVERINFOV2 && !PACKET_get_net_4(&pkt, &context))
                || !PACKET_get_net_2(&pkt, &ext_type)
                || !PACKET_get_length_prefixed_2(&pkt, &data))
            return 0;

        if (ctx == ((void*)0))
            continue;
        if (version == SSL_SERVERINFOV1 || context == SYNTHV1CONTEXT) {
            if (!SSL_CTX_add_server_custom_ext(ctx, ext_type,
                                               serverinfo_srv_add_cb,
                                               ((void*)0), ((void*)0),
                                               serverinfo_srv_parse_cb,
                                               ((void*)0)))
                return 0;
        } else {
            if (!SSL_CTX_add_custom_ext(ctx, ext_type, context,
                                        serverinfoex_srv_add_cb,
                                        ((void*)0), ((void*)0),
                                        serverinfoex_srv_parse_cb,
                                        ((void*)0)))
                return 0;
        }
    }

    return 1;
}
