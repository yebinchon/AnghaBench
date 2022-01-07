
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {int dummy; } ;


 struct hostent* gethostbyname (char const*) ;

struct hostent *BIO_gethostbyname(const char *name)
{




    return gethostbyname(name);
}
