
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* SetAttribute ) (TYPE_1__*,int ) ;} ;
typedef int EFI_STATUS ;


 int CD () ;
 int CM () ;
 int DEFAULT_BGCOLOR ;
 int DEFAULT_FGCOLOR ;
 int EFI_TEXT_ATTR (int,int) ;
 int HO () ;
 int MAXARGS ;
 size_t argc ;
 int * args ;
 int bail_out (int) ;
 int bg_c ;
 TYPE_1__* conout ;
 int efi_cons_rawputchar (int) ;
 int end_term () ;
 int esc ;
 int fg_c ;
 int get_arg (int) ;
 int isdigit (int) ;
 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static void
efi_term_emu(int c)
{
 efi_cons_rawputchar(c);

}
