
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {int dummy; } ;


 int free (struct hostent*) ;

void
freehostent(struct hostent *ptr)
{
 free(ptr);
}
