
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;


 int ATF_REQUIRE_EQ (int ,int) ;
 int O_RDONLY ;
 int close (int) ;
 int open (char const*,int ) ;
 int read (int,int*,int) ;

__attribute__((used)) static int
read_int(const char *path)
{
 int input;

 input = open(path, O_RDONLY);
 if (input == -1)
  return -1;
 else {
  int value;
  ATF_REQUIRE_EQ(read(input, &value, sizeof(value)), sizeof(value));
  close(input);
  return value;
 }
}
