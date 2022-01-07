
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPENSSL_free (char*) ;

__attribute__((used)) static void int_free_str(char *s)
{
    OPENSSL_free(s);
}
