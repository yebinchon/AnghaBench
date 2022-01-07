
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PKCS7 ;


 int PKCS7_free (int *) ;
 int * PKCS7_new () ;
 int PKCS7_set_content (int *,int *) ;
 int PKCS7_set_type (int *,int) ;

int PKCS7_content_new(PKCS7 *p7, int type)
{
    PKCS7 *ret = ((void*)0);

    if ((ret = PKCS7_new()) == ((void*)0))
        goto err;
    if (!PKCS7_set_type(ret, type))
        goto err;
    if (!PKCS7_set_content(p7, ret))
        goto err;

    return 1;
 err:
    PKCS7_free(ret);
    return 0;
}
