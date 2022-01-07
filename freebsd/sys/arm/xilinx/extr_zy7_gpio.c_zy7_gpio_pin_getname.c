
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int device_t ;


 int EINVAL ;
 scalar_t__ EMIO_PIN ;
 int GPIOMAXNAME ;
 scalar_t__ NUM_MIO_PINS ;
 int VALID_PIN (scalar_t__) ;
 int snprintf (char*,int,char*,scalar_t__) ;

__attribute__((used)) static int
zy7_gpio_pin_getname(device_t dev, uint32_t pin, char *name)
{

 if (!VALID_PIN(pin))
  return (EINVAL);

 if (pin < NUM_MIO_PINS) {
  snprintf(name, GPIOMAXNAME, "MIO_%d", pin);
  name[GPIOMAXNAME - 1] = '\0';
 } else {
  snprintf(name, GPIOMAXNAME, "EMIO_%d", pin - EMIO_PIN);
  name[GPIOMAXNAME - 1] = '\0';
 }

 return (0);
}
