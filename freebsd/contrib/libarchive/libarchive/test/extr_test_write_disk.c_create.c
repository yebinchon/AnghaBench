
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 scalar_t__ AE_IFDIR ;
 int MODE_MASK ;
 int S_ISGID ;
 int UMASK ;
 scalar_t__ archive_entry_filetype (struct archive_entry*) ;
 int archive_entry_mode (struct archive_entry*) ;
 int archive_entry_pathname (struct archive_entry*) ;
 struct archive* archive_write_disk_new () ;
 int archive_write_finish_entry (struct archive*) ;
 int archive_write_free (struct archive*) ;
 int archive_write_header (struct archive*,struct archive_entry*) ;
 int assert (int) ;
 int assertEqualInt (int,int) ;
 int assertEqualIntA (struct archive*,int ,int ) ;
 int failure (char*,char const*) ;
 scalar_t__ stat (int ,struct stat*) ;

__attribute__((used)) static void create(struct archive_entry *ae, const char *msg)
{
 struct archive *ad;
 struct stat st;


 assert((ad = archive_write_disk_new()) != ((void*)0));
 failure("%s", msg);
 assertEqualIntA(ad, 0, archive_write_header(ad, ae));
 assertEqualIntA(ad, 0, archive_write_finish_entry(ad));
 assertEqualInt(0, archive_write_free(ad));


 assert(0 == stat(archive_entry_pathname(ae), &st));
 failure("%s", msg);




 if (archive_entry_filetype(ae) == AE_IFDIR)
  st.st_mode &= ~S_ISGID;
 assertEqualInt(st.st_mode & MODE_MASK,
     archive_entry_mode(ae) & ~UMASK & MODE_MASK);

}
