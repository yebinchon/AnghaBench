
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent_data {int * hostf; int stayopen; } ;


 int fclose (int *) ;

void
_endhosthtent(struct hostent_data *hed)
{
 if (hed->hostf && !hed->stayopen) {
  (void) fclose(hed->hostf);
  hed->hostf = ((void*)0);
 }
}
