
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _rtld_error (char*,char*) ;
 int * error_message ;
 int free (char*) ;

__attribute__((used)) static void
errmsg_restore(char *saved_msg)
{
    if (saved_msg == ((void*)0))
 error_message = ((void*)0);
    else {
 _rtld_error("%s", saved_msg);
 free(saved_msg);
    }
}
