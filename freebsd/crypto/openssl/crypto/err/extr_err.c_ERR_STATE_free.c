
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ERR_STATE ;


 int ERR_NUM_ERRORS ;
 int OPENSSL_free (int *) ;
 int err_clear_data (int *,int) ;

__attribute__((used)) static void ERR_STATE_free(ERR_STATE *s)
{
    int i;

    if (s == ((void*)0))
        return;
    for (i = 0; i < ERR_NUM_ERRORS; i++) {
        err_clear_data(s, i);
    }
    OPENSSL_free(s);
}
