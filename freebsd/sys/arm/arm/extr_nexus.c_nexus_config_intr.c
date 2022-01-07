
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum intr_trigger { ____Placeholder_intr_trigger } intr_trigger ;
typedef enum intr_polarity { ____Placeholder_intr_polarity } intr_polarity ;
typedef int device_t ;


 int ENODEV ;
 int EOPNOTSUPP ;
 int arm_config_irq (int,int,int) ;
 int device_printf (int ,char*) ;
 int stub1 (int,int,int) ;

__attribute__((used)) static int
nexus_config_intr(device_t dev, int irq, enum intr_trigger trig,
    enum intr_polarity pol)
{
 int ret = ENODEV;





 if (arm_config_irq)
  ret = (*arm_config_irq)(irq, trig, pol);

 return (ret);
}
