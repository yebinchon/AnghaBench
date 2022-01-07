
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int
exynos4210_bus_ioctl(struct uart_softc *sc, int request, intptr_t data)
{

 return (EINVAL);
}
