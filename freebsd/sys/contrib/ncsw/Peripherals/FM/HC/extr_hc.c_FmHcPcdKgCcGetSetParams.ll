; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/HC/extr_hc.c_FmHcPcdKgCcGetSetParams.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/HC/extr_hc.c_FmHcPcdKgCcGetSetParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i8*, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }

@E_OK = common dso_local global i64 0, align 8
@FM_PCD_KG_NUM_OF_SCHEMES = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_NOT_IN_RANGE = common dso_local global i64 0, align 8
@NO_MSG = common dso_local global i8* null, align 8
@UPDATE_NIA_ENQ_WITHOUT_DMA = common dso_local global i32 0, align 4
@e_FM_PCD_PLCR = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@E_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [71 x i8] c"In this situation PP can not be with distribution and has to be shared\00", align 1
@MINOR = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"HC Frame object\00", align 1
@HC_HCOR_GBL = common dso_local global i32 0, align 4
@HC_HCOR_OPCODE_KG_SCM = common dso_local global i32 0, align 4
@HC_HCOR_KG_SCHEME_REGS_MASK = common dso_local global i8* null, align 8
@SIZE_OF_HC_FRAME_READ_OR_CC_DYNAMIC = common dso_local global i32 0, align 4
@e_FM_PCD_DONE = common dso_local global i64 0, align 8
@e_FM_PCD_ENQ_FRAME = common dso_local global i64 0, align 8
@NIA_ENG_BMI = common dso_local global i32 0, align 4
@NIA_BMI_AC_ENQ_FRAME = common dso_local global i32 0, align 4
@NIA_BMI_AC_ENQ_FRAME_WITHOUT_DMA = common dso_local global i32 0, align 4
@UPDATE_KG_NIA_CC_WA = common dso_local global i32 0, align 4
@e_FM_PCD_CC = common dso_local global i64 0, align 8
@NIA_ENG_FM_CTL = common dso_local global i32 0, align 4
@NIA_FM_CTL_AC_CC = common dso_local global i32 0, align 4
@NIA_FM_CTL_AC_PRE_CC = common dso_local global i32 0, align 4
@UPDATE_KG_OPT_MODE = common dso_local global i32 0, align 4
@UPDATE_KG_NIA = common dso_local global i32 0, align 4
@NIA_ENG_MASK = common dso_local global i32 0, align 4
@NIA_AC_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FmHcPcdKgCcGetSetParams(i64 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load i64, i64* %5, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %9, align 8
  %19 = load i64, i64* @E_OK, align 8
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @FmPcdKgGetSchemeId(i64 %20)
  store i64 %21, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %14, align 8
  %26 = call i64 @FmPcdKgGetRelativeSchemeId(i32 %24, i64 %25)
  store i64 %26, i64* %13, align 8
  %27 = load i64, i64* %13, align 8
  %28 = load i64, i64* @FM_PCD_KG_NUM_OF_SCHEMES, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %4
  %31 = load i32, i32* @MAJOR, align 4
  %32 = load i64, i64* @E_NOT_IN_RANGE, align 8
  %33 = load i8*, i8** @NO_MSG, align 8
  %34 = call i32 @RETURN_ERROR(i32 %31, i64 %32, i8* %33)
  br label %35

35:                                               ; preds = %30, %4
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %13, align 8
  %40 = call i32 @FmPcdKgGetRequiredActionFlag(i32 %38, i64 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %35
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %13, align 8
  %47 = call i32 @FmPcdKgGetRequiredAction(i32 %45, i64 %46)
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %290, label %51

51:                                               ; preds = %42, %35
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @UPDATE_NIA_ENQ_WITHOUT_DMA, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %103

56:                                               ; preds = %51
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* %13, align 8
  %61 = call i64 @FmPcdKgGetNextEngine(i32 %59, i64 %60)
  %62 = load i64, i64* @e_FM_PCD_PLCR, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %103

64:                                               ; preds = %56
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* %13, align 8
  %69 = call i64 @FmPcdKgIsDirectPlcr(i32 %67, i64 %68)
  %70 = load i64, i64* @FALSE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %80, label %72

72:                                               ; preds = %64
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* %13, align 8
  %77 = call i64 @FmPcdKgIsDistrOnPlcrProfile(i32 %75, i64 %76)
  %78 = load i64, i64* @TRUE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %72, %64
  %81 = load i32, i32* @MAJOR, align 4
  %82 = load i64, i64* @E_NOT_SUPPORTED, align 8
  %83 = call i32 @RETURN_ERROR(i32 %81, i64 %82, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  br label %84

84:                                               ; preds = %80, %72
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i64, i64* %13, align 8
  %92 = call i32 @FmPcdKgGetRelativeProfileId(i32 %90, i64 %91)
  %93 = load i32, i32* %7, align 4
  %94 = call i64 @FmPcdPlcrCcGetSetParams(i32 %87, i32 %92, i32 %93)
  store i64 %94, i64* %10, align 8
  %95 = load i64, i64* %10, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %84
  %98 = load i32, i32* @MAJOR, align 4
  %99 = load i64, i64* %10, align 8
  %100 = load i8*, i8** @NO_MSG, align 8
  %101 = call i32 @RETURN_ERROR(i32 %98, i64 %99, i8* %100)
  br label %102

102:                                              ; preds = %97, %84
  br label %289

103:                                              ; preds = %56, %51
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %105 = call %struct.TYPE_13__* @GetBuf(%struct.TYPE_14__* %104, i32* %16)
  store %struct.TYPE_13__* %105, %struct.TYPE_13__** %11, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %107 = icmp ne %struct.TYPE_13__* %106, null
  br i1 %107, label %112, label %108

108:                                              ; preds = %103
  %109 = load i32, i32* @MINOR, align 4
  %110 = load i64, i64* @E_NO_MEMORY, align 8
  %111 = call i32 @RETURN_ERROR(i32 %109, i64 %110, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %112

112:                                              ; preds = %108, %103
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %114 = call i32 @memset(%struct.TYPE_13__* %113, i32 0, i32 32)
  %115 = load i32, i32* @HC_HCOR_GBL, align 4
  %116 = load i32, i32* @HC_HCOR_OPCODE_KG_SCM, align 4
  %117 = or i32 %115, %116
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load i64, i64* %14, align 8
  %121 = call i32 @FmPcdKgBuildReadSchemeActionReg(i64 %120)
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 8
  %124 = load i8*, i8** @HC_HCOR_KG_SCHEME_REGS_MASK, align 8
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 2
  store i8* %124, i8** %126, align 8
  %127 = load i32, i32* %16, align 4
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* @SIZE_OF_HC_FRAME_READ_OR_CC_DYNAMIC, align 4
  %131 = call i32 @BUILD_FD(i32 %130)
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %133 = load i32, i32* %16, align 4
  %134 = call i64 @EnQFrm(%struct.TYPE_14__* %132, i32* %12, i32 %133)
  store i64 %134, i64* %10, align 8
  %135 = load i64, i64* @E_OK, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %146

137:                                              ; preds = %112
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %140 = load i32, i32* %16, align 4
  %141 = call i32 @PutBuf(%struct.TYPE_14__* %138, %struct.TYPE_13__* %139, i32 %140)
  %142 = load i32, i32* @MINOR, align 4
  %143 = load i64, i64* %10, align 8
  %144 = load i8*, i8** @NO_MSG, align 8
  %145 = call i32 @RETURN_ERROR(i32 %142, i64 %143, i8* %144)
  br label %146

146:                                              ; preds = %137, %112
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* @UPDATE_NIA_ENQ_WITHOUT_DMA, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %186

151:                                              ; preds = %146
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i64, i64* %13, align 8
  %156 = call i64 @FmPcdKgGetNextEngine(i32 %154, i64 %155)
  %157 = load i64, i64* @e_FM_PCD_DONE, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %186

159:                                              ; preds = %151
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i64, i64* %13, align 8
  %164 = call i64 @FmPcdKgGetDoneAction(i32 %162, i64 %163)
  %165 = load i64, i64* @e_FM_PCD_ENQ_FRAME, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %186

167:                                              ; preds = %159
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 4
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %15, align 4
  %173 = load i32, i32* %15, align 4
  %174 = load i32, i32* @NIA_ENG_BMI, align 4
  %175 = load i32, i32* @NIA_BMI_AC_ENQ_FRAME, align 4
  %176 = or i32 %174, %175
  %177 = and i32 %173, %176
  %178 = call i32 @ASSERT_COND(i32 %177)
  %179 = load i32, i32* %15, align 4
  %180 = load i32, i32* @NIA_BMI_AC_ENQ_FRAME_WITHOUT_DMA, align 4
  %181 = or i32 %179, %180
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 4
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 0
  store i32 %181, i32* %185, align 4
  br label %186

186:                                              ; preds = %167, %159, %151, %146
  %187 = load i32, i32* %7, align 4
  %188 = load i32, i32* @UPDATE_KG_NIA_CC_WA, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %222

191:                                              ; preds = %186
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i64, i64* %13, align 8
  %196 = call i64 @FmPcdKgGetNextEngine(i32 %194, i64 %195)
  %197 = load i64, i64* @e_FM_PCD_CC, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %222

199:                                              ; preds = %191
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 4
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  store i32 %204, i32* %15, align 4
  %205 = load i32, i32* %15, align 4
  %206 = load i32, i32* @NIA_ENG_FM_CTL, align 4
  %207 = load i32, i32* @NIA_FM_CTL_AC_CC, align 4
  %208 = or i32 %206, %207
  %209 = and i32 %205, %208
  %210 = call i32 @ASSERT_COND(i32 %209)
  %211 = load i32, i32* @NIA_FM_CTL_AC_CC, align 4
  %212 = xor i32 %211, -1
  %213 = load i32, i32* %15, align 4
  %214 = and i32 %213, %212
  store i32 %214, i32* %15, align 4
  %215 = load i32, i32* %15, align 4
  %216 = load i32, i32* @NIA_FM_CTL_AC_PRE_CC, align 4
  %217 = or i32 %215, %216
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 4
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 0
  store i32 %217, i32* %221, align 4
  br label %222

222:                                              ; preds = %199, %191, %186
  %223 = load i32, i32* %7, align 4
  %224 = load i32, i32* @UPDATE_KG_OPT_MODE, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %222
  %228 = load i32, i32* %8, align 4
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 4
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 1
  store i32 %228, i32* %232, align 4
  br label %233

233:                                              ; preds = %227, %222
  %234 = load i32, i32* %7, align 4
  %235 = load i32, i32* @UPDATE_KG_NIA, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %258

238:                                              ; preds = %233
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 4
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  store i32 %243, i32* %15, align 4
  %244 = load i32, i32* @NIA_ENG_MASK, align 4
  %245 = load i32, i32* @NIA_AC_MASK, align 4
  %246 = or i32 %244, %245
  %247 = xor i32 %246, -1
  %248 = load i32, i32* %15, align 4
  %249 = and i32 %248, %247
  store i32 %249, i32* %15, align 4
  %250 = load i32, i32* %8, align 4
  %251 = load i32, i32* %15, align 4
  %252 = or i32 %251, %250
  store i32 %252, i32* %15, align 4
  %253 = load i32, i32* %15, align 4
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 4
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 0
  store i32 %253, i32* %257, align 4
  br label %258

258:                                              ; preds = %238, %233
  %259 = load i32, i32* @HC_HCOR_GBL, align 4
  %260 = load i32, i32* @HC_HCOR_OPCODE_KG_SCM, align 4
  %261 = or i32 %259, %260
  %262 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 0
  store i32 %261, i32* %263, align 8
  %264 = load i64, i64* %14, align 8
  %265 = load i64, i64* @FALSE, align 8
  %266 = call i32 @FmPcdKgBuildWriteSchemeActionReg(i64 %264, i64 %265)
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 3
  store i32 %266, i32* %268, align 8
  %269 = load i8*, i8** @HC_HCOR_KG_SCHEME_REGS_MASK, align 8
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 2
  store i8* %269, i8** %271, align 8
  %272 = call i32 @BUILD_FD(i32 32)
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %274 = load i32, i32* %16, align 4
  %275 = call i64 @EnQFrm(%struct.TYPE_14__* %273, i32* %12, i32 %274)
  store i64 %275, i64* %10, align 8
  %276 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %277 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %278 = load i32, i32* %16, align 4
  %279 = call i32 @PutBuf(%struct.TYPE_14__* %276, %struct.TYPE_13__* %277, i32 %278)
  %280 = load i64, i64* %10, align 8
  %281 = load i64, i64* @E_OK, align 8
  %282 = icmp ne i64 %280, %281
  br i1 %282, label %283, label %288

283:                                              ; preds = %258
  %284 = load i32, i32* @MINOR, align 4
  %285 = load i64, i64* %10, align 8
  %286 = load i8*, i8** @NO_MSG, align 8
  %287 = call i32 @RETURN_ERROR(i32 %284, i64 %285, i8* %286)
  br label %288

288:                                              ; preds = %283, %258
  br label %289

289:                                              ; preds = %288, %102
  br label %290

290:                                              ; preds = %289, %42
  %291 = load i64, i64* @E_OK, align 8
  ret i64 %291
}

declare dso_local i64 @FmPcdKgGetSchemeId(i64) #1

declare dso_local i64 @FmPcdKgGetRelativeSchemeId(i32, i64) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i32 @FmPcdKgGetRequiredActionFlag(i32, i64) #1

declare dso_local i32 @FmPcdKgGetRequiredAction(i32, i64) #1

declare dso_local i64 @FmPcdKgGetNextEngine(i32, i64) #1

declare dso_local i64 @FmPcdKgIsDirectPlcr(i32, i64) #1

declare dso_local i64 @FmPcdKgIsDistrOnPlcrProfile(i32, i64) #1

declare dso_local i64 @FmPcdPlcrCcGetSetParams(i32, i32, i32) #1

declare dso_local i32 @FmPcdKgGetRelativeProfileId(i32, i64) #1

declare dso_local %struct.TYPE_13__* @GetBuf(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @FmPcdKgBuildReadSchemeActionReg(i64) #1

declare dso_local i32 @BUILD_FD(i32) #1

declare dso_local i64 @EnQFrm(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @PutBuf(%struct.TYPE_14__*, %struct.TYPE_13__*, i32) #1

declare dso_local i64 @FmPcdKgGetDoneAction(i32, i64) #1

declare dso_local i32 @ASSERT_COND(i32) #1

declare dso_local i32 @FmPcdKgBuildWriteSchemeActionReg(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
