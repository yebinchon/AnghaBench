
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TAILQ_INIT (int *) ;
 int pkcs11_interactive ;
 int pkcs11_providers ;

int
pkcs11_init(int interactive)
{
 pkcs11_interactive = interactive;
 TAILQ_INIT(&pkcs11_providers);
 return (0);
}
