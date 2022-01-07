
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
typedef int off_t ;


 int ATF_REQUIRE_EQ_MSG (int ,int ,char*,int ) ;
 int errno ;
 int fstat (int,struct stat*) ;
 int strerror (int ) ;

__attribute__((used)) static off_t
file_size_from_fd(int fd)
{
 struct stat st;

 ATF_REQUIRE_EQ_MSG(0, fstat(fd, &st),
     "fstat failed: %s", strerror(errno));

 return (st.st_size);
}
