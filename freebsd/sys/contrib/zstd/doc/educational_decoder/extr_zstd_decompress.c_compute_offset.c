
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_3__ {int offset; scalar_t__ literal_length; } ;
typedef TYPE_1__ sequence_command_t ;



__attribute__((used)) static size_t compute_offset(sequence_command_t seq, u64 *const offset_hist) {
    size_t offset;

    if (seq.offset <= 3) {






        u32 idx = seq.offset - 1;
        if (seq.literal_length == 0) {





            idx++;
        }

        if (idx == 0) {
            offset = offset_hist[0];
        } else {


            offset = idx < 3 ? offset_hist[idx] : offset_hist[0] - 1;



            if (idx > 1) {
                offset_hist[2] = offset_hist[1];
            }
            offset_hist[1] = offset_hist[0];
            offset_hist[0] = offset;
        }
    } else {


        offset = seq.offset - 3;


        offset_hist[2] = offset_hist[1];
        offset_hist[1] = offset_hist[0];
        offset_hist[0] = offset;
    }
    return offset;
}
