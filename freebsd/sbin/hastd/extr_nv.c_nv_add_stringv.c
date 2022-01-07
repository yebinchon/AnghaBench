
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct nv {scalar_t__ nv_error; } ;
typedef int ssize_t ;


 scalar_t__ ENOMEM ;
 int NV_TYPE_STRING ;
 int free (char*) ;
 int nv_add (struct nv*,unsigned char const*,int,int ,char const*) ;
 int vasprintf (char**,char const*,int ) ;

void
nv_add_stringv(struct nv *nv, const char *name, const char *valuefmt,
    va_list valueap)
{
 char *value;
 ssize_t size;

 size = vasprintf(&value, valuefmt, valueap);
 if (size == -1) {
  if (nv->nv_error == 0)
   nv->nv_error = ENOMEM;
  return;
 }
 size++;
 nv_add(nv, (const unsigned char *)value, size, NV_TYPE_STRING, name);
 free(value);
}
