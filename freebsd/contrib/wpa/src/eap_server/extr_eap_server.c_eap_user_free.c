
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_user {int * salt; int salt_len; int * password; int password_len; } ;


 int bin_clear_free (int *,int ) ;
 int os_free (struct eap_user*) ;

void eap_user_free(struct eap_user *user)
{
 if (user == ((void*)0))
  return;
 bin_clear_free(user->password, user->password_len);
 user->password = ((void*)0);
 bin_clear_free(user->salt, user->salt_len);
 user->salt = ((void*)0);
 os_free(user);
}
