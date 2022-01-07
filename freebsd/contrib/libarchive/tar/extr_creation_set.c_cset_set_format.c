
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct creation_set {char* create_format; } ;


 int free (char*) ;
 int lafe_errc (int,int ,char*) ;
 char* strdup (char const*) ;

void
cset_set_format(struct creation_set *cset, const char *format)
{
 char *f;

 f = strdup(format);
 if (f == ((void*)0))
  lafe_errc(1, 0, "No memory");
 free(cset->create_format);
 cset->create_format = f;
}
