
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int seqStore_t ;
typedef int frame_t ;
typedef int dictInfo ;
typedef int U32 ;


 int CHECKERR (int ) ;
 size_t generateSequences (int *,int *,int *,size_t,size_t,int ) ;
 int initSeqStore (int *) ;
 int writeSequences (int *,int *,int *,size_t) ;

__attribute__((used)) static size_t writeSequencesBlock(U32* seed, frame_t* frame, size_t contentSize,
                                  size_t literalsSize, dictInfo info)
{
    seqStore_t seqStore;
    size_t numSequences;


    initSeqStore(&seqStore);


    numSequences = generateSequences(seed, frame, &seqStore, contentSize, literalsSize, info);

    CHECKERR(writeSequences(seed, frame, &seqStore, numSequences));

    return numSequences;
}
