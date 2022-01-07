
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const** h_errlist ;
 int h_nerr ;

const char *
hstrerror(int err) {
 if (err < 0)
  return ("Resolver internal error");
 else if (err < h_nerr)
  return (h_errlist[err]);
 return ("Unknown resolver error");
}
