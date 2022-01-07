
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsdtar {int dummy; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int write_entry (struct bsdtar*,struct archive*,struct archive_entry*) ;

__attribute__((used)) static void
write_file(struct bsdtar *bsdtar, struct archive *a,
    struct archive_entry *entry)
{
 write_entry(bsdtar, a, entry);
}
