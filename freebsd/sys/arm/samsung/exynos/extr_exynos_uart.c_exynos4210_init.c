
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {scalar_t__ rclk; } ;


 scalar_t__ DEF_CLK ;
 int KASSERT (int,char*) ;
 int SSCOM_UCON ;
 int SSCOM_UFCON ;
 int SSCOM_UMCON ;
 int UCON_RXMODE_INT ;
 int UCON_TOINT ;
 int UCON_TXMODE_INT ;
 int UFCON_FIFO_ENABLE ;
 int UFCON_RXFIFO_RESET ;
 int UFCON_RXTRIGGER_8 ;
 int UFCON_TXFIFO_RESET ;
 int UFCON_TXTRIGGER_8 ;
 int UMCON_RTS ;
 int exynos4210_uart_param (struct uart_bas*,int,int,int,int) ;
 int uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static void
exynos4210_init(struct uart_bas *bas, int baudrate, int databits, int stopbits,
    int parity)
{

 if (bas->rclk == 0)
  bas->rclk = DEF_CLK;

 KASSERT(bas->rclk != 0, ("exynos4210_init: Invalid rclk"));

 uart_setreg(bas, SSCOM_UCON, 0);
 uart_setreg(bas, SSCOM_UFCON,
     UFCON_TXTRIGGER_8 | UFCON_RXTRIGGER_8 |
     UFCON_TXFIFO_RESET | UFCON_RXFIFO_RESET |
     UFCON_FIFO_ENABLE);
 exynos4210_uart_param(bas, baudrate, databits, stopbits, parity);


 uart_setreg(bas, SSCOM_UCON, UCON_TXMODE_INT | UCON_RXMODE_INT |
     UCON_TOINT);
 uart_setreg(bas, SSCOM_UMCON, UMCON_RTS);
}
