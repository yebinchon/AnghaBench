
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {double splitPoint; int shrinkDict; void* shrinkDictMaxRegression; void* accel; void* steps; void* f; void* d; void* k; } ;
typedef TYPE_1__ ZDICT_fastCover_params_t ;


 int DISPLAYLEVEL (int,char*,void*,void*,void*,void*,unsigned int,void*,void*) ;
 void* kDefaultRegression ;
 scalar_t__ longCommandWArg (char const**,char*) ;
 int memset (TYPE_1__*,int ,int) ;
 void* readU32FromChar (char const**) ;

__attribute__((used)) static unsigned parseFastCoverParameters(const char* stringPtr, ZDICT_fastCover_params_t* params)
{
    memset(params, 0, sizeof(*params));
    for (; ;) {
        if (longCommandWArg(&stringPtr, "k=")) { params->k = readU32FromChar(&stringPtr); if (stringPtr[0]==',') { stringPtr++; continue; } else break; }
        if (longCommandWArg(&stringPtr, "d=")) { params->d = readU32FromChar(&stringPtr); if (stringPtr[0]==',') { stringPtr++; continue; } else break; }
        if (longCommandWArg(&stringPtr, "f=")) { params->f = readU32FromChar(&stringPtr); if (stringPtr[0]==',') { stringPtr++; continue; } else break; }
        if (longCommandWArg(&stringPtr, "steps=")) { params->steps = readU32FromChar(&stringPtr); if (stringPtr[0]==',') { stringPtr++; continue; } else break; }
        if (longCommandWArg(&stringPtr, "accel=")) { params->accel = readU32FromChar(&stringPtr); if (stringPtr[0]==',') { stringPtr++; continue; } else break; }
        if (longCommandWArg(&stringPtr, "split=")) {
          unsigned splitPercentage = readU32FromChar(&stringPtr);
          params->splitPoint = (double)splitPercentage / 100.0;
          if (stringPtr[0]==',') { stringPtr++; continue; } else break;
        }
        if (longCommandWArg(&stringPtr, "shrink")) {
          params->shrinkDictMaxRegression = kDefaultRegression;
          params->shrinkDict = 1;
          if (stringPtr[0]=='=') {
            stringPtr++;
            params->shrinkDictMaxRegression = readU32FromChar(&stringPtr);
          }
          if (stringPtr[0]==',') {
            stringPtr++;
            continue;
          }
          else break;
        }
        return 0;
    }
    if (stringPtr[0] != 0) return 0;
    DISPLAYLEVEL(4, "cover: k=%u\nd=%u\nf=%u\nsteps=%u\nsplit=%u\naccel=%u\nshrink=%u\n", params->k, params->d, params->f, params->steps, (unsigned)(params->splitPoint * 100), params->accel, params->shrinkDictMaxRegression);
    return 1;
}
