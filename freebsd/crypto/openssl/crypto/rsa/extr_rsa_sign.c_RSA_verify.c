
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* meth; } ;
struct TYPE_6__ {int (* rsa_verify ) (int,unsigned char const*,unsigned int,unsigned char const*,unsigned int,TYPE_2__*) ;} ;
typedef TYPE_2__ RSA ;


 int int_rsa_verify (int,unsigned char const*,unsigned int,int *,int *,unsigned char const*,unsigned int,TYPE_2__*) ;
 int stub1 (int,unsigned char const*,unsigned int,unsigned char const*,unsigned int,TYPE_2__*) ;

int RSA_verify(int type, const unsigned char *m, unsigned int m_len,
               const unsigned char *sigbuf, unsigned int siglen, RSA *rsa)
{

    if (rsa->meth->rsa_verify) {
        return rsa->meth->rsa_verify(type, m, m_len, sigbuf, siglen, rsa);
    }

    return int_rsa_verify(type, m, m_len, ((void*)0), ((void*)0), sigbuf, siglen, rsa);
}
