
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int serverinfoex_srv_add_cb (int *,unsigned int,int ,unsigned char const**,size_t*,int *,int ,int*,void*) ;

__attribute__((used)) static int serverinfo_srv_add_cb(SSL *s, unsigned int ext_type,
                                 const unsigned char **out, size_t *outlen,
                                 int *al, void *arg)
{
    return serverinfoex_srv_add_cb(s, ext_type, 0, out, outlen, ((void*)0), 0, al,
                                   arg);
}
