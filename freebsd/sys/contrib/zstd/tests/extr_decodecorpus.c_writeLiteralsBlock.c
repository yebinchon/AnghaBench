
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int frame_t ;
typedef int U32 ;


 int RAND (int *) ;
 size_t writeLiteralsBlockCompressed (int *,int *,size_t) ;
 size_t writeLiteralsBlockSimple (int *,int *,size_t) ;

__attribute__((used)) static size_t writeLiteralsBlock(U32* seed, frame_t* frame, size_t contentSize)
{

    if (RAND(seed) & 7 && contentSize >= 64) {
        return writeLiteralsBlockCompressed(seed, frame, contentSize);
    } else {
        return writeLiteralsBlockSimple(seed, frame, contentSize);
    }
}
