
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
typedef int off_t ;


 int ATF_REQUIRE (int) ;
 int stat (char const*,struct stat*) ;

__attribute__((used)) static off_t
filesize(const char * restrict fname)
{
 struct stat st;
 int err;

 err = stat(fname, &st);
 ATF_REQUIRE(err == 0);
 return st.st_size;
}
