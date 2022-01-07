
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ofCode; int mlCode; int llCode; int litStart; int sequencesStart; int maxNbLit; int maxNbSeq; } ;
typedef TYPE_1__ seqStore_t ;


 int MAX_NB_SEQ ;
 int SEQUENCE_BUFFER ;
 int SEQUENCE_LITERAL_BUFFER ;
 int SEQUENCE_LLCODE ;
 int SEQUENCE_MLCODE ;
 int SEQUENCE_OFCODE ;
 int ZSTD_BLOCKSIZE_MAX ;
 int ZSTD_resetSeqStore (TYPE_1__*) ;

__attribute__((used)) static inline void initSeqStore(seqStore_t *seqStore) {
    seqStore->maxNbSeq = MAX_NB_SEQ;
    seqStore->maxNbLit = ZSTD_BLOCKSIZE_MAX;
    seqStore->sequencesStart = SEQUENCE_BUFFER;
    seqStore->litStart = SEQUENCE_LITERAL_BUFFER;
    seqStore->llCode = SEQUENCE_LLCODE;
    seqStore->mlCode = SEQUENCE_MLCODE;
    seqStore->ofCode = SEQUENCE_OFCODE;

    ZSTD_resetSeqStore(seqStore);
}
