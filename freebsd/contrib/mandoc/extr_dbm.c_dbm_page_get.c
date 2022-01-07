
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dbm_page {char* name; char* sect; char* arch; char* desc; char* file; int addr; } ;
typedef size_t int32_t ;
struct TYPE_3__ {scalar_t__ file; scalar_t__ desc; scalar_t__ arch; scalar_t__ sect; scalar_t__ name; } ;


 int assert (int) ;
 int dbm_addr (TYPE_1__*) ;
 char* dbm_get (scalar_t__) ;
 size_t npages ;
 TYPE_1__* pages ;

struct dbm_page *
dbm_page_get(int32_t ip)
{
 static struct dbm_page res;

 assert(ip >= 0);
 assert(ip < npages);
 res.name = dbm_get(pages[ip].name);
 if (res.name == ((void*)0))
  res.name = "(NULL)\0";
 res.sect = dbm_get(pages[ip].sect);
 if (res.sect == ((void*)0))
  res.sect = "(NULL)\0";
 res.arch = pages[ip].arch ? dbm_get(pages[ip].arch) : ((void*)0);
 res.desc = dbm_get(pages[ip].desc);
 if (res.desc == ((void*)0))
  res.desc = "(NULL)";
 res.file = dbm_get(pages[ip].file);
 if (res.file == ((void*)0))
  res.file = " (NULL)\0";
 res.addr = dbm_addr(pages + ip);
 return &res;
}
