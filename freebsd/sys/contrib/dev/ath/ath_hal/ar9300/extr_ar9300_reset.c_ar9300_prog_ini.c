
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_hal {int dummy; } ;
struct ar9300_ini_array {int ia_columns; int ia_rows; int * ia_array; } ;


 int INI_RA (struct ar9300_ini_array*,int,int) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int ) ;
 int WAR_6773 (int) ;

__attribute__((used)) static inline void
ar9300_prog_ini(struct ath_hal *ah, struct ar9300_ini_array *ini_arr,
    int column)
{
    int i, reg_writes = 0;


    if (ini_arr->ia_array == ((void*)0)) {
        return;
    }






    if (column >= ini_arr->ia_columns) {
        column = 1;
    }

    for (i = 0; i < ini_arr->ia_rows; i++) {
        u_int32_t reg = INI_RA(ini_arr, i, 0);
        u_int32_t val = INI_RA(ini_arr, i, column);







        OS_REG_WRITE(ah, reg, val);
        WAR_6773(reg_writes);

    }
}
