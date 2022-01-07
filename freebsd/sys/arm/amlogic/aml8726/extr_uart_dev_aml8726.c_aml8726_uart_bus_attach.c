
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct uart_bas {scalar_t__ rclk; } ;
struct uart_softc {TYPE_1__* sc_sysdev; int sc_dev; struct uart_bas sc_bas; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 int AML_UART_CONTROL_CLR_ERR ;
 int AML_UART_CONTROL_REG ;
 int AML_UART_CONTROL_RX_EN ;
 int AML_UART_CONTROL_RX_INT_EN ;
 int AML_UART_CONTROL_RX_RST ;
 int AML_UART_CONTROL_TWO_WIRE_EN ;
 int AML_UART_CONTROL_TX_EN ;
 int AML_UART_CONTROL_TX_INT_EN ;
 int AML_UART_CONTROL_TX_RST ;
 int AML_UART_MISC_RECV_IRQ_CNT_MASK ;
 int AML_UART_MISC_RECV_IRQ_CNT_SHIFT ;
 int AML_UART_MISC_REG ;
 int AML_UART_MISC_XMIT_IRQ_CNT_MASK ;
 int AML_UART_MISC_XMIT_IRQ_CNT_SHIFT ;
 int ENXIO ;
 scalar_t__ UART_DEV_CONSOLE ;
 scalar_t__ aml8726_uart_bus_clk (int ) ;
 int aml8726_uart_bus_getsig (struct uart_softc*) ;
 int device_printf (int ,char*) ;
 int ofw_bus_get_node (int ) ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static int
aml8726_uart_bus_attach(struct uart_softc *sc)
{
 struct uart_bas *bas;
 uint32_t cr;
 uint32_t mr;

 bas = &sc->sc_bas;

 bas->rclk = aml8726_uart_bus_clk(ofw_bus_get_node(sc->sc_dev));

 if (bas->rclk == 0) {
  device_printf(sc->sc_dev, "missing clocks attribute in FDT\n");
  return (ENXIO);
 }

 cr = uart_getreg(bas, AML_UART_CONTROL_REG);

 cr &= ~(AML_UART_CONTROL_TX_INT_EN | AML_UART_CONTROL_RX_INT_EN);

 cr &= ~(AML_UART_CONTROL_TX_RST | AML_UART_CONTROL_RX_RST);
 if (sc->sc_sysdev != ((void*)0) && sc->sc_sysdev->type == UART_DEV_CONSOLE)
  ;
 else
  cr |= (AML_UART_CONTROL_TX_RST | AML_UART_CONTROL_RX_RST);


 cr |= AML_UART_CONTROL_TWO_WIRE_EN;

 cr |= (AML_UART_CONTROL_TX_EN | AML_UART_CONTROL_RX_EN);

 cr |= AML_UART_CONTROL_CLR_ERR;
 uart_setreg(bas, AML_UART_CONTROL_REG, cr);
 uart_barrier(bas);


 mr = uart_getreg(bas, AML_UART_MISC_REG);
 mr &= ~AML_UART_MISC_XMIT_IRQ_CNT_MASK;
 mr |= (0 << AML_UART_MISC_XMIT_IRQ_CNT_SHIFT);
 mr &= ~AML_UART_MISC_RECV_IRQ_CNT_MASK;
 mr |= (1 << AML_UART_MISC_RECV_IRQ_CNT_SHIFT);
 uart_setreg(bas, AML_UART_MISC_REG, mr);
 uart_barrier(bas);

 aml8726_uart_bus_getsig(sc);


 cr &= ~(AML_UART_CONTROL_TX_RST | AML_UART_CONTROL_RX_RST);
 cr &= ~AML_UART_CONTROL_CLR_ERR;

 cr |= AML_UART_CONTROL_RX_INT_EN;
 uart_setreg(bas, AML_UART_CONTROL_REG, cr);
 uart_barrier(bas);

 return (0);
}
