
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_2__ {char* (* to_make_corefile_notes ) (int *,int*) ;} ;


 TYPE_1__ procfs_ops ;
 char* stub1 (int *,int*) ;

__attribute__((used)) static char *
sol_make_note_section (bfd *obfd, int *note_size)
{
  return procfs_ops.to_make_corefile_notes (obfd, note_size);
}
