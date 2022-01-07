
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int bsh; int bst; } ;


 int SSCOM_UFSTAT ;
 int SSCOM_UTXH ;
 int UFSTAT_TXFULL ;
 int bus_space_read_4 (int ,int ,int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static void
exynos4210_putc(struct uart_bas *bas, int c)
{

 while ((bus_space_read_4(bas->bst, bas->bsh, SSCOM_UFSTAT) &
  UFSTAT_TXFULL) == UFSTAT_TXFULL)
  continue;

 uart_setreg(bas, SSCOM_UTXH, c);
}
