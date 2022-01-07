
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ txt_fd; scalar_t__ txt_zero_fd; } ;
typedef TYPE_1__ tmap_info_t ;


 scalar_t__ AO_INVALID_FD ;
 int close (scalar_t__) ;

__attribute__((used)) static void
close_mmap_files(tmap_info_t * mi)
{
    if (mi->txt_fd == AO_INVALID_FD)
        return;

    close(mi->txt_fd);
    mi->txt_fd = AO_INVALID_FD;
}
