
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t varInds_t ;
typedef size_t const U32 ;


 int DISPLAY (char*) ;
 int MAX (int ,int ) ;
 int MIN (int,int) ;

 int assert (int ) ;



 size_t const* mintable ;

 scalar_t__* rangetable ;



 size_t const* tlen_table ;


__attribute__((used)) static U32 rangeMap(varInds_t param, int ind)
{
    U32 const uind = (U32)MAX(MIN(ind, (int)rangetable[param] - 1), 0);
    switch(param) {
        case 128:
        case 135:
        case 133:
        case 131:
        case 132:
        case 130:
            return mintable[param] + uind;
        case 129:
            return tlen_table[uind];
        case 134:
            return uind - 1;
        case 136:
        default:;
    }
    DISPLAY("Error, not a valid param\n ");
    assert(0);
    return (U32)-1;
}
