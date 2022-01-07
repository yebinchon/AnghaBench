
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;


 int ATF_REQUIRE_MSG (int,char*,char const*) ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int close (int) ;
 int open (char const*,int,int) ;
 int write (int,int const*,int) ;

__attribute__((used)) static void
write_int(const char *path, const int value)
{
 int output;

 output = open(path, O_WRONLY | O_CREAT | O_TRUNC, 0600);
 ATF_REQUIRE_MSG(output != -1, "Failed to create %s", path);
 write(output, &value, sizeof(value));
 close(output);
}
