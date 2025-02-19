
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int archive_match_path_unmatched_inclusions (struct archive*) ;
 int archive_match_path_unmatched_inclusions_next (struct archive*,char const**) ;
 int errno ;
 int lafe_errc (int,int ,char*) ;
 int lafe_warnc (int ,char*,char const*,char const*) ;

__attribute__((used)) static int
unmatched_inclusions_warn(struct archive *matching, const char *msg)
{
 const char *p;
 int r;

 if (matching == ((void*)0))
  return (0);

 while ((r = archive_match_path_unmatched_inclusions_next(
     matching, &p)) == ARCHIVE_OK)
  lafe_warnc(0, "%s: %s", p, msg);
 if (r == ARCHIVE_FATAL)
  lafe_errc(1, errno, "Out of memory");

 return (archive_match_path_unmatched_inclusions(matching));
}
