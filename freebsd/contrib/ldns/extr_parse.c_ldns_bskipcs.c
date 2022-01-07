
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ _position; scalar_t__ _limit; } ;
typedef TYPE_1__ ldns_buffer ;


 scalar_t__ ldns_buffer_available_at (TYPE_1__*,scalar_t__,int) ;
 scalar_t__ ldns_buffer_read_u8_at (TYPE_1__*,scalar_t__) ;

void
ldns_bskipcs(ldns_buffer *buffer, const char *s)
{
        bool found;
        char c;
        const char *d;

        while(ldns_buffer_available_at(buffer, buffer->_position, sizeof(char))) {
                c = (char) ldns_buffer_read_u8_at(buffer, buffer->_position);
                found = 0;
                for (d = s; *d; d++) {
                        if (*d == c) {
                                found = 1;
                        }
                }
                if (found && buffer->_limit > buffer->_position) {
                        buffer->_position += sizeof(char);
                } else {
                        return;
                }
        }
}
