; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_plcr.c_PlcrInit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_plcr.c_PlcrInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_15__*, i32, i32, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { i64, i64, %struct.TYPE_13__*, i32, i64, i8*, i8*, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i64 }

@E_OK = common dso_local global i64 0, align 8
@FM_PCD_PLCR_NUM_ENTRIES = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"partPlcrProfilesBase+partNumOfPlcrProfiles out of range!!!\00", align 1
@E_NO_MEMORY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"FM Policer HW spinlock\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"FM Policer SW spinlock\00", align 1
@ILLEGAL_BASE = common dso_local global i64 0, align 8
@NO_MSG = common dso_local global i8* null, align 8
@NCSW_MASTER_ID = common dso_local global i32 0, align 4
@FM_PCD_PLCR_GCR_STEN = common dso_local global i32 0, align 4
@FM_PCD_PLCR_GCR_DAR = common dso_local global i32 0, align 4
@FM_PCD_PLCR_DOUBLE_ECC = common dso_local global i32 0, align 4
@FM_PCD_PLCR_INIT_ENTRY_ERROR = common dso_local global i32 0, align 4
@FM_PCD_EX_PLCR_DOUBLE_ECC = common dso_local global i32 0, align 4
@FM_PCD_EX_PLCR_INIT_ENTRY_ERROR = common dso_local global i32 0, align 4
@FM_PCD_PLCR_PRAM_SELF_INIT_COMPLETE = common dso_local global i32 0, align 4
@FM_PCD_PLCR_ATOMIC_ACTION_COMPLETE = common dso_local global i32 0, align 4
@FM_PCD_EX_PLCR_PRAM_SELF_INIT_COMPLETE = common dso_local global i32 0, align 4
@FM_PCD_EX_PLCR_ATOMIC_ACTION_COMPLETE = common dso_local global i32 0, align 4
@e_FM_MOD_PLCR = common dso_local global i32 0, align 4
@e_FM_INTR_TYPE_ERR = common dso_local global i32 0, align 4
@ErrorExceptionsCB = common dso_local global i32 0, align 4
@e_FM_INTR_TYPE_NORMAL = common dso_local global i32 0, align 4
@EventsCB = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PlcrInit(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  store %struct.TYPE_16__* %12, %struct.TYPE_16__** %4, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %5, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 7
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %6, align 8
  %21 = load i64, i64* @E_OK, align 8
  store i64 %21, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = load i64, i64* @FM_PCD_PLCR_NUM_ENTRIES, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %1
  %32 = load i32, i32* @MAJOR, align 4
  %33 = load i64, i64* @E_INVALID_VALUE, align 8
  %34 = call i32 @RETURN_ERROR(i32 %32, i64 %33, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %31, %1
  %36 = call i8* (...) @XX_InitSpinlock()
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 6
  store i8* %36, i8** %38, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 6
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* @MAJOR, align 4
  %45 = load i64, i64* @E_NO_MEMORY, align 8
  %46 = call i32 @RETURN_ERROR(i32 %44, i64 %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %43, %35
  %48 = call i8* (...) @XX_InitSpinlock()
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 5
  store i8* %48, i8** %50, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 5
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* @MAJOR, align 4
  %57 = load i64, i64* @E_NO_MEMORY, align 8
  %58 = call i32 @RETURN_ERROR(i32 %56, i64 %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %55, %47
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @PlcrAllocProfilesForPartition(%struct.TYPE_17__* %60, i64 %63, i64 %66, i32 %69)
  store i64 %70, i64* %9, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* @ILLEGAL_BASE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %59
  %75 = load i32, i32* @MAJOR, align 4
  %76 = load i64, i64* @E_INVALID_VALUE, align 8
  %77 = load i8*, i8** @NO_MSG, align 8
  %78 = call i32 @RETURN_ERROR(i32 %75, i64 %76, i8* %77)
  br label %79

79:                                               ; preds = %74, %59
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %79
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @AllocSharedProfiles(%struct.TYPE_17__* %85, i64 %88, i32 %91)
  store i64 %92, i64* %7, align 8
  %93 = load i64, i64* %7, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %84
  %96 = load i32, i32* @MAJOR, align 4
  %97 = load i64, i64* %7, align 8
  %98 = load i8*, i8** @NO_MSG, align 8
  %99 = call i32 @RETURN_ERROR(i32 %96, i64 %97, i8* %98)
  br label %100

100:                                              ; preds = %95, %84
  br label %101

101:                                              ; preds = %100, %79
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @NCSW_MASTER_ID, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i64, i64* @E_OK, align 8
  store i64 %108, i64* %2, align 8
  br label %234

109:                                              ; preds = %101
  store i32 0, i32* %8, align 4
  %110 = load i32, i32* @FM_PCD_PLCR_GCR_STEN, align 4
  %111 = load i32, i32* %8, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %8, align 4
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %109
  %118 = load i32, i32* @FM_PCD_PLCR_GCR_DAR, align 4
  %119 = load i32, i32* %8, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %8, align 4
  br label %121

121:                                              ; preds = %117, %109
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %123 = call i32 @GET_NIA_BMI_AC_ENQ_FRAME(%struct.TYPE_17__* %122)
  %124 = load i32, i32* %8, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %8, align 4
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @WRITE_UINT32(i32 %128, i32 %129)
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @FM_PCD_PLCR_DOUBLE_ECC, align 4
  %135 = load i32, i32* @FM_PCD_PLCR_INIT_ENTRY_ERROR, align 4
  %136 = or i32 %134, %135
  %137 = call i32 @WRITE_UINT32(i32 %133, i32 %136)
  store i32 0, i32* %8, align 4
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @FM_PCD_EX_PLCR_DOUBLE_ECC, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %121
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @FmEnableRamsEcc(i32 %147)
  %149 = load i32, i32* @FM_PCD_PLCR_DOUBLE_ECC, align 4
  %150 = load i32, i32* %8, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %8, align 4
  br label %152

152:                                              ; preds = %144, %121
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @FM_PCD_EX_PLCR_INIT_ENTRY_ERROR, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %152
  %160 = load i32, i32* @FM_PCD_PLCR_INIT_ENTRY_ERROR, align 4
  %161 = load i32, i32* %8, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %8, align 4
  br label %163

163:                                              ; preds = %159, %152
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %8, align 4
  %168 = call i32 @WRITE_UINT32(i32 %166, i32 %167)
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @FM_PCD_PLCR_PRAM_SELF_INIT_COMPLETE, align 4
  %173 = load i32, i32* @FM_PCD_PLCR_ATOMIC_ACTION_COMPLETE, align 4
  %174 = or i32 %172, %173
  %175 = call i32 @WRITE_UINT32(i32 %171, i32 %174)
  store i32 0, i32* %8, align 4
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @FM_PCD_EX_PLCR_PRAM_SELF_INIT_COMPLETE, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %163
  %183 = load i32, i32* @FM_PCD_PLCR_PRAM_SELF_INIT_COMPLETE, align 4
  %184 = load i32, i32* %8, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %8, align 4
  br label %186

186:                                              ; preds = %182, %163
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @FM_PCD_EX_PLCR_ATOMIC_ACTION_COMPLETE, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %186
  %194 = load i32, i32* @FM_PCD_PLCR_ATOMIC_ACTION_COMPLETE, align 4
  %195 = load i32, i32* %8, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %8, align 4
  br label %197

197:                                              ; preds = %193, %186
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %8, align 4
  %202 = call i32 @WRITE_UINT32(i32 %200, i32 %201)
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @e_FM_MOD_PLCR, align 4
  %207 = load i32, i32* @e_FM_INTR_TYPE_ERR, align 4
  %208 = load i32, i32* @ErrorExceptionsCB, align 4
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %210 = call i32 @FmRegisterIntr(i32 %205, i32 %206, i32 0, i32 %207, i32 %208, %struct.TYPE_17__* %209)
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @e_FM_MOD_PLCR, align 4
  %215 = load i32, i32* @e_FM_INTR_TYPE_NORMAL, align 4
  %216 = load i32, i32* @EventsCB, align 4
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %218 = call i32 @FmRegisterIntr(i32 %213, i32 %214, i32 0, i32 %215, i32 %216, %struct.TYPE_17__* %217)
  store i32 0, i32* %8, align 4
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* %8, align 4
  %223 = call i32 @WRITE_UINT32(i32 %221, i32 %222)
  %224 = load i32, i32* @TRUE, align 4
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 2
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i64 0
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 0
  store i32 %224, i32* %232, align 4
  %233 = load i64, i64* @E_OK, align 8
  store i64 %233, i64* %2, align 8
  br label %234

234:                                              ; preds = %197, %107
  %235 = load i64, i64* %2, align 8
  ret i64 %235
}

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i8* @XX_InitSpinlock(...) #1

declare dso_local i64 @PlcrAllocProfilesForPartition(%struct.TYPE_17__*, i64, i64, i32) #1

declare dso_local i64 @AllocSharedProfiles(%struct.TYPE_17__*, i64, i32) #1

declare dso_local i32 @GET_NIA_BMI_AC_ENQ_FRAME(%struct.TYPE_17__*) #1

declare dso_local i32 @WRITE_UINT32(i32, i32) #1

declare dso_local i32 @FmEnableRamsEcc(i32) #1

declare dso_local i32 @FmRegisterIntr(i32, i32, i32, i32, i32, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
