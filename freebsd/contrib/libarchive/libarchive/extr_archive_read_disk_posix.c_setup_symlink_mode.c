
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive_read_disk {char symlink_mode; int follow_symlinks; TYPE_1__* tree; } ;
struct TYPE_2__ {char initial_symlink_mode; char symlink_mode; } ;



__attribute__((used)) static void
setup_symlink_mode(struct archive_read_disk *a, char symlink_mode,
    int follow_symlinks)
{
 a->symlink_mode = symlink_mode;
 a->follow_symlinks = follow_symlinks;
 if (a->tree != ((void*)0)) {
  a->tree->initial_symlink_mode = a->symlink_mode;
  a->tree->symlink_mode = a->symlink_mode;
 }
}
