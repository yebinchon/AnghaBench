
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;


 int free (struct sockaddr*) ;

void
nb_snbfree(struct sockaddr *snb)
{
 free(snb);
}
