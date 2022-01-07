
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ctftab; } ;
typedef TYPE_1__ linker_ctf_t ;
struct TYPE_5__ {int cth_strlen; scalar_t__ cth_stroff; } ;
typedef TYPE_2__ ctf_header_t ;



__attribute__((used)) static const char *
ctf_strptr(linker_ctf_t *lc, int name)
{
 const ctf_header_t *hp = (const ctf_header_t *) lc->ctftab;;
 const char *strp = "";

 if (name < 0 || name >= hp->cth_strlen)
  return(strp);

 strp = (const char *)(lc->ctftab + hp->cth_stroff + name + sizeof(ctf_header_t));

 return (strp);
}
