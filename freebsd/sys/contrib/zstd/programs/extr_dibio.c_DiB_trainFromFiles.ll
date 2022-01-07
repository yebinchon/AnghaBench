; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/programs/extr_dibio.c_DiB_trainFromFiles.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/programs/extr_dibio.c_DiB_trainFromFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32, i32, i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i32, i64, i64 }

@MEMMULT = common dso_local global i64 0, align 8
@COVER_MEMMULT = common dso_local global i64 0, align 8
@FASTCOVER_MEMMULT = common dso_local global i64 0, align 8
@NOISELENGTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"not enough memory for DiB_trainFiles\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"!  Warning : some sample(s) are very large \0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"!  Note that dictionary is only useful for small samples. \0A\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"!  As a consequence, only the first %u bytes of each sample are loaded \0A\00", align 1
@SAMPLESIZE_MAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [61 x i8] c"!  Warning : nb of samples too low for proper processing ! \0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"!  Please provide _one file per sample_. \0A\00", align 1
@.str.6 = private unnamed_addr constant [91 x i8] c"!  Alternatively, split files into fixed-size blocks representative of samples, with -B# \0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"nb of samples too low\00", align 1
@.str.8 = private unnamed_addr constant [73 x i8] c"!  Warning : data size of samples too small for target dictionary size \0A\00", align 1
@.str.9 = private unnamed_addr constant [69 x i8] c"!  Samples should be about 100x larger than target dictionary size \0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"Not enough memory; training on %u MB only...\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Shuffling input files\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"k=%u\0Ad=%u\0Asteps=%u\0Asplit=%u\0A\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"k=%u\0Ad=%u\0Af=%u\0Asteps=%u\0Asplit=%u\0Aaccel=%u\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"dictionary training failed : %s \0A\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"Save dictionary of size %u into file %s \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DiB_trainFromFiles(i8* %0, i32 %1, i8** %2, i32 %3, i64 %4, %struct.TYPE_21__* %5, %struct.TYPE_23__* %6, %struct.TYPE_22__* %7, i32 %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_21__*, align 8
  %16 = alloca %struct.TYPE_23__*, align 8
  %17 = alloca %struct.TYPE_22__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_20__, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_23__, align 8
  %31 = alloca i32, align 4
  %32 = alloca %struct.TYPE_22__, align 8
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i8** %2, i8*** %12, align 8
  store i32 %3, i32* %13, align 4
  store i64 %4, i64* %14, align 8
  store %struct.TYPE_21__* %5, %struct.TYPE_21__** %15, align 8
  store %struct.TYPE_23__* %6, %struct.TYPE_23__** %16, align 8
  store %struct.TYPE_22__* %7, %struct.TYPE_22__** %17, align 8
  store i32 %8, i32* %18, align 4
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %34 = icmp ne %struct.TYPE_21__* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %9
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  br label %61

40:                                               ; preds = %9
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %42 = icmp ne %struct.TYPE_23__* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  br label %59

48:                                               ; preds = %40
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %50 = icmp ne %struct.TYPE_22__* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 6
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  br label %57

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %51
  %58 = phi i32 [ %55, %51 ], [ 0, %56 ]
  br label %59

59:                                               ; preds = %57, %43
  %60 = phi i32 [ %47, %43 ], [ %58, %57 ]
  br label %61

61:                                               ; preds = %59, %35
  %62 = phi i32 [ %39, %35 ], [ %60, %59 ]
  store i32 %62, i32* %19, align 4
  %63 = load i32, i32* %11, align 4
  %64 = zext i32 %63 to i64
  %65 = call i8* @malloc(i64 %64)
  store i8* %65, i8** %20, align 8
  %66 = load i8**, i8*** %12, align 8
  %67 = load i32, i32* %13, align 4
  %68 = load i64, i64* %14, align 8
  %69 = load i32, i32* %19, align 4
  call void @DiB_fileStats(%struct.TYPE_20__* sret %21, i8** %66, i32 %67, i64 %68, i32 %69)
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 8
  %74 = call i8* @malloc(i64 %73)
  %75 = bitcast i8* %74 to i64*
  store i64* %75, i64** %22, align 8
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %77 = icmp ne %struct.TYPE_21__* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %61
  %79 = load i64, i64* @MEMMULT, align 8
  br label %89

80:                                               ; preds = %61
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %82 = icmp ne %struct.TYPE_23__* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i64, i64* @COVER_MEMMULT, align 8
  br label %87

85:                                               ; preds = %80
  %86 = load i64, i64* @FASTCOVER_MEMMULT, align 8
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i64 [ %84, %83 ], [ %86, %85 ]
  br label %89

89:                                               ; preds = %87, %78
  %90 = phi i64 [ %79, %78 ], [ %88, %87 ]
  store i64 %90, i64* %23, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %23, align 8
  %94 = mul i64 %92, %93
  %95 = call i64 @DiB_findMaxMem(i64 %94)
  %96 = load i64, i64* %23, align 8
  %97 = udiv i64 %95, %96
  store i64 %97, i64* %24, align 8
  %98 = load i64, i64* %24, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @MIN(i64 %98, i64 %100)
  %102 = sext i32 %101 to i64
  store i64 %102, i64* %25, align 8
  %103 = load i64, i64* %25, align 8
  %104 = load i64, i64* @NOISELENGTH, align 8
  %105 = add i64 %103, %104
  %106 = call i8* @malloc(i64 %105)
  store i8* %106, i8** %26, align 8
  store i32 0, i32* %27, align 4
  %107 = load i64*, i64** %22, align 8
  %108 = icmp ne i64* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %89
  %110 = load i8*, i8** %26, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i8*, i8** %20, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %112, %109, %89
  %116 = call i32 @EXM_THROW(i32 12, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %112
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %123 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %124 = load i32, i32* @SAMPLESIZE_MAX, align 4
  %125 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %121, %117
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %128, 5
  br i1 %129, label %130, label %135

130:                                              ; preds = %126
  %131 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0))
  %132 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %133 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.6, i64 0, i64 0))
  %134 = call i32 @EXM_THROW(i32 14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %135

135:                                              ; preds = %130, %126
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i32, i32* %11, align 4
  %139 = mul i32 8, %138
  %140 = zext i32 %139 to i64
  %141 = icmp ult i64 %137, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %135
  %143 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8, i64 0, i64 0))
  %144 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.9, i64 0, i64 0))
  br label %145

145:                                              ; preds = %142, %135
  %146 = load i64, i64* %25, align 8
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ult i64 %146, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load i64, i64* %25, align 8
  %152 = lshr i64 %151, 20
  %153 = trunc i64 %152 to i32
  %154 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i32 %153)
  br label %155

155:                                              ; preds = %150, %145
  %156 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %157 = load i8**, i8*** %12, align 8
  %158 = load i32, i32* %13, align 4
  %159 = call i32 @DiB_shuffle(i8** %157, i32 %158)
  %160 = load i8*, i8** %26, align 8
  %161 = load i64*, i64** %22, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i8**, i8*** %12, align 8
  %165 = load i32, i32* %13, align 4
  %166 = load i64, i64* %14, align 8
  %167 = load i32, i32* %19, align 4
  %168 = call i32 @DiB_loadFiles(i8* %160, i64* %25, i64* %161, i32 %163, i8** %164, i32 %165, i64 %166, i32 %167)
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %170 = icmp ne %struct.TYPE_21__* %169, null
  br i1 %170, label %171, label %188

171:                                              ; preds = %155
  %172 = load i8*, i8** %26, align 8
  %173 = load i64, i64* %25, align 8
  %174 = getelementptr inbounds i8, i8* %172, i64 %173
  %175 = load i64, i64* @NOISELENGTH, align 8
  %176 = call i32 @DiB_fillNoise(i8* %174, i64 %175)
  %177 = load i8*, i8** %20, align 8
  %178 = load i32, i32* %11, align 4
  %179 = load i8*, i8** %26, align 8
  %180 = load i64*, i64** %22, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i64 @ZDICT_trainFromBuffer_unsafe_legacy(i8* %177, i32 %178, i8* %179, i64* %180, i32 %182, i32 %186)
  store i64 %187, i64* %28, align 8
  br label %290

188:                                              ; preds = %155
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %190 = icmp ne %struct.TYPE_23__* %189, null
  br i1 %190, label %191, label %235

191:                                              ; preds = %188
  %192 = load i32, i32* %18, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %223

194:                                              ; preds = %191
  %195 = load i8*, i8** %20, align 8
  %196 = load i32, i32* %11, align 4
  %197 = load i8*, i8** %26, align 8
  %198 = load i64*, i64** %22, align 8
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %202 = call i64 @ZDICT_optimizeTrainFromBuffer_cover(i8* %195, i32 %196, i8* %197, i64* %198, i32 %200, %struct.TYPE_23__* %201)
  store i64 %202, i64* %28, align 8
  %203 = load i64, i64* %28, align 8
  %204 = call i64 @ZDICT_isError(i64 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %222, label %206

206:                                              ; preds = %194
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = mul nsw i32 %209, 100
  store i32 %210, i32* %29, align 4
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %215 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %29, align 4
  %221 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 %213, i32 %216, i32 %219, i32 %220)
  br label %222

222:                                              ; preds = %206, %194
  br label %234

223:                                              ; preds = %191
  %224 = load i8*, i8** %20, align 8
  %225 = load i32, i32* %11, align 4
  %226 = load i8*, i8** %26, align 8
  %227 = load i64*, i64** %22, align 8
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %231 = bitcast %struct.TYPE_23__* %30 to i8*
  %232 = bitcast %struct.TYPE_23__* %230 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %231, i8* align 4 %232, i64 20, i1 false)
  %233 = call i64 @ZDICT_trainFromBuffer_cover(i8* %224, i32 %225, i8* %226, i64* %227, i32 %229, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 %30)
  store i64 %233, i64* %28, align 8
  br label %234

234:                                              ; preds = %223, %222
  br label %289

235:                                              ; preds = %188
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %237 = icmp ne %struct.TYPE_22__* %236, null
  %238 = zext i1 %237 to i32
  %239 = call i32 @assert(i32 %238)
  %240 = load i32, i32* %18, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %277

242:                                              ; preds = %235
  %243 = load i8*, i8** %20, align 8
  %244 = load i32, i32* %11, align 4
  %245 = load i8*, i8** %26, align 8
  %246 = load i64*, i64** %22, align 8
  %247 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %250 = call i64 @ZDICT_optimizeTrainFromBuffer_fastCover(i8* %243, i32 %244, i8* %245, i64* %246, i32 %248, %struct.TYPE_22__* %249)
  store i64 %250, i64* %28, align 8
  %251 = load i64, i64* %28, align 8
  %252 = call i64 @ZDICT_isError(i64 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %276, label %254

254:                                              ; preds = %242
  %255 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %256 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = mul nsw i32 %257, 100
  store i32 %258, i32* %31, align 4
  %259 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %260 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %259, i32 0, i32 5
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %263 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %266 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %269 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* %31, align 4
  %272 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %273 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i32 %261, i32 %264, i32 %267, i32 %270, i32 %271, i32 %274)
  br label %276

276:                                              ; preds = %254, %242
  br label %288

277:                                              ; preds = %235
  %278 = load i8*, i8** %20, align 8
  %279 = load i32, i32* %11, align 4
  %280 = load i8*, i8** %26, align 8
  %281 = load i64*, i64** %22, align 8
  %282 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %285 = bitcast %struct.TYPE_22__* %32 to i8*
  %286 = bitcast %struct.TYPE_22__* %284 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %285, i8* align 4 %286, i64 28, i1 false)
  %287 = call i64 @ZDICT_trainFromBuffer_fastCover(i8* %278, i32 %279, i8* %280, i64* %281, i32 %283, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %32)
  store i64 %287, i64* %28, align 8
  br label %288

288:                                              ; preds = %277, %276
  br label %289

289:                                              ; preds = %288, %234
  br label %290

290:                                              ; preds = %289, %171
  %291 = load i64, i64* %28, align 8
  %292 = call i64 @ZDICT_isError(i64 %291)
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %298

294:                                              ; preds = %290
  %295 = load i64, i64* %28, align 8
  %296 = call i32 @ZDICT_getErrorName(i64 %295)
  %297 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i32 %296)
  store i32 1, i32* %27, align 4
  br label %307

298:                                              ; preds = %290
  %299 = load i64, i64* %28, align 8
  %300 = trunc i64 %299 to i32
  %301 = load i8*, i8** %10, align 8
  %302 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0), i32 %300, i8* %301)
  %303 = load i8*, i8** %10, align 8
  %304 = load i8*, i8** %20, align 8
  %305 = load i64, i64* %28, align 8
  %306 = call i32 @DiB_saveDict(i8* %303, i8* %304, i64 %305)
  br label %307

307:                                              ; preds = %298, %294
  %308 = load i8*, i8** %26, align 8
  %309 = call i32 @free(i8* %308)
  %310 = load i64*, i64** %22, align 8
  %311 = bitcast i64* %310 to i8*
  %312 = call i32 @free(i8* %311)
  %313 = load i8*, i8** %20, align 8
  %314 = call i32 @free(i8* %313)
  %315 = load i32, i32* %27, align 4
  ret i32 %315
}

declare dso_local i8* @malloc(i64) #1

declare dso_local void @DiB_fileStats(%struct.TYPE_20__* sret, i8**, i32, i64, i32) #1

declare dso_local i64 @DiB_findMaxMem(i64) #1

declare dso_local i32 @MIN(i64, i64) #1

declare dso_local i32 @EXM_THROW(i32, i8*) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, ...) #1

declare dso_local i32 @DiB_shuffle(i8**, i32) #1

declare dso_local i32 @DiB_loadFiles(i8*, i64*, i64*, i32, i8**, i32, i64, i32) #1

declare dso_local i32 @DiB_fillNoise(i8*, i64) #1

declare dso_local i64 @ZDICT_trainFromBuffer_unsafe_legacy(i8*, i32, i8*, i64*, i32, i32) #1

declare dso_local i64 @ZDICT_optimizeTrainFromBuffer_cover(i8*, i32, i8*, i64*, i32, %struct.TYPE_23__*) #1

declare dso_local i64 @ZDICT_isError(i64) #1

declare dso_local i64 @ZDICT_trainFromBuffer_cover(i8*, i32, i8*, i64*, i32, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ZDICT_optimizeTrainFromBuffer_fastCover(i8*, i32, i8*, i64*, i32, %struct.TYPE_22__*) #1

declare dso_local i64 @ZDICT_trainFromBuffer_fastCover(i8*, i32, i8*, i64*, i32, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8) #1

declare dso_local i32 @ZDICT_getErrorName(i64) #1

declare dso_local i32 @DiB_saveDict(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
