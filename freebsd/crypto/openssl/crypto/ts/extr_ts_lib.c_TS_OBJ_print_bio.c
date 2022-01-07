
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obj_txt ;
typedef int BIO ;
typedef int ASN1_OBJECT ;


 int BIO_printf (int *,char*,char*) ;
 int OBJ_obj2txt (char*,int,int const*,int ) ;

int TS_OBJ_print_bio(BIO *bio, const ASN1_OBJECT *obj)
{
    char obj_txt[128];

    OBJ_obj2txt(obj_txt, sizeof(obj_txt), obj, 0);
    BIO_printf(bio, "%s\n", obj_txt);

    return 1;
}
