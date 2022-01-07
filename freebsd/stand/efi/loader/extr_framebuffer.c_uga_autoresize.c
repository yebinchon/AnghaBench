
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EFI_UGA_DRAW_PROTOCOL ;


 int text_autoresize () ;

__attribute__((used)) static int
uga_autoresize(EFI_UGA_DRAW_PROTOCOL *uga)
{

 return (text_autoresize());
}
