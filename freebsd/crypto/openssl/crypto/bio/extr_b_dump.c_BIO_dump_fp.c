
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int BIO_dump_cb (int ,int *,char const*,int) ;
 int write_fp ;

int BIO_dump_fp(FILE *fp, const char *s, int len)
{
    return BIO_dump_cb(write_fp, fp, s, len);
}
