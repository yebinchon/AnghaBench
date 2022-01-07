
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASN1_OBJECT ;


 int OBJ_obj2txt (char*,int,int const*,int ) ;

int i2t_ASN1_OBJECT(char *buf, int buf_len, const ASN1_OBJECT *a)
{
    return OBJ_obj2txt(buf, buf_len, a, 0);
}
