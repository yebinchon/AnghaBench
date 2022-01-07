
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union uni_ieall {int dummy; } uni_ieall ;
struct unicx {int dummy; } ;
typedef enum uni_ietype { ____Placeholder_uni_ietype } uni_ietype ;


 int uni_print_ie_internal (int,union uni_ieall const*,struct unicx*) ;
 int uni_print_init (char*,size_t,struct unicx*) ;

void
uni_print_ie(char *buf, size_t size, enum uni_ietype code,
    const union uni_ieall *ie, struct unicx *cx)
{
 uni_print_init(buf, size, cx);
 uni_print_ie_internal(code, ie, cx);
}
