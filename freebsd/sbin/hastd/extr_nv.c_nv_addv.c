
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct nv {int dummy; } ;
typedef int name ;


 int PJDLOG_ASSERT (int) ;
 int nv_add (struct nv*,unsigned char const*,size_t,int,char*) ;
 size_t vsnprintf (char*,int,char const*,int ) ;

__attribute__((used)) static void
nv_addv(struct nv *nv, const unsigned char *value, size_t vsize, int type,
    const char *namefmt, va_list nameap)
{
 char name[255];
 size_t namesize;

 namesize = vsnprintf(name, sizeof(name), namefmt, nameap);
 PJDLOG_ASSERT(namesize > 0 && namesize < sizeof(name));

 nv_add(nv, value, vsize, type, name);
}
