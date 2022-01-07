
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_3__ {scalar_t__ output_offset; struct TYPE_3__* output_section; } ;
typedef TYPE_1__ asection ;



__attribute__((used)) static void
symfile_dummy_outputs (bfd *abfd, asection *sectp, void *dummy)
{
  sectp->output_section = sectp;
  sectp->output_offset = 0;
}
