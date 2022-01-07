
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unicx {int dummy; } ;
struct uni {struct unicx cx; } ;



struct unicx *
uni_context(struct uni *uni)
{
 return (&uni->cx);
}
