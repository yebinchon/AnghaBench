
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
typedef scalar_t__ u_int ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {scalar_t__ halNumGpioPins; } ;
struct TYPE_4__ {TYPE_1__ ah_caps; } ;


 TYPE_2__* AH_PRIVATE (struct ath_hal*) ;
 scalar_t__ AR9382_GPIO_PIN_8_RESERVED ;
 scalar_t__ AR9382_MAX_GPIO_INPUT_PIN_NUM ;
 int ARRAY_LENGTH (scalar_t__*) ;
 int AR_GPIO_INTR_POL ;
 scalar_t__ AR_HOSTIF_REG (struct ath_hal*,int ) ;
 int AR_INTR_ASYNC_ENABLE ;
 scalar_t__ AR_INTR_ASYNC_ENABLE_GPIO_S ;
 int AR_INTR_ASYNC_MASK ;
 scalar_t__ AR_INTR_ASYNC_MASK_GPIO_S ;
 int AR_INTR_SYNC_ENABLE ;
 scalar_t__ AR_INTR_SYNC_ENABLE_GPIO_S ;
 int AR_INTR_SYNC_MASK ;
 scalar_t__ AR_INTR_SYNC_MASK_GPIO_S ;
 int HALASSERT (int) ;
 scalar_t__ HAL_GPIO_INTR_DISABLE ;
 scalar_t__ HAL_GPIO_INTR_HIGH ;
 scalar_t__ HAL_GPIO_INTR_LOW ;
 scalar_t__ OS_REG_READ (struct ath_hal*,scalar_t__) ;
 int OS_REG_WRITE (struct ath_hal*,scalar_t__,scalar_t__) ;

void
ar9300_gpio_set_intr(struct ath_hal *ah, u_int gpio, u_int32_t ilevel)
{


    int i, reg_bit;
    u_int32_t reg_val;
    u_int32_t regs[2], shifts[2];
    regs[0] = AR_HOSTIF_REG(ah, AR_INTR_SYNC_ENABLE);
    regs[1] = AR_HOSTIF_REG(ah, AR_INTR_SYNC_MASK);
    shifts[0] = AR_INTR_SYNC_ENABLE_GPIO_S;
    shifts[1] = AR_INTR_SYNC_MASK_GPIO_S;


    HALASSERT(gpio < AH_PRIVATE(ah)->ah_caps.halNumGpioPins);

    if ((gpio == AR9382_GPIO_PIN_8_RESERVED) ||
        (gpio > AR9382_MAX_GPIO_INPUT_PIN_NUM))
    {
        return;
    }




    if (ilevel == HAL_GPIO_INTR_DISABLE) {

        for (i = 0; i < ARRAY_LENGTH(regs); i++) {
            reg_val = OS_REG_READ(ah, regs[i]);
            reg_bit = shifts[i] + gpio;
            reg_val &= ~(1 << reg_bit);
            OS_REG_WRITE(ah, regs[i], reg_val);







        }

    } else {
        reg_val = OS_REG_READ(ah, AR_HOSTIF_REG(ah, AR_GPIO_INTR_POL));
        reg_bit = gpio;
        if (ilevel == HAL_GPIO_INTR_HIGH) {

            reg_val &= ~(1 << reg_bit);
        } else if (ilevel == HAL_GPIO_INTR_LOW) {

            reg_val |= (1 << reg_bit);
        }
        OS_REG_WRITE(ah, AR_HOSTIF_REG(ah, AR_GPIO_INTR_POL), reg_val);


        for (i = 0; i < ARRAY_LENGTH(regs); i++) {
            reg_val = OS_REG_READ(ah, regs[i]);
            reg_bit = shifts[i] + gpio;
            reg_val |= (1 << reg_bit);
            OS_REG_WRITE(ah, regs[i], reg_val);







        }
    }
}
