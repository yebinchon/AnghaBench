
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_5__ {scalar_t__ pass; int slice; int index; } ;
typedef TYPE_1__ argon2_position_t ;
struct TYPE_6__ {int segment_length; int lane_length; } ;
typedef TYPE_2__ argon2_instance_t ;


 int ARGON2_SYNC_POINTS ;

__attribute__((used)) static uint32_t index_alpha(const argon2_instance_t *instance,
                            const argon2_position_t *position, uint32_t pseudo_rand,
                            int same_lane)
{
    uint32_t reference_area_size;
    uint64_t relative_position;
    uint32_t start_position, absolute_position;

    if (position->pass == 0) {

        if (position->slice == 0) {

            reference_area_size =
                position->index - 1;
        } else {
            if (same_lane) {

                reference_area_size =
                    position->slice * instance->segment_length +
                    position->index - 1;
            } else {
                reference_area_size =
                    position->slice * instance->segment_length +
                    ((position->index == 0) ? (-1) : 0);
            }
        }
    } else {

        if (same_lane) {
            reference_area_size = instance->lane_length -
                                  instance->segment_length + position->index -
                                  1;
        } else {
            reference_area_size = instance->lane_length -
                                  instance->segment_length +
                                  ((position->index == 0) ? (-1) : 0);
        }
    }



    relative_position = pseudo_rand;
    relative_position = relative_position * relative_position >> 32;
    relative_position = reference_area_size - 1 -
                        (reference_area_size * relative_position >> 32);


    start_position = 0;

    if (position->pass != 0) {
        start_position = (position->slice == ARGON2_SYNC_POINTS - 1)
                             ? 0
                             : (position->slice + 1) * instance->segment_length;
    }


    absolute_position = (start_position + relative_position) %
                        instance->lane_length;
    return absolute_position;
}
