
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int bsh; int bst; } ;
struct mtx {int dummy; } ;


 int SSCOM_URXH ;
 int SSCOM_UTRSTAT ;
 int UTRSTAT_RXREADY ;
 int bus_space_read_1 (int ,int ,int ) ;

__attribute__((used)) static int
exynos4210_getc(struct uart_bas *bas, struct mtx *mtx)
{
 int utrstat;

 utrstat = bus_space_read_1(bas->bst, bas->bsh, SSCOM_UTRSTAT);
 while (!(utrstat & UTRSTAT_RXREADY)) {
  utrstat = bus_space_read_1(bas->bst, bas->bsh, SSCOM_UTRSTAT);
  continue;
 }

 return (bus_space_read_1(bas->bst, bas->bsh, SSCOM_URXH));
}
