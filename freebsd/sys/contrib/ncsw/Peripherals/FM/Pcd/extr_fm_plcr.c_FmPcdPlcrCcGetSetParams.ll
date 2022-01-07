; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_plcr.c_FmPcdPlcrCcGetSetParams.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_plcr.c_FmPcdPlcrCcGetSetParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_21__*, i64 }
%struct.TYPE_21__ = type { %struct.TYPE_18__*, %struct.TYPE_20__* }
%struct.TYPE_18__ = type { i32, i64, i64, i64, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32, i32 }

@FM_PCD_PLCR_NUM_ENTRIES = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Policer profile out of range\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Policer profile is not valid\00", align 1
@TRUE = common dso_local global i32 0, align 4
@UPDATE_NIA_ENQ_WITHOUT_DMA = common dso_local global i32 0, align 4
@e_FM_PCD_DONE = common dso_local global i64 0, align 8
@E_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"In this case the next engine can be e_FM_PCD_DONE\00", align 1
@e_FM_PCD_ENQ_FRAME = common dso_local global i64 0, align 8
@NIA_ENG_BMI = common dso_local global i32 0, align 4
@NIA_BMI_AC_ENQ_FRAME = common dso_local global i32 0, align 4
@E_INVALID_STATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [70 x i8] c"Next engine of this policer profile has to be assigned to FM_PCD_DONE\00", align 1
@NIA_BMI_AC_ENQ_FRAME_WITHOUT_DMA = common dso_local global i32 0, align 4
@FM_PCD_PLCR_PAR_PWSEL_PEGNIA = common dso_local global i32 0, align 4
@FM_PCD_PLCR_PAR_PWSEL_PEYNIA = common dso_local global i32 0, align 4
@FM_PCD_PLCR_PAR_PWSEL_PERNIA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FmPcdPlcrCcGetSetParams(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i64, i64* %5, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %15, %struct.TYPE_22__** %8, align 8
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  store %struct.TYPE_21__* %18, %struct.TYPE_21__** %9, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  store %struct.TYPE_20__* %21, %struct.TYPE_20__** %10, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @FM_PCD_PLCR_NUM_ENTRIES, align 8
  %24 = icmp uge i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i32, i32* @MAJOR, align 4
  %27 = load i32, i32* @E_INVALID_VALUE, align 4
  %28 = call i32 @RETURN_ERROR(i32 %26, i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %25, %3
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @FmPcdPlcrIsProfileValid(%struct.TYPE_22__* %30, i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @MAJOR, align 4
  %36 = load i32, i32* @E_INVALID_VALUE, align 4
  %37 = call i32 @RETURN_ERROR(i32 %35, i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %34, %29
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %38
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @FmHcPcdPlcrCcGetSetParams(i64 %46, i64 %47, i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load i32, i32* @TRUE, align 4
  %53 = call i32 @UpdateRequiredActionFlag(%struct.TYPE_22__* %50, i64 %51, i32 %52)
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @FmPcdPlcrUpdateRequiredAction(%struct.TYPE_22__* %54, i64 %55, i32 %56)
  %58 = load i32, i32* %13, align 4
  store i32 %58, i32* %4, align 4
  br label %305

59:                                               ; preds = %38
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %61 = call i32 @PlcrHwLock(%struct.TYPE_21__* %60)
  store i32 %61, i32* %12, align 4
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @FmPcdPlcrBuildReadPlcrActionReg(i64 %63)
  %65 = call i32 @WritePar(%struct.TYPE_22__* %62, i32 %64)
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %69, align 8
  %71 = load i64, i64* %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %59
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %80, align 8
  %82 = load i64, i64* %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %292, label %89

89:                                               ; preds = %76, %59
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @UPDATE_NIA_ENQ_WITHOUT_DMA, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %291

94:                                               ; preds = %89
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %98, align 8
  %100 = load i64, i64* %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @e_FM_PCD_DONE, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %130, label %106

106:                                              ; preds = %94
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %110, align 8
  %112 = load i64, i64* %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @e_FM_PCD_DONE, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %130, label %118

118:                                              ; preds = %106
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %122, align 8
  %124 = load i64, i64* %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @e_FM_PCD_DONE, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %118, %106, %94
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %132 = load i32, i32* %12, align 4
  %133 = call i32 @PlcrHwUnlock(%struct.TYPE_21__* %131, i32 %132)
  %134 = load i32, i32* @MAJOR, align 4
  %135 = load i32, i32* @E_OK, align 4
  %136 = call i32 @RETURN_ERROR(i32 %134, i32 %135, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %137

137:                                              ; preds = %130, %118
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %141, align 8
  %143 = load i64, i64* %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 6
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @e_FM_PCD_ENQ_FRAME, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %187

150:                                              ; preds = %137
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @GET_UINT32(i32 %154)
  store i32 %155, i32* %11, align 4
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* @NIA_ENG_BMI, align 4
  %158 = load i32, i32* @NIA_BMI_AC_ENQ_FRAME, align 4
  %159 = or i32 %157, %158
  %160 = and i32 %156, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %169, label %162

162:                                              ; preds = %150
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %164 = load i32, i32* %12, align 4
  %165 = call i32 @PlcrHwUnlock(%struct.TYPE_21__* %163, i32 %164)
  %166 = load i32, i32* @MAJOR, align 4
  %167 = load i32, i32* @E_INVALID_STATE, align 4
  %168 = call i32 @RETURN_ERROR(i32 %166, i32 %167, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0))
  br label %169

169:                                              ; preds = %162, %150
  %170 = load i32, i32* @NIA_BMI_AC_ENQ_FRAME_WITHOUT_DMA, align 4
  %171 = load i32, i32* %11, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %11, align 4
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %11, align 4
  %178 = call i32 @WRITE_UINT32(i32 %176, i32 %177)
  %179 = load i64, i64* %6, align 8
  %180 = call i32 @FmPcdPlcrBuildWritePlcrActionReg(i64 %179)
  store i32 %180, i32* %11, align 4
  %181 = load i32, i32* @FM_PCD_PLCR_PAR_PWSEL_PEGNIA, align 4
  %182 = load i32, i32* %11, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %11, align 4
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %185 = load i32, i32* %11, align 4
  %186 = call i32 @WritePar(%struct.TYPE_22__* %184, i32 %185)
  br label %187

187:                                              ; preds = %169, %137
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %191, align 8
  %193 = load i64, i64* %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 5
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @e_FM_PCD_ENQ_FRAME, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %240

200:                                              ; preds = %187
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @GET_UINT32(i32 %204)
  store i32 %205, i32* %11, align 4
  %206 = load i32, i32* %11, align 4
  %207 = load i32, i32* @NIA_ENG_BMI, align 4
  %208 = load i32, i32* @NIA_BMI_AC_ENQ_FRAME, align 4
  %209 = or i32 %207, %208
  %210 = and i32 %206, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %219, label %212

212:                                              ; preds = %200
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %214 = load i32, i32* %12, align 4
  %215 = call i32 @PlcrHwUnlock(%struct.TYPE_21__* %213, i32 %214)
  %216 = load i32, i32* @MAJOR, align 4
  %217 = load i32, i32* @E_INVALID_STATE, align 4
  %218 = call i32 @RETURN_ERROR(i32 %216, i32 %217, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0))
  br label %219

219:                                              ; preds = %212, %200
  %220 = load i32, i32* @NIA_BMI_AC_ENQ_FRAME_WITHOUT_DMA, align 4
  %221 = load i32, i32* %11, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %11, align 4
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* %11, align 4
  %228 = call i32 @WRITE_UINT32(i32 %226, i32 %227)
  %229 = load i64, i64* %6, align 8
  %230 = call i32 @FmPcdPlcrBuildWritePlcrActionReg(i64 %229)
  store i32 %230, i32* %11, align 4
  %231 = load i32, i32* @FM_PCD_PLCR_PAR_PWSEL_PEYNIA, align 4
  %232 = load i32, i32* %11, align 4
  %233 = or i32 %232, %231
  store i32 %233, i32* %11, align 4
  %234 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %235 = load i32, i32* %11, align 4
  %236 = call i32 @WritePar(%struct.TYPE_22__* %234, i32 %235)
  %237 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %238 = load i32, i32* %12, align 4
  %239 = call i32 @PlcrHwUnlock(%struct.TYPE_21__* %237, i32 %238)
  br label %240

240:                                              ; preds = %219, %187
  %241 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %241, i32 0, i32 0
  %243 = load %struct.TYPE_21__*, %struct.TYPE_21__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %244, align 8
  %246 = load i64, i64* %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %245, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 4
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @e_FM_PCD_ENQ_FRAME, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %290

253:                                              ; preds = %240
  %254 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %255 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @GET_UINT32(i32 %257)
  store i32 %258, i32* %11, align 4
  %259 = load i32, i32* %11, align 4
  %260 = load i32, i32* @NIA_ENG_BMI, align 4
  %261 = load i32, i32* @NIA_BMI_AC_ENQ_FRAME, align 4
  %262 = or i32 %260, %261
  %263 = and i32 %259, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %272, label %265

265:                                              ; preds = %253
  %266 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %267 = load i32, i32* %12, align 4
  %268 = call i32 @PlcrHwUnlock(%struct.TYPE_21__* %266, i32 %267)
  %269 = load i32, i32* @MAJOR, align 4
  %270 = load i32, i32* @E_INVALID_STATE, align 4
  %271 = call i32 @RETURN_ERROR(i32 %269, i32 %270, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0))
  br label %272

272:                                              ; preds = %265, %253
  %273 = load i32, i32* @NIA_BMI_AC_ENQ_FRAME_WITHOUT_DMA, align 4
  %274 = load i32, i32* %11, align 4
  %275 = or i32 %274, %273
  store i32 %275, i32* %11, align 4
  %276 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %277 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* %11, align 4
  %281 = call i32 @WRITE_UINT32(i32 %279, i32 %280)
  %282 = load i64, i64* %6, align 8
  %283 = call i32 @FmPcdPlcrBuildWritePlcrActionReg(i64 %282)
  store i32 %283, i32* %11, align 4
  %284 = load i32, i32* @FM_PCD_PLCR_PAR_PWSEL_PERNIA, align 4
  %285 = load i32, i32* %11, align 4
  %286 = or i32 %285, %284
  store i32 %286, i32* %11, align 4
  %287 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %288 = load i32, i32* %11, align 4
  %289 = call i32 @WritePar(%struct.TYPE_22__* %287, i32 %288)
  br label %290

290:                                              ; preds = %272, %240
  br label %291

291:                                              ; preds = %290, %89
  br label %292

292:                                              ; preds = %291, %76
  %293 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %294 = load i32, i32* %12, align 4
  %295 = call i32 @PlcrHwUnlock(%struct.TYPE_21__* %293, i32 %294)
  %296 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %297 = load i64, i64* %6, align 8
  %298 = load i32, i32* @TRUE, align 4
  %299 = call i32 @UpdateRequiredActionFlag(%struct.TYPE_22__* %296, i64 %297, i32 %298)
  %300 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %301 = load i64, i64* %6, align 8
  %302 = load i32, i32* %7, align 4
  %303 = call i32 @FmPcdPlcrUpdateRequiredAction(%struct.TYPE_22__* %300, i64 %301, i32 %302)
  %304 = load i32, i32* @E_OK, align 4
  store i32 %304, i32* %4, align 4
  br label %305

305:                                              ; preds = %292, %43
  %306 = load i32, i32* %4, align 4
  ret i32 %306
}

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

declare dso_local i32 @FmPcdPlcrIsProfileValid(%struct.TYPE_22__*, i64) #1

declare dso_local i32 @FmHcPcdPlcrCcGetSetParams(i64, i64, i32) #1

declare dso_local i32 @UpdateRequiredActionFlag(%struct.TYPE_22__*, i64, i32) #1

declare dso_local i32 @FmPcdPlcrUpdateRequiredAction(%struct.TYPE_22__*, i64, i32) #1

declare dso_local i32 @PlcrHwLock(%struct.TYPE_21__*) #1

declare dso_local i32 @WritePar(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @FmPcdPlcrBuildReadPlcrActionReg(i64) #1

declare dso_local i32 @PlcrHwUnlock(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @GET_UINT32(i32) #1

declare dso_local i32 @WRITE_UINT32(i32, i32) #1

declare dso_local i32 @FmPcdPlcrBuildWritePlcrActionReg(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
