
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int coding; } ;
union uni_ieall {TYPE_1__ h; } ;
struct unicx {int dummy; } ;
struct iedecl {int (* print ) (union uni_ieall const*,struct unicx*) ;} ;
typedef enum uni_ietype { ____Placeholder_uni_ietype } uni_ietype ;


 struct iedecl* GET_IEDECL (int,int ) ;
 int stub1 (union uni_ieall const*,struct unicx*) ;

void
uni_print_ie_internal(enum uni_ietype code, const union uni_ieall *ie,
    struct unicx *cx)
{
 const struct iedecl *iedecl;

 if((iedecl = GET_IEDECL(code, ie->h.coding)) != ((void*)0))
  (*iedecl->print)(ie, cx);
}
