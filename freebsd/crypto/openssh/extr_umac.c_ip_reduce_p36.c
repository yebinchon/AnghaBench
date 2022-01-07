
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;
typedef int UINT32 ;


 int m36 ;
 int p36 ;

__attribute__((used)) static UINT32 ip_reduce_p36(UINT64 t)
{

    UINT64 ret;

    ret = (t & m36) + 5 * (t >> 36);
    if (ret >= p36)
        ret -= p36;


    return (UINT32)(ret);
}
