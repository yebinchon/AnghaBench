
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* hx509_lock ;
struct TYPE_4__ {char** val; int len; } ;
struct TYPE_5__ {TYPE_1__ password; } ;


 int ENOMEM ;
 int free (char*) ;
 void* realloc (char**,int) ;
 char* strdup (char const*) ;

int
hx509_lock_add_password(hx509_lock lock, const char *password)
{
    void *d;
    char *s;

    s = strdup(password);
    if (s == ((void*)0))
 return ENOMEM;

    d = realloc(lock->password.val,
  (lock->password.len + 1) * sizeof(lock->password.val[0]));
    if (d == ((void*)0)) {
 free(s);
 return ENOMEM;
    }
    lock->password.val = d;
    lock->password.val[lock->password.len] = s;
    lock->password.len++;

    return 0;
}
