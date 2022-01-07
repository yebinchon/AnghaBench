
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* gss_buffer_t ;
struct TYPE_5__ {int length; unsigned char* value; } ;
typedef int RC4_KEY ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ EINVAL ;
 scalar_t__ ENOMEM ;
 int RC4 (int *,int,unsigned char*,unsigned char*) ;
 int free (unsigned char*) ;
 unsigned char* malloc (int) ;
 scalar_t__ v2_sign_message (TYPE_1__* const,unsigned char*,int *,int ,unsigned char*) ;

__attribute__((used)) static OM_uint32
v2_seal_message(const gss_buffer_t in,
  unsigned char signkey[16],
  uint32_t seq,
  RC4_KEY *sealkey,
  gss_buffer_t out)
{
    unsigned char *p;
    OM_uint32 ret;

    if (in->length + 16 < in->length)
 return EINVAL;

    p = malloc(in->length + 16);
    if (p == ((void*)0))
 return ENOMEM;

    RC4(sealkey, in->length, in->value, p);

    ret = v2_sign_message(in, signkey, sealkey, seq, &p[in->length]);
    if (ret) {
 free(p);
 return ret;
    }

    out->value = p;
    out->length = in->length + 16;

    return 0;
}
