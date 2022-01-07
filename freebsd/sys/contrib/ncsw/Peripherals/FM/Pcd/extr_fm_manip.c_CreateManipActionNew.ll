; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_manip.c_CreateManipActionNew.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_manip.c_CreateManipActionNew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64, i32, i32, i64, i32*, i64, i64, i32*, i8*, i64, i32*, %struct.TYPE_27__*, %struct.TYPE_26__, %struct.TYPE_27__* }
%struct.TYPE_26__ = type { %struct.TYPE_27__*, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_28__ = type { i64, i64 }
%struct.TYPE_25__ = type { i32, i32, i32, i32 }

@e_FM_PCD_MANIP_HDR = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@MINOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"MURAM alloc failed\00", align 1
@FM_PCD_CC_AD_TABLE_ALIGN = common dso_local global i64 0, align 8
@E_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"MURAM allocation for HdrManip node shadow\00", align 1
@e_MANIP_HMCT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@HMTD_CFG_TYPE = common dso_local global i32 0, align 4
@HMTD_CFG_PRS_AFTER_HM = common dso_local global i32 0, align 4
@HMTD_CFG_NEXT_AD_EN = common dso_local global i32 0, align 4
@e_MANIP_UNIFIED_FIRST = common dso_local global i64 0, align 8
@HMAN_OC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_27__*, %struct.TYPE_26__*)* @CreateManipActionNew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CreateManipActionNew(%struct.TYPE_27__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %3, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %4, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 9
  store i64 %18, i64* %20, align 8
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %22, align 8
  %24 = icmp ne %struct.TYPE_27__* %23, null
  br i1 %24, label %25, label %68

25:                                               ; preds = %2
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_27__*, %struct.TYPE_27__** %27, align 8
  %29 = call i64 @MANIP_GET_TYPE(%struct.TYPE_27__* %28)
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @e_FM_PCD_MANIP_HDR, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %25
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %38, i32 0, i32 9
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %44, align 8
  %46 = call i64 @GetHmctSize(%struct.TYPE_27__* %45)
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_27__*, %struct.TYPE_27__** %48, align 8
  %50 = call i64 @GetDataSize(%struct.TYPE_27__* %49)
  %51 = add nsw i64 %46, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %7, align 4
  br label %57

53:                                               ; preds = %37, %25
  %54 = load i8*, i8** @TRUE, align 8
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %55, i32 0, i32 8
  store i8* %54, i8** %56, align 8
  br label %57

57:                                               ; preds = %53, %42
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %59, align 8
  %61 = call i64 @MANIP_IS_CASCADED(%struct.TYPE_27__* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i8*, i8** @TRUE, align 8
  %65 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %65, i32 0, i32 8
  store i8* %64, i8** %66, align 8
  br label %67

67:                                               ; preds = %63, %57
  br label %68

68:                                               ; preds = %67, %2
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %70 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %72, i32 0, i32 2
  %74 = call i64 @CalculateTableSize(%struct.TYPE_26__* %69, i32* %71, i32* %73)
  store i64 %74, i64* %6, align 8
  %75 = load i64, i64* %6, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %68
  %78 = load i32, i32* @MINOR, align 4
  %79 = load i64, i64* %6, align 8
  %80 = load i8*, i8** @NO_MSG, align 8
  %81 = call i32 @RETURN_ERROR(i32 %78, i64 %79, i8* %80)
  br label %82

82:                                               ; preds = %77, %68
  %83 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %85, %88
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %89, %90
  store i32 %91, i32* %8, align 4
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to %struct.TYPE_28__*
  %96 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i64 @FM_MURAM_AllocMem(i64 %97, i32 %98, i32 4)
  %100 = inttoptr i64 %99 to i32*
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %101, i32 0, i32 7
  store i32* %100, i32** %102, align 8
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %103, i32 0, i32 7
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %111, label %107

107:                                              ; preds = %82
  %108 = load i32, i32* @MAJOR, align 4
  %109 = load i64, i64* @E_NO_MEMORY, align 8
  %110 = call i32 @RETURN_ERROR(i32 %108, i64 %109, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %111

111:                                              ; preds = %107, %82
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %111
  %117 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %117, i32 0, i32 7
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %122, %123
  %125 = call i64 @PTR_MOVE(i32* %119, i32 %124)
  %126 = inttoptr i64 %125 to i32*
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %127, i32 0, i32 10
  store i32* %126, i32** %128, align 8
  br label %129

129:                                              ; preds = %116, %111
  %130 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %130, i32 0, i32 5
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 16
  %135 = load i64, i64* @FM_PCD_CC_AD_TABLE_ALIGN, align 8
  %136 = trunc i64 %135 to i32
  %137 = call i64 @FmPcdUpdateCcShadow(i64 %132, i32 %134, i32 %136)
  store i64 %137, i64* %6, align 8
  %138 = load i64, i64* %6, align 8
  %139 = load i64, i64* @E_OK, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %152

141:                                              ; preds = %129
  %142 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %142, i32 0, i32 5
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %145, i32 0, i32 7
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @FM_MURAM_FreeMem(i64 %144, i32* %147)
  %149 = load i32, i32* @MAJOR, align 4
  %150 = load i64, i64* @E_NO_MEMORY, align 8
  %151 = call i32 @RETURN_ERROR(i32 %149, i64 %150, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %152

152:                                              ; preds = %141, %129
  %153 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_27__*, %struct.TYPE_27__** %154, align 8
  %156 = icmp ne %struct.TYPE_27__* %155, null
  br i1 %156, label %157, label %252

157:                                              ; preds = %152
  %158 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @e_FM_PCD_MANIP_HDR, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %252

163:                                              ; preds = %157
  %164 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %165 = call i64 @MANIP_DONT_REPARSE(%struct.TYPE_27__* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %252

167:                                              ; preds = %163
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_27__*, %struct.TYPE_27__** %169, align 8
  %171 = load i32, i32* @e_MANIP_HMCT, align 4
  %172 = call i64 @GetManipInfo(%struct.TYPE_27__* %170, i32 %171)
  %173 = inttoptr i64 %172 to i32*
  store i32* %173, i32** %10, align 8
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_27__*, %struct.TYPE_27__** %175, align 8
  store %struct.TYPE_27__* %176, %struct.TYPE_27__** %5, align 8
  br label %177

177:                                              ; preds = %181, %167
  %178 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %179 = call i64 @MANIP_IS_UNIFIED_NON_LAST(%struct.TYPE_27__* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %177
  %182 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %182, i32 0, i32 13
  %184 = load %struct.TYPE_27__*, %struct.TYPE_27__** %183, align 8
  store %struct.TYPE_27__* %184, %struct.TYPE_27__** %5, align 8
  br label %177

185:                                              ; preds = %177
  br label %186

186:                                              ; preds = %228, %185
  %187 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %188 = icmp ne %struct.TYPE_27__* %187, null
  br i1 %188, label %189, label %245

189:                                              ; preds = %186
  %190 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %190, i32 0, i32 7
  %192 = load i32*, i32** %191, align 8
  %193 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %196, i32 0, i32 7
  %198 = load i32*, i32** %197, align 8
  %199 = call i32 @PTR_TO_UINT(i32* %198)
  %200 = load i32*, i32** %10, align 8
  %201 = call i32 @PTR_TO_UINT(i32* %200)
  %202 = sub nsw i32 %199, %201
  %203 = add nsw i32 %195, %202
  %204 = call i64 @PTR_MOVE(i32* %192, i32 %203)
  %205 = inttoptr i64 %204 to i32*
  store i32* %205, i32** %11, align 8
  %206 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %206, i32 0, i32 10
  %208 = load i32*, i32** %207, align 8
  %209 = icmp ne i32* %208, null
  br i1 %209, label %210, label %227

210:                                              ; preds = %189
  %211 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %211, i32 0, i32 7
  %213 = load i32*, i32** %212, align 8
  %214 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %217, i32 0, i32 10
  %219 = load i32*, i32** %218, align 8
  %220 = call i32 @PTR_TO_UINT(i32* %219)
  %221 = load i32*, i32** %10, align 8
  %222 = call i32 @PTR_TO_UINT(i32* %221)
  %223 = sub nsw i32 %220, %222
  %224 = add nsw i32 %216, %223
  %225 = call i64 @PTR_MOVE(i32* %213, i32 %224)
  %226 = inttoptr i64 %225 to i32*
  store i32* %226, i32** %12, align 8
  br label %228

227:                                              ; preds = %189
  store i32* null, i32** %12, align 8
  br label %228

228:                                              ; preds = %227, %210
  %229 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %230 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %230, i32 0, i32 12
  %232 = load i32*, i32** %11, align 8
  %233 = load i32*, i32** %12, align 8
  %234 = load i8*, i8** @FALSE, align 8
  %235 = call i64 @BuildHmct(%struct.TYPE_27__* %229, %struct.TYPE_26__* %231, i32* %232, i32* %233, i8* %234)
  %236 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %237 = load i32*, i32** %11, align 8
  %238 = call i32 @MANIP_SET_HMCT_PTR(%struct.TYPE_27__* %236, i32* %237)
  %239 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %240 = load i32*, i32** %12, align 8
  %241 = call i32 @MANIP_SET_DATA_PTR(%struct.TYPE_27__* %239, i32* %240)
  %242 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %242, i32 0, i32 11
  %244 = load %struct.TYPE_27__*, %struct.TYPE_27__** %243, align 8
  store %struct.TYPE_27__* %244, %struct.TYPE_27__** %5, align 8
  br label %186

245:                                              ; preds = %186
  %246 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %246, i32 0, i32 0
  %248 = load %struct.TYPE_27__*, %struct.TYPE_27__** %247, align 8
  %249 = call i64 @MANIP_GET_MURAM(%struct.TYPE_27__* %248)
  %250 = load i32*, i32** %10, align 8
  %251 = call i32 @FM_MURAM_FreeMem(i64 %249, i32* %250)
  br label %252

252:                                              ; preds = %245, %163, %157, %152
  %253 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %254 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %255 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %255, i32 0, i32 7
  %257 = load i32*, i32** %256, align 8
  %258 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %258, i32 0, i32 10
  %260 = load i32*, i32** %259, align 8
  %261 = load i8*, i8** @TRUE, align 8
  %262 = call i64 @BuildHmct(%struct.TYPE_27__* %253, %struct.TYPE_26__* %254, i32* %257, i32* %260, i8* %261)
  store i64 %262, i64* %6, align 8
  %263 = load i64, i64* %6, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %277

265:                                              ; preds = %252
  %266 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %266, i32 0, i32 5
  %268 = load i64, i64* %267, align 8
  %269 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %269, i32 0, i32 7
  %271 = load i32*, i32** %270, align 8
  %272 = call i32 @FM_MURAM_FreeMem(i64 %268, i32* %271)
  %273 = load i32, i32* @MINOR, align 4
  %274 = load i64, i64* %6, align 8
  %275 = load i8*, i8** @NO_MSG, align 8
  %276 = call i32 @RETURN_ERROR(i32 %273, i64 %274, i8* %275)
  br label %277

277:                                              ; preds = %265, %252
  %278 = load i32, i32* @HMTD_CFG_TYPE, align 4
  store i32 %278, i32* %9, align 4
  %279 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %280 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %279, i32 0, i32 9
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %287, label %283

283:                                              ; preds = %277
  %284 = load i32, i32* @HMTD_CFG_PRS_AFTER_HM, align 4
  %285 = load i32, i32* %9, align 4
  %286 = or i32 %285, %284
  store i32 %286, i32* %9, align 4
  br label %287

287:                                              ; preds = %283, %277
  %288 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %288, i32 0, i32 8
  %290 = load i8*, i8** %289, align 8
  %291 = icmp ne i8* %290, null
  br i1 %291, label %292, label %334

292:                                              ; preds = %287
  %293 = load i32, i32* @HMTD_CFG_NEXT_AD_EN, align 4
  %294 = load i32, i32* %9, align 4
  %295 = or i32 %294, %293
  store i32 %295, i32* %9, align 4
  %296 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %297 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %296, i32 0, i32 3
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @e_MANIP_UNIFIED_FIRST, align 8
  %300 = icmp ne i64 %298, %299
  br i1 %300, label %301, label %316

301:                                              ; preds = %292
  %302 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %303 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %302, i32 0, i32 0
  %304 = load %struct.TYPE_27__*, %struct.TYPE_27__** %303, align 8
  %305 = call i32* @MANIP_GET_HMTD_PTR(%struct.TYPE_27__* %304)
  %306 = call i64 @XX_VirtToPhys(i32* %305)
  %307 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %308 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %307, i32 0, i32 5
  %309 = load i64, i64* %308, align 8
  %310 = inttoptr i64 %309 to %struct.TYPE_28__*
  %311 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %310, i32 0, i32 1
  %312 = load i64, i64* %311, align 8
  %313 = sub nsw i64 %306, %312
  %314 = trunc i64 %313 to i32
  %315 = ashr i32 %314, 4
  store i32 %315, i32* %13, align 4
  br label %325

316:                                              ; preds = %292
  %317 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %317, i32 0, i32 0
  %319 = load %struct.TYPE_27__*, %struct.TYPE_27__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %319, i32 0, i32 4
  %321 = load i32*, i32** %320, align 8
  %322 = bitcast i32* %321 to %struct.TYPE_25__*
  %323 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  store i32 %324, i32* %13, align 4
  br label %325

325:                                              ; preds = %316, %301
  %326 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %327 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %326, i32 0, i32 4
  %328 = load i32*, i32** %327, align 8
  %329 = bitcast i32* %328 to %struct.TYPE_25__*
  %330 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* %13, align 4
  %333 = call i32 @WRITE_UINT16(i32 %331, i32 %332)
  br label %334

334:                                              ; preds = %325, %287
  %335 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %336 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %335, i32 0, i32 4
  %337 = load i32*, i32** %336, align 8
  %338 = bitcast i32* %337 to %struct.TYPE_25__*
  %339 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* %9, align 4
  %342 = call i32 @WRITE_UINT16(i32 %340, i32 %341)
  %343 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %344 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %343, i32 0, i32 4
  %345 = load i32*, i32** %344, align 8
  %346 = bitcast i32* %345 to %struct.TYPE_25__*
  %347 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %346, i32 0, i32 3
  %348 = load i32, i32* %347, align 4
  %349 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %350 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %349, i32 0, i32 7
  %351 = load i32*, i32** %350, align 8
  %352 = call i64 @XX_VirtToPhys(i32* %351)
  %353 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %354 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %353, i32 0, i32 5
  %355 = load i64, i64* %354, align 8
  %356 = inttoptr i64 %355 to %struct.TYPE_28__*
  %357 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %356, i32 0, i32 1
  %358 = load i64, i64* %357, align 8
  %359 = sub nsw i64 %352, %358
  %360 = trunc i64 %359 to i32
  %361 = call i32 @WRITE_UINT32(i32 %348, i32 %360)
  %362 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %363 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %362, i32 0, i32 4
  %364 = load i32*, i32** %363, align 8
  %365 = bitcast i32* %364 to %struct.TYPE_25__*
  %366 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %365, i32 0, i32 2
  %367 = load i32, i32* %366, align 4
  %368 = load i32, i32* @HMAN_OC, align 4
  %369 = call i32 @WRITE_UINT8(i32 %367, i32 %368)
  %370 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %371 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %370, i32 0, i32 3
  %372 = load i64, i64* %371, align 8
  %373 = load i64, i64* @e_MANIP_UNIFIED_FIRST, align 8
  %374 = icmp eq i64 %372, %373
  br i1 %374, label %375, label %409

375:                                              ; preds = %334
  %376 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %377 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %376, i32 0, i32 0
  %378 = load %struct.TYPE_27__*, %struct.TYPE_27__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %378, i32 0, i32 6
  %380 = load i64, i64* %379, align 8
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %397

382:                                              ; preds = %375
  %383 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %384 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %383, i32 0, i32 0
  %385 = load %struct.TYPE_27__*, %struct.TYPE_27__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %385, i32 0, i32 5
  %387 = load i64, i64* %386, align 8
  %388 = inttoptr i64 %387 to %struct.TYPE_28__*
  %389 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %388, i32 0, i32 0
  %390 = load i64, i64* %389, align 8
  %391 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %392 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %391, i32 0, i32 0
  %393 = load %struct.TYPE_27__*, %struct.TYPE_27__** %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %393, i32 0, i32 4
  %395 = load i32*, i32** %394, align 8
  %396 = call i32 @FM_MURAM_FreeMem(i64 %390, i32* %395)
  br label %404

397:                                              ; preds = %375
  %398 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %399 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %398, i32 0, i32 0
  %400 = load %struct.TYPE_27__*, %struct.TYPE_27__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %400, i32 0, i32 4
  %402 = load i32*, i32** %401, align 8
  %403 = call i32 @XX_Free(i32* %402)
  br label %404

404:                                              ; preds = %397, %382
  %405 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %406 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %405, i32 0, i32 0
  %407 = load %struct.TYPE_27__*, %struct.TYPE_27__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %407, i32 0, i32 4
  store i32* null, i32** %408, align 8
  br label %409

409:                                              ; preds = %404, %334
  %410 = load i64, i64* @E_OK, align 8
  ret i64 %410
}

declare dso_local i64 @MANIP_GET_TYPE(%struct.TYPE_27__*) #1

declare dso_local i64 @GetHmctSize(%struct.TYPE_27__*) #1

declare dso_local i64 @GetDataSize(%struct.TYPE_27__*) #1

declare dso_local i64 @MANIP_IS_CASCADED(%struct.TYPE_27__*) #1

declare dso_local i64 @CalculateTableSize(%struct.TYPE_26__*, i32*, i32*) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i64 @FM_MURAM_AllocMem(i64, i32, i32) #1

declare dso_local i64 @PTR_MOVE(i32*, i32) #1

declare dso_local i64 @FmPcdUpdateCcShadow(i64, i32, i32) #1

declare dso_local i32 @FM_MURAM_FreeMem(i64, i32*) #1

declare dso_local i64 @MANIP_DONT_REPARSE(%struct.TYPE_27__*) #1

declare dso_local i64 @GetManipInfo(%struct.TYPE_27__*, i32) #1

declare dso_local i64 @MANIP_IS_UNIFIED_NON_LAST(%struct.TYPE_27__*) #1

declare dso_local i32 @PTR_TO_UINT(i32*) #1

declare dso_local i64 @BuildHmct(%struct.TYPE_27__*, %struct.TYPE_26__*, i32*, i32*, i8*) #1

declare dso_local i32 @MANIP_SET_HMCT_PTR(%struct.TYPE_27__*, i32*) #1

declare dso_local i32 @MANIP_SET_DATA_PTR(%struct.TYPE_27__*, i32*) #1

declare dso_local i64 @MANIP_GET_MURAM(%struct.TYPE_27__*) #1

declare dso_local i64 @XX_VirtToPhys(i32*) #1

declare dso_local i32* @MANIP_GET_HMTD_PTR(%struct.TYPE_27__*) #1

declare dso_local i32 @WRITE_UINT16(i32, i32) #1

declare dso_local i32 @WRITE_UINT32(i32, i32) #1

declare dso_local i32 @WRITE_UINT8(i32, i32) #1

declare dso_local i32 @XX_Free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
