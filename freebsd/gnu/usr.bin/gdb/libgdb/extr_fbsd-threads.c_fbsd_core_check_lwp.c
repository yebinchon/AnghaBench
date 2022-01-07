
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ lwpid_t ;
typedef int bfd ;
typedef int asection ;


 scalar_t__ atoi (scalar_t__) ;
 scalar_t__ bfd_section_name (int *,int *) ;
 scalar_t__ strncmp (scalar_t__,char*,int) ;

__attribute__((used)) static void
fbsd_core_check_lwp (bfd *abfd, asection *asect, void *obj)
{
  lwpid_t lwp;

  if (strncmp (bfd_section_name (abfd, asect), ".reg/", 5) != 0)
    return;


  if (*(lwpid_t *)obj == 0)
    return;

  lwp = atoi (bfd_section_name (abfd, asect) + 5);
  if (*(lwpid_t *)obj == lwp)
    *(lwpid_t *)obj = 0;
}
