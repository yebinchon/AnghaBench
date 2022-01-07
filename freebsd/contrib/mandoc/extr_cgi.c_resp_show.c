
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct req {int dummy; } ;


 int resp_catman (struct req const*,char const*) ;
 int resp_format (struct req const*,char const*) ;

__attribute__((used)) static void
resp_show(const struct req *req, const char *file)
{

 if ('.' == file[0] && '/' == file[1])
  file += 2;

 if ('c' == *file)
  resp_catman(req, file);
 else
  resp_format(req, file);
}
