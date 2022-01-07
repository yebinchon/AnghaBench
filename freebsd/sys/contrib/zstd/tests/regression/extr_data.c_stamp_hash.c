
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {int xxhash64; } ;
struct TYPE_5__ {int xxhash64; } ;
struct TYPE_7__ {int type; TYPE_2__ dict; TYPE_1__ data; int name; } ;
typedef TYPE_3__ data_t ;
typedef int XXH64_state_t ;


 int XXH64_digest (int *) ;
 int XXH64_reset (int *,int ) ;
 int XXH64_update (int *,int ,int ) ;
 int assert (int ) ;
 int strlen (int ) ;
 int xxh_update_le (int *,int ) ;

__attribute__((used)) static uint64_t stamp_hash(data_t const* const* data) {
    XXH64_state_t state;

    XXH64_reset(&state, 0);
    assert(data != ((void*)0));
    for (; *data != ((void*)0); ++data) {
        data_t const* datum = *data;


        XXH64_update(&state, datum->name, strlen(datum->name));
        xxh_update_le(&state, datum->data.xxhash64);
        xxh_update_le(&state, datum->dict.xxhash64);
        xxh_update_le(&state, datum->type);
    }
    return XXH64_digest(&state);
}
