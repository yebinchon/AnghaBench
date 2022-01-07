
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsvp_common_header {scalar_t__* checksum; } ;



__attribute__((used)) static void
rsvp_clear_checksum(void *header)
{
    struct rsvp_common_header *rsvp_com_header = (struct rsvp_common_header *) header;

    rsvp_com_header->checksum[0] = 0;
    rsvp_com_header->checksum[1] = 0;
}
