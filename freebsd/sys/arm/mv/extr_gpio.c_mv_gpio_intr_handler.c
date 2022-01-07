
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mv_gpio_softc {TYPE_1__** gpio_events; } ;
struct intr_irqsrc {TYPE_1__* isrc_event; int * isrc_filter; } ;
typedef int device_t ;
struct TYPE_2__ {int ie_handlers; } ;


 scalar_t__ CK_SLIST_EMPTY (int *) ;
 int MV_GPIO_ASSERT_LOCKED () ;
 scalar_t__ device_get_softc (int ) ;
 int intr_isrc_dispatch (struct intr_irqsrc*,int *) ;

__attribute__((used)) static void
mv_gpio_intr_handler(device_t dev, int pin)
{
}
