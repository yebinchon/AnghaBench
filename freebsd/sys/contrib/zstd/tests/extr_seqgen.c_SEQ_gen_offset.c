
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int size; int pos; scalar_t__ dst; } ;
struct TYPE_5__ {int state; unsigned int bytesLeft; int xxh; int saved; int seed; } ;
typedef TYPE_1__ SEQ_stream ;
typedef TYPE_2__ SEQ_outBuffer ;
typedef int BYTE ;


 unsigned int MIN (unsigned int,size_t) ;
 int SEQ_randByte (int *) ;
 int XXH64_update (int *,int * const,int) ;
 size_t kMatchBytes ;
 int memset (int *,int ,size_t const) ;

__attribute__((used)) static size_t SEQ_gen_offset(SEQ_stream* stream, unsigned value, SEQ_outBuffer* out)
{
    typedef enum {
        of_start = 0,
        of_run_bytes,
        of_offset,
        of_run_match,
    } of_state;
    BYTE* const ostart = (BYTE*)out->dst;
    BYTE* const oend = ostart + out->size;
    BYTE* op = ostart + out->pos;

    switch ((of_state)stream->state) {
    case of_start:
        stream->state = of_run_bytes;
        stream->saved = stream->seed;
        stream->bytesLeft = MIN(value, kMatchBytes);

    case of_run_bytes: {
        while (stream->bytesLeft > 0 && op < oend) {
            *op++ = SEQ_randByte(&stream->seed) | 0x80;
            --stream->bytesLeft;
        }
        if (stream->bytesLeft > 0)
            break;

        stream->state = of_offset;
        stream->bytesLeft = value - MIN(value, kMatchBytes);
    }

    case of_offset: {

        size_t const setLength = MIN(stream->bytesLeft, (size_t)(oend - op));
        if (setLength > 0) {
            memset(op, 0, setLength);
            op += setLength;
            stream->bytesLeft -= setLength;
        }
        if (stream->bytesLeft > 0)
            break;

        stream->state = of_run_match;
        stream->bytesLeft = MIN(value, kMatchBytes);
    }

    case of_run_match: {
        while (stream->bytesLeft > 0 && op < oend) {
            *op++ = SEQ_randByte(&stream->saved) | 0x80;
            --stream->bytesLeft;
        }
        if (stream->bytesLeft > 0)
            break;
    }

    default:
        stream->state = 0;
        stream->bytesLeft = 0;
        break;
    }
    XXH64_update(&stream->xxh, ostart + out->pos, (op - ostart) - out->pos);
    out->pos = op - ostart;
    return stream->bytesLeft;
}
