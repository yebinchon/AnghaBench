
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_ino; scalar_t__ st_dev; } ;


 int _ (char*) ;
 int errno ;
 int lstat (char const*,struct stat*) ;
 scalar_t__ memcmp (scalar_t__*,scalar_t__*,int) ;
 int message_error (int ,char const*,...) ;
 scalar_t__ opt_force ;
 int stat (char const*,struct stat*) ;
 int strerror (int ) ;
 scalar_t__ unlink (char const*) ;

__attribute__((used)) static void
io_unlink(const char *name, const struct stat *known_st)
{





 struct stat new_st;
 const int stat_ret = opt_force
   ? stat(name, &new_st) : lstat(name, &new_st);

 if (stat_ret







   || new_st.st_dev != known_st->st_dev
   || new_st.st_ino != known_st->st_ino

   )
  message_error(_("%s: File seems to have been moved, "
    "not removing"), name);
 else



  if (unlink(name))
   message_error(_("%s: Cannot remove: %s"),
     name, strerror(errno));

 return;
}
