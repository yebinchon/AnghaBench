
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write_disk {int name; int fd; int entry; } ;
typedef int mode_t ;


 int EXT2_APPEND_FL ;
 int EXT2_IMMUTABLE_FL ;
 int SF_APPEND ;
 int SF_IMMUTABLE ;
 int UF_APPEND ;
 int UF_IMMUTABLE ;
 int archive_entry_mode (int ) ;
 int set_fflags_platform (struct archive_write_disk*,int ,int ,int ,int ,int const) ;

__attribute__((used)) static int
clear_nochange_fflags(struct archive_write_disk *a)
{
 mode_t mode = archive_entry_mode(a->entry);
 const int nochange_flags = 0
 ;

 return (set_fflags_platform(a, a->fd, a->name, mode, 0,
     nochange_flags));
}
