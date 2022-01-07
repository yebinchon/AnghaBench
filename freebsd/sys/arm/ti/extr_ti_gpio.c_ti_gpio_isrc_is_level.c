
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_gpio_irqsrc {scalar_t__ tgi_mode; } ;


 scalar_t__ GPIO_INTR_LEVEL_HIGH ;
 scalar_t__ GPIO_INTR_LEVEL_LOW ;

__attribute__((used)) static inline bool
ti_gpio_isrc_is_level(struct ti_gpio_irqsrc *tgi)
{

 return (tgi->tgi_mode == GPIO_INTR_LEVEL_LOW ||
     tgi->tgi_mode == GPIO_INTR_LEVEL_HIGH);
}
