
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int txt_errno; int txt_data; int txt_size; int txt_fd; int txt_flags; int txt_prot; int txt_full_size; } ;
typedef TYPE_1__ tmap_info_t ;


 scalar_t__ FILE_WRITABLE (int ,int ) ;
 int SEEK_SET ;
 int close_mmap_files (TYPE_1__*) ;
 int errno ;
 int free (int ) ;
 scalar_t__ lseek (int ,int ,int ) ;
 int munmap (int ,int ) ;
 int write (int ,int ,int ) ;

int
text_munmap(tmap_info_t * mi)
{
    errno = 0;
    if ( FILE_WRITABLE(mi->txt_prot, mi->txt_flags)
        && (lseek(mi->txt_fd, 0, SEEK_SET) >= 0) ) {
        write(mi->txt_fd, mi->txt_data, mi->txt_size);
    }

    free(mi->txt_data);


    mi->txt_errno = errno;
    close_mmap_files(mi);

    return mi->txt_errno;
}
