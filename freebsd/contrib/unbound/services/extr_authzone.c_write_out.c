
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int errno ;
 size_t fwrite (char const*,int,size_t,int *) ;
 int log_err (char*,...) ;
 int strerror (int ) ;

__attribute__((used)) static int
write_out(FILE* out, const char* str, size_t len)
{
 size_t r;
 if(len == 0)
  return 1;
 r = fwrite(str, 1, len, out);
 if(r == 0) {
  log_err("write failed: %s", strerror(errno));
  return 0;
 } else if(r < len) {
  log_err("write failed: too short (disk full?)");
  return 0;
 }
 return 1;
}
