
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_11__ {int extBufOffset; int privDataSize; int prsResultOffset; int timeStampOffset; int hashResultOffset; int pcdInfoOffset; int size; int intContextOffset; int startMargins; int manipExtraSpace; int manipOffset; int dataAlign; int dataOffset; scalar_t__ passPrsResult; scalar_t__ passHashResult; scalar_t__ passTimeStamp; scalar_t__ passAllOtherPCDInfo; } ;
typedef TYPE_1__ t_FmSpIntContextDataCopy ;
typedef TYPE_1__ t_FmSpBufferOffsets ;
typedef TYPE_1__ t_FmSpBufMargins ;
typedef int t_FmPrsResult ;
typedef TYPE_1__ t_FmBufferPrefixContent ;
typedef int t_Error ;


 int ASSERT_COND (TYPE_1__*) ;
 int CAPWAP_FRAG_EXTRA_SPACE ;
 int E_INVALID_VALUE ;
 int E_OK ;
 scalar_t__ ILLEGAL_BASE ;
 int MAJOR ;
 int OFFSET_UNITS ;
 int RETURN_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;

t_Error FmSpBuildBufferStructure(t_FmSpIntContextDataCopy *p_FmSpIntContextDataCopy,
                                 t_FmBufferPrefixContent *p_BufferPrefixContent,
                                 t_FmSpBufMargins *p_FmSpBufMargins,
                                 t_FmSpBufferOffsets *p_FmSpBufferOffsets,
                                 uint8_t *internalBufferOffset)
{
    uint32_t tmp;

    SANITY_CHECK_RETURN_ERROR(p_FmSpIntContextDataCopy, E_INVALID_VALUE);
    ASSERT_COND(p_FmSpIntContextDataCopy);
    ASSERT_COND(p_BufferPrefixContent);
    ASSERT_COND(p_FmSpBufMargins);
    ASSERT_COND(p_FmSpBufferOffsets);


    p_FmSpIntContextDataCopy->extBufOffset =
        (uint16_t)((p_BufferPrefixContent->privDataSize & (OFFSET_UNITS-1)) ?
            ((p_BufferPrefixContent->privDataSize + OFFSET_UNITS) & ~(uint16_t)(OFFSET_UNITS-1)) :
             p_BufferPrefixContent->privDataSize);



    p_FmSpBufferOffsets->prsResultOffset = (uint32_t)ILLEGAL_BASE;
    p_FmSpBufferOffsets->timeStampOffset = (uint32_t)ILLEGAL_BASE;
    p_FmSpBufferOffsets->hashResultOffset= (uint32_t)ILLEGAL_BASE;
    p_FmSpBufferOffsets->pcdInfoOffset = (uint32_t)ILLEGAL_BASE;







    if (p_BufferPrefixContent->passAllOtherPCDInfo)
    {
        p_FmSpIntContextDataCopy->size = 128;

        p_FmSpIntContextDataCopy->intContextOffset = 16;

        if (p_BufferPrefixContent->passAllOtherPCDInfo)
            p_FmSpBufferOffsets->pcdInfoOffset = p_FmSpIntContextDataCopy->extBufOffset;
        if (p_BufferPrefixContent->passPrsResult)
            p_FmSpBufferOffsets->prsResultOffset =
                (uint32_t)(p_FmSpIntContextDataCopy->extBufOffset + 16);
        if (p_BufferPrefixContent->passTimeStamp)
            p_FmSpBufferOffsets->timeStampOffset =
                (uint32_t)(p_FmSpIntContextDataCopy->extBufOffset + 48);
        if (p_BufferPrefixContent->passHashResult)
            p_FmSpBufferOffsets->hashResultOffset =
                (uint32_t)(p_FmSpIntContextDataCopy->extBufOffset + 56);
    }
    else
    {


        p_FmSpIntContextDataCopy->size =
            (uint16_t)((p_BufferPrefixContent->passPrsResult ? 32 : 0) +
                      ((p_BufferPrefixContent->passTimeStamp ||
                      p_BufferPrefixContent->passHashResult) ? 16 : 0));


        p_FmSpIntContextDataCopy->intContextOffset =
            (uint8_t)(p_BufferPrefixContent->passPrsResult ? 32 :
                      ((p_BufferPrefixContent->passTimeStamp ||
                       p_BufferPrefixContent->passHashResult) ? 64 : 0));

        if (p_BufferPrefixContent->passPrsResult)
            p_FmSpBufferOffsets->prsResultOffset = p_FmSpIntContextDataCopy->extBufOffset;
        if (p_BufferPrefixContent->passTimeStamp)
            p_FmSpBufferOffsets->timeStampOffset = p_BufferPrefixContent->passPrsResult ?
                                        (p_FmSpIntContextDataCopy->extBufOffset + sizeof(t_FmPrsResult)) :
                                        p_FmSpIntContextDataCopy->extBufOffset;
        if (p_BufferPrefixContent->passHashResult)

            p_FmSpBufferOffsets->hashResultOffset = p_BufferPrefixContent->passPrsResult ?
                                          (p_FmSpIntContextDataCopy->extBufOffset + sizeof(t_FmPrsResult) + 8) :
                                          p_FmSpIntContextDataCopy->extBufOffset + 8;
    }

    if (p_FmSpIntContextDataCopy->size)
        p_FmSpBufMargins->startMargins =
            (uint16_t)(p_FmSpIntContextDataCopy->extBufOffset +
                       p_FmSpIntContextDataCopy->size);
    else

        p_FmSpBufMargins->startMargins = p_BufferPrefixContent->privDataSize;


    if (p_BufferPrefixContent->manipExtraSpace)
    {
        uint8_t extraSpace;







        extraSpace = p_BufferPrefixContent->manipExtraSpace;

        p_FmSpBufferOffsets->manipOffset = p_FmSpBufMargins->startMargins;
        p_FmSpBufMargins->startMargins += extraSpace;
        *internalBufferOffset = extraSpace;
    }


    tmp = (uint32_t)(p_FmSpBufMargins->startMargins % p_BufferPrefixContent->dataAlign);
    if (tmp)
        p_FmSpBufMargins->startMargins += (p_BufferPrefixContent->dataAlign-tmp);
    p_FmSpBufferOffsets->dataOffset = p_FmSpBufMargins->startMargins;

    return E_OK;
}
