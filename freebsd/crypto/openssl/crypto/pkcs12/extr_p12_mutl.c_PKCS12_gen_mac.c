
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PKCS12 ;


 int pkcs12_gen_mac (int *,char const*,int,unsigned char*,unsigned int*,int *) ;

int PKCS12_gen_mac(PKCS12 *p12, const char *pass, int passlen,
                   unsigned char *mac, unsigned int *maclen)
{
    return pkcs12_gen_mac(p12, pass, passlen, mac, maclen, ((void*)0));
}
