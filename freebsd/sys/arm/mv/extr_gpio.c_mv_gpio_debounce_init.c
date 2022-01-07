
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mv_gpio_softc {int* debounce_counters; } ;
typedef int device_t ;


 int DEBOUNCE_CHECK_MS ;
 int DEBOUNCE_HI_LO_MS ;
 int DEBOUNCE_LO_HI_MS ;
 int MV_GPIO_ASSERT_LOCKED () ;
 scalar_t__ device_get_softc (int ) ;
 int mv_gpio_debounced_state_set (int ,int,int) ;
 int mv_gpio_polarity (int ,int,int,int ) ;
 scalar_t__ mv_gpio_value_get (int ,int,int) ;

__attribute__((used)) static int
mv_gpio_debounce_init(device_t dev, int pin)
{
 uint8_t raw_read;
 int *cnt;
 struct mv_gpio_softc *sc;

 sc = (struct mv_gpio_softc *)device_get_softc(dev);

 MV_GPIO_ASSERT_LOCKED();

 cnt = &sc->debounce_counters[pin];
 raw_read = (mv_gpio_value_get(dev, pin, 1) ? 1 : 0);
 if (raw_read) {
  mv_gpio_polarity(dev, pin, 1, 0);
  *cnt = DEBOUNCE_HI_LO_MS / DEBOUNCE_CHECK_MS;
 } else {
  mv_gpio_polarity(dev, pin, 0, 0);
  *cnt = DEBOUNCE_LO_HI_MS / DEBOUNCE_CHECK_MS;
 }

 mv_gpio_debounced_state_set(dev, pin, raw_read);

 return (0);
}
