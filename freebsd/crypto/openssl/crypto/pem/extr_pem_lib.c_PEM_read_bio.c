
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int PEM_FLAG_EAY_COMPATIBLE ;
 int PEM_read_bio_ex (int *,char**,char**,unsigned char**,long*,int ) ;

int PEM_read_bio(BIO *bp, char **name, char **header, unsigned char **data,
                 long *len)
{
    return PEM_read_bio_ex(bp, name, header, data, len, PEM_FLAG_EAY_COMPATIBLE);
}
