
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int _PATH_HOSTS ;
 int * fopen (int ,char*) ;
 int rewind (int *) ;

__attribute__((used)) static void
_sethtent(FILE **hostf)
{
 if (!*hostf)
  *hostf = fopen(_PATH_HOSTS, "re");
 else
  rewind(*hostf);
}
