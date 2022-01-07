
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_mtime; scalar_t__ st_atime; } ;
typedef int buf ;


 int atomicio (int ,int,char*,int ) ;
 int fprintf (int ,char*,...) ;
 int response () ;
 int snprintf (char*,int,char*,unsigned long long,unsigned long long) ;
 int stderr ;
 int strlen (char*) ;
 int vwrite ;

__attribute__((used)) static int
do_times(int fd, int verb, const struct stat *sb)
{

 char buf[(20 + 7 + 2) * 2 + 2];

 (void)snprintf(buf, sizeof(buf), "T%llu 0 %llu 0\n",
     (unsigned long long) (sb->st_mtime < 0 ? 0 : sb->st_mtime),
     (unsigned long long) (sb->st_atime < 0 ? 0 : sb->st_atime));
 if (verb) {
  fprintf(stderr, "File mtime %lld atime %lld\n",
      (long long)sb->st_mtime, (long long)sb->st_atime);
  fprintf(stderr, "Sending file timestamps: %s", buf);
 }
 (void) atomicio(vwrite, fd, buf, strlen(buf));
 return (response());
}
