
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int data ;
typedef int XXH64_state_t ;


 int MEM_isLittleEndian () ;
 int MEM_swap64 (int ) ;
 int XXH64_update (int *,int *,int) ;

__attribute__((used)) static void xxh_update_le(XXH64_state_t* state, uint64_t data) {
    if (!MEM_isLittleEndian())
        data = MEM_swap64(data);
    XXH64_update(state, &data, sizeof(data));
}
