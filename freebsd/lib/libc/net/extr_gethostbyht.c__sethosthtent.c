
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent_data {int stayopen; scalar_t__ hostf; } ;


 int _PATH_HOSTS ;
 scalar_t__ fopen (int ,char*) ;
 int rewind (scalar_t__) ;

void
_sethosthtent(int f, struct hostent_data *hed)
{
 if (!hed->hostf)
  hed->hostf = fopen(_PATH_HOSTS, "re");
 else
  rewind(hed->hostf);
 hed->stayopen = f;
}
