
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int utmp ;
typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ int32_t ;
struct TYPE_3__ {int size; } ;
typedef int ASN1_VALUE ;
typedef TYPE_1__ ASN1_ITEM ;


 int INTxx_FLAG_SIGNED ;
 int INTxx_FLAG_ZERO_DEFAULT ;
 int i2c_uint64_int (unsigned char*,int ,int) ;
 int memcpy (scalar_t__*,char*,int) ;

__attribute__((used)) static int uint32_i2c(ASN1_VALUE **pval, unsigned char *cont, int *putype,
                    const ASN1_ITEM *it)
{
    uint32_t utmp;
    int neg = 0;

    char *cp = (char *)*pval;


    memcpy(&utmp, cp, sizeof(utmp));

    if ((it->size & INTxx_FLAG_ZERO_DEFAULT) == INTxx_FLAG_ZERO_DEFAULT
        && utmp == 0)
        return -1;
    if ((it->size & INTxx_FLAG_SIGNED) == INTxx_FLAG_SIGNED
        && (int32_t)utmp < 0) {

        utmp = 0 - utmp;
        neg = 1;
    }

    return i2c_uint64_int(cont, (uint64_t)utmp, neg);
}
