
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_hal {int dummy; } ;


 int AR_GPIO_OUTPUT_MUX1 ;
 int AR_GPIO_OUTPUT_MUX2 ;
 int AR_GPIO_OUTPUT_MUX3 ;
 int AR_HOSTIF_REG (struct ath_hal*,int ) ;
 int OS_REG_RMW (struct ath_hal*,int,int,int) ;

__attribute__((used)) static void
ar9300_gpio_cfg_output_mux(struct ath_hal *ah, u_int32_t gpio, u_int32_t type)
{
    int addr;
    u_int32_t gpio_shift;


    if (gpio > 11) {
        addr = AR_HOSTIF_REG(ah, AR_GPIO_OUTPUT_MUX3);
    } else if (gpio > 5) {
        addr = AR_HOSTIF_REG(ah, AR_GPIO_OUTPUT_MUX2);
    } else {
        addr = AR_HOSTIF_REG(ah, AR_GPIO_OUTPUT_MUX1);
    }






    gpio_shift = (gpio % 6) * 5;

    OS_REG_RMW(ah, addr, (type << gpio_shift), (0x1f << gpio_shift));
}
