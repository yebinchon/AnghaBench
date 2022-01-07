
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;


 int SSCOM_UTRSTAT ;
 int UTRSTAT_RXREADY ;
 int uart_getreg (struct uart_bas*,int ) ;

__attribute__((used)) static int
exynos4210_rxready(struct uart_bas *bas)
{

 return ((uart_getreg(bas, SSCOM_UTRSTAT) & UTRSTAT_RXREADY) ==
     UTRSTAT_RXREADY);
}
