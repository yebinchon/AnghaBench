
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct stat {int st_mode; int st_uid; int st_gid; int st_size; } ;
struct open_file {int f_fsdata; } ;


 int CALLBACK (int ,int ,int*,int*,int*,int *) ;
 int stat ;

__attribute__((used)) static int
host_stat(struct open_file *f, struct stat *sb)
{
 int mode;
 int uid;
 int gid;
 uint64_t size;

 CALLBACK(stat, f->f_fsdata, &mode, &uid, &gid, &size);
 sb->st_mode = mode;
 sb->st_uid = uid;
 sb->st_gid = gid;
 sb->st_size = size;
 return (0);
}
