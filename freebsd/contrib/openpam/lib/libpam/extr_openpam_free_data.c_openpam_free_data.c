
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pam_handle_t ;


 int ENTER () ;
 int FREE (void*) ;
 int RETURNV () ;

void
openpam_free_data(pam_handle_t *pamh,
 void *data,
 int status)
{

 ENTER();
 (void)pamh;
 (void)status;
 FREE(data);
 RETURNV();
}
