
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int size; int pos; scalar_t__ dst; } ;
struct TYPE_5__ {int state; int bytesLeft; int saved; int xxh; int seed; } ;
typedef TYPE_1__ SEQ_stream ;
typedef TYPE_2__ SEQ_outBuffer ;
typedef int BYTE ;


 size_t MIN (int,size_t) ;
 int SEQ_randByte (int *) ;
 int XXH64_update (int *,int* const,int) ;
 int memset (int*,int,size_t const) ;

__attribute__((used)) static size_t SEQ_gen_matchLength(SEQ_stream* stream, unsigned value,
                                  SEQ_outBuffer* out)
{
    typedef enum {
        ml_first_byte = 0,
        ml_match_bytes,
        ml_last_byte,
    } ml_state;
    BYTE* const ostart = (BYTE*)out->dst;
    BYTE* const oend = ostart + out->size;
    BYTE* op = ostart + out->pos;

    switch ((ml_state)stream->state) {
    case ml_first_byte:

        if (op >= oend) {
            stream->bytesLeft = 1;
            break;
        }
        *op = SEQ_randByte(&stream->seed) & 0xFF;
        do {
            stream->saved = SEQ_randByte(&stream->seed) & 0xFF;
        } while (*op == stream->saved);
        ++op;

        stream->state = ml_match_bytes;
        stream->bytesLeft = value + 1;

    case ml_match_bytes: {

        size_t const setLength = MIN(stream->bytesLeft, (size_t)(oend - op));
        if (setLength > 0) {
            memset(op, stream->saved, setLength);
            op += setLength;
            stream->bytesLeft -= setLength;
        }
        if (stream->bytesLeft > 0)
            break;

        stream->state = ml_last_byte;
    }

    case ml_last_byte:

        if (op >= oend) {
            stream->bytesLeft = 1;
            break;
        }
        do {
            *op = SEQ_randByte(&stream->seed) & 0xFF;
        } while (*op == stream->saved);
        ++op;


    default:
        stream->state = 0;
        stream->bytesLeft = 0;
        break;
    }
    XXH64_update(&stream->xxh, ostart + out->pos, (op - ostart) - out->pos);
    out->pos = op - ostart;
    return stream->bytesLeft;
}
