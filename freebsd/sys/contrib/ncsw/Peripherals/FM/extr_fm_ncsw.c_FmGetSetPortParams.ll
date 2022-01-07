; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fm_ncsw.c_FmGetSetPortParams.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fm_ncsw.c_FmGetSetPortParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i64, i64, i64, %struct.TYPE_18__, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_26__ = type { i64, i32, %struct.TYPE_21__*, i8*, i64, i32*, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i64*, i64, i64*, i64*, i64*, i64*, %struct.TYPE_20__, i8* }
%struct.TYPE_20__ = type { i32 }
%struct.fman_rg = type { i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i64, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_22__ = type { i64*, i32, %struct.TYPE_24__*, i32 }

@NCSW_MASTER_ID = common dso_local global i64 0, align 8
@FM_GET_SET_PORT_PARAMS = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8
@MINOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"IPC reply length mismatch\00", align 1
@e_FM_PORT_TYPE_OH_HOST_COMMAND = common dso_local global i64 0, align 8
@E_INVALID_STATE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Only one host command port is allowed.\00", align 1
@TRUE = common dso_local global i8* null, align 8
@e_FM_PORT_TYPE_RX = common dso_local global i64 0, align 8
@e_FM_PORT_TYPE_RX_10G = common dso_local global i64 0, align 8
@QMI_MAX_NUM_OF_TNUMS = common dso_local global i32 0, align 4
@e_FM_PORT_TYPE_TX = common dso_local global i64 0, align 8
@FM_MAX_NUM_OF_1G_MACS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"Port maxFrameLength is smaller than MAC current MTU\00", align 1
@E_NOT_AVAILABLE = common dso_local global i64 0, align 8
@FM_MAX_NUM_OF_10G_MACS = common dso_local global i64 0, align 8
@e_FM_PORT_TYPE_TX_10G = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FmGetSetPortParams(i64 %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.fman_rg, align 4
  %12 = alloca %struct.TYPE_24__, align 8
  %13 = alloca %struct.TYPE_23__, align 4
  %14 = alloca %struct.TYPE_22__, align 8
  %15 = alloca %struct.TYPE_22__, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  %19 = load i64, i64* %4, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %20, %struct.TYPE_26__** %6, align 8
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.fman_rg, %struct.fman_rg* %11, i32 0, i32 3
  store i32 %26, i32* %27, align 4
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.fman_rg, %struct.fman_rg* %11, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.fman_rg, %struct.fman_rg* %11, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.fman_rg, %struct.fman_rg* %11, i32 0, i32 2
  store i32 %38, i32* %39, align 4
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @NCSW_MASTER_ID, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %173

45:                                               ; preds = %2
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  store i64 %48, i64* %49, align 8
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 1
  store i32 %53, i32* %54, align 8
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 2
  store i64 %57, i64* %58, align 8
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 12
  store i32 %61, i32* %62, align 4
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 13
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 11
  store i32 %65, i32* %66, align 8
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 12
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 10
  store i32 %69, i32* %70, align 4
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 9
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 9
  store i32 %73, i32* %74, align 8
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 8
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 8
  store i32 %77, i32* %78, align 4
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 11
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 7
  store i32 %81, i32* %82, align 8
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 10
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 6
  store i32 %85, i32* %86, align 4
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 3
  store i64 %89, i64* %90, align 8
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 4
  store i64 %93, i64* %94, align 8
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 7
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 5
  store i32 %97, i32* %98, align 8
  %99 = call i32 @memset(%struct.TYPE_22__* %14, i32 0, i32 32)
  %100 = call i32 @memset(%struct.TYPE_22__* %15, i32 0, i32 32)
  %101 = load i32, i32* @FM_GET_SET_PORT_PARAMS, align 4
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 3
  store i32 %101, i32* %102, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %104 = load i64*, i64** %103, align 8
  %105 = call i32 @memcpy(i64* %104, %struct.TYPE_24__* %12, i32 72)
  store i32 36, i32* %16, align 4
  %106 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %106, i32 0, i32 5
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = bitcast %struct.TYPE_22__* %14 to i64*
  %112 = bitcast %struct.TYPE_22__* %15 to i64*
  %113 = call i64 @XX_IpcSendMessage(i32 %110, i64* %111, i32 76, i64* %112, i32* %16, i32* null, i32* null)
  store i64 %113, i64* %7, align 8
  %114 = load i64, i64* @E_OK, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %45
  %117 = load i32, i32* @MINOR, align 4
  %118 = load i64, i64* %7, align 8
  %119 = load i8*, i8** @NO_MSG, align 8
  %120 = call i32 @RETURN_ERROR(i32 %117, i64 %118, i8* %119)
  br label %121

121:                                              ; preds = %116, %45
  %122 = load i32, i32* %16, align 4
  %123 = sext i32 %122 to i64
  %124 = icmp ne i64 %123, 36
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = load i32, i32* @MAJOR, align 4
  %127 = load i64, i64* @E_INVALID_VALUE, align 8
  %128 = call i32 @RETURN_ERROR(i32 %126, i64 %127, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %129

129:                                              ; preds = %125, %121
  %130 = bitcast %struct.TYPE_23__* %13 to i64*
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 2
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %131, align 8
  %133 = call i32 @memcpy(i64* %130, %struct.TYPE_24__* %132, i32 32)
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 6
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 1
  store i32 %136, i32* %139, align 4
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 6
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 0
  store i32 %142, i32* %145, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %148, i32 0, i32 13
  store i32 %147, i32* %149, align 4
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %152, i32 0, i32 12
  store i32 %151, i32* %153, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 9
  store i32 %155, i32* %157, align 4
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %160, i32 0, i32 8
  store i32 %159, i32* %161, align 8
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %164, i32 0, i32 11
  store i32 %163, i32* %165, align 4
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %168, i32 0, i32 10
  store i32 %167, i32* %169, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = sext i32 %171 to i64
  store i64 %172, i64* %3, align 8
  br label %470

173:                                              ; preds = %2
  %174 = load i64, i64* %9, align 8
  %175 = call i32 @IN_RANGE(i32 1, i64 %174, i32 63)
  %176 = call i32 @ASSERT_COND(i32 %175)
  %177 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @XX_LockIntrSpinlock(i32 %179)
  store i32 %180, i32* %8, align 4
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %181, i32 0, i32 5
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %194

185:                                              ; preds = %173
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 5
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %189, i32 0, i32 4
  store i64 %188, i64* %190, align 8
  %191 = getelementptr inbounds %struct.fman_rg, %struct.fman_rg* %11, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @fman_qmi_disable_dispatch_limit(i32 %192)
  br label %194

194:                                              ; preds = %185, %173
  %195 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @e_FM_PORT_TYPE_OH_HOST_COMMAND, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %219

200:                                              ; preds = %194
  %201 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %201, i32 0, i32 3
  %203 = load i8*, i8** %202, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %205, label %214

205:                                              ; preds = %200
  %206 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* %8, align 4
  %210 = call i32 @XX_UnlockIntrSpinlock(i32 %208, i32 %209)
  %211 = load i32, i32* @MAJOR, align 4
  %212 = load i64, i64* @E_INVALID_STATE, align 8
  %213 = call i32 @RETURN_ERROR(i32 %211, i64 %212, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %218

214:                                              ; preds = %200
  %215 = load i8*, i8** @TRUE, align 8
  %216 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %216, i32 0, i32 3
  store i8* %215, i8** %217, align 8
  br label %218

218:                                              ; preds = %214, %205
  br label %219

219:                                              ; preds = %218, %194
  %220 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %223, i32 0, i32 2
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 0
  %227 = load i64*, i64** %226, align 8
  %228 = load i64, i64* %9, align 8
  %229 = getelementptr inbounds i64, i64* %227, i64 %228
  store i64 %222, i64* %229, align 8
  %230 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %231 = load i64, i64* %9, align 8
  %232 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %232, i32 0, i32 13
  %234 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %234, i32 0, i32 12
  %236 = load i8*, i8** @TRUE, align 8
  %237 = call i64 @FmSetNumOfTasks(%struct.TYPE_26__* %230, i64 %231, i32* %233, i32* %235, i8* %236)
  store i64 %237, i64* %7, align 8
  %238 = load i64, i64* %7, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %250

240:                                              ; preds = %219
  %241 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* %8, align 4
  %245 = call i32 @XX_UnlockIntrSpinlock(i32 %243, i32 %244)
  %246 = load i32, i32* @MAJOR, align 4
  %247 = load i64, i64* %7, align 8
  %248 = load i8*, i8** @NO_MSG, align 8
  %249 = call i32 @RETURN_ERROR(i32 %246, i64 %247, i8* %248)
  br label %250

250:                                              ; preds = %240, %219
  %251 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @e_FM_PORT_TYPE_RX, align 8
  %255 = icmp ne i64 %253, %254
  br i1 %255, label %256, label %328

256:                                              ; preds = %250
  %257 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @e_FM_PORT_TYPE_RX_10G, align 8
  %261 = icmp ne i64 %259, %260
  br i1 %261, label %262, label %328

262:                                              ; preds = %256
  %263 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %263, i32 0, i32 2
  %265 = load i64, i64* %264, align 8
  %266 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %266, i32 0, i32 2
  %268 = load %struct.TYPE_21__*, %struct.TYPE_21__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = add i64 %270, %265
  store i64 %271, i64* %269, align 8
  %272 = getelementptr inbounds %struct.fman_rg, %struct.fman_rg* %11, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = call i64 @fman_get_qmi_enq_th(i32 %273)
  store i64 %274, i64* %17, align 8
  %275 = load i64, i64* %17, align 8
  %276 = load i32, i32* @QMI_MAX_NUM_OF_TNUMS, align 4
  %277 = sext i32 %276 to i64
  %278 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %278, i32 0, i32 2
  %280 = load %struct.TYPE_21__*, %struct.TYPE_21__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = sub i64 %277, %282
  %284 = icmp uge i64 %275, %283
  br i1 %284, label %285, label %299

285:                                              ; preds = %262
  %286 = load i32, i32* @QMI_MAX_NUM_OF_TNUMS, align 4
  %287 = sext i32 %286 to i64
  %288 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %288, i32 0, i32 2
  %290 = load %struct.TYPE_21__*, %struct.TYPE_21__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = sub i64 %287, %292
  %294 = sub i64 %293, 1
  store i64 %294, i64* %17, align 8
  %295 = getelementptr inbounds %struct.fman_rg, %struct.fman_rg* %11, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load i64, i64* %17, align 8
  %298 = call i32 @fman_set_qmi_enq_th(i32 %296, i64 %297)
  br label %299

299:                                              ; preds = %285, %262
  %300 = getelementptr inbounds %struct.fman_rg, %struct.fman_rg* %11, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = call i64 @fman_get_qmi_deq_th(i32 %301)
  store i64 %302, i64* %18, align 8
  %303 = load i64, i64* %18, align 8
  %304 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %304, i32 0, i32 2
  %306 = load %struct.TYPE_21__*, %struct.TYPE_21__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = icmp ule i64 %303, %308
  br i1 %309, label %310, label %327

310:                                              ; preds = %299
  %311 = load i64, i64* %18, align 8
  %312 = load i32, i32* @QMI_MAX_NUM_OF_TNUMS, align 4
  %313 = sub nsw i32 %312, 1
  %314 = sext i32 %313 to i64
  %315 = icmp ult i64 %311, %314
  br i1 %315, label %316, label %327

316:                                              ; preds = %310
  %317 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %318 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %317, i32 0, i32 2
  %319 = load %struct.TYPE_21__*, %struct.TYPE_21__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %319, i32 0, i32 1
  %321 = load i64, i64* %320, align 8
  %322 = add i64 %321, 1
  store i64 %322, i64* %18, align 8
  %323 = getelementptr inbounds %struct.fman_rg, %struct.fman_rg* %11, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = load i64, i64* %18, align 8
  %326 = call i32 @fman_set_qmi_deq_th(i32 %324, i64 %325)
  br label %327

327:                                              ; preds = %316, %310, %299
  br label %328

328:                                              ; preds = %327, %256, %250
  %329 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %330 = load i64, i64* %9, align 8
  %331 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %332 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %331, i32 0, i32 11
  %333 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %334 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %333, i32 0, i32 10
  %335 = load i8*, i8** @TRUE, align 8
  %336 = call i64 @FmSetSizeOfFifo(%struct.TYPE_26__* %329, i64 %330, i32* %332, i32* %334, i8* %335)
  store i64 %336, i64* %7, align 8
  %337 = load i64, i64* %7, align 8
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %349

339:                                              ; preds = %328
  %340 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %341 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 8
  %343 = load i32, i32* %8, align 4
  %344 = call i32 @XX_UnlockIntrSpinlock(i32 %342, i32 %343)
  %345 = load i32, i32* @MAJOR, align 4
  %346 = load i64, i64* %7, align 8
  %347 = load i8*, i8** @NO_MSG, align 8
  %348 = call i32 @RETURN_ERROR(i32 %345, i64 %346, i8* %347)
  br label %349

349:                                              ; preds = %339, %328
  %350 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %351 = load i64, i64* %9, align 8
  %352 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %353 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %352, i32 0, i32 9
  %354 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %354, i32 0, i32 8
  %356 = load i8*, i8** @TRUE, align 8
  %357 = call i64 @FmSetNumOfOpenDmas(%struct.TYPE_26__* %350, i64 %351, i32* %353, i32* %355, i8* %356)
  store i64 %357, i64* %7, align 8
  %358 = load i64, i64* %7, align 8
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %370

360:                                              ; preds = %349
  %361 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %362 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 8
  %364 = load i32, i32* %8, align 4
  %365 = call i32 @XX_UnlockIntrSpinlock(i32 %363, i32 %364)
  %366 = load i32, i32* @MAJOR, align 4
  %367 = load i64, i64* %7, align 8
  %368 = load i8*, i8** @NO_MSG, align 8
  %369 = call i32 @RETURN_ERROR(i32 %366, i64 %367, i8* %368)
  br label %370

370:                                              ; preds = %360, %349
  %371 = load i64, i64* %9, align 8
  %372 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %373 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %372, i32 0, i32 7
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %376 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %375, i32 0, i32 6
  %377 = load i32, i32* %376, align 8
  %378 = call i32 @fman_set_liodn_per_port(%struct.fman_rg* %11, i64 %371, i32 %374, i32 %377)
  %379 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %380 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %379, i32 0, i32 2
  %381 = load %struct.TYPE_21__*, %struct.TYPE_21__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %381, i32 0, i32 6
  %383 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = icmp slt i32 %384, 6
  br i1 %385, label %386, label %410

386:                                              ; preds = %370
  %387 = getelementptr inbounds %struct.fman_rg, %struct.fman_rg* %11, i32 0, i32 0
  %388 = load i32, i32* %387, align 4
  %389 = load i64, i64* %9, align 8
  %390 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %391 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %390, i32 0, i32 5
  %392 = load i64, i64* %391, align 8
  %393 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %394 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %393, i32 0, i32 1
  %395 = load i64, i64* %394, align 8
  %396 = load i64, i64* @e_FM_PORT_TYPE_RX, align 8
  %397 = icmp eq i64 %395, %396
  br i1 %397, label %404, label %398

398:                                              ; preds = %386
  %399 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %400 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %399, i32 0, i32 1
  %401 = load i64, i64* %400, align 8
  %402 = load i64, i64* @e_FM_PORT_TYPE_RX_10G, align 8
  %403 = icmp eq i64 %401, %402
  br label %404

404:                                              ; preds = %398, %386
  %405 = phi i1 [ true, %386 ], [ %403, %398 ]
  %406 = xor i1 %405, true
  %407 = xor i1 %406, true
  %408 = zext i1 %407 to i32
  %409 = call i32 @fman_set_order_restoration_per_port(i32 %388, i64 %389, i64 %392, i32 %408)
  br label %410

410:                                              ; preds = %404, %370
  %411 = load i64, i64* %10, align 8
  %412 = load i64, i64* %9, align 8
  %413 = call i32 @HW_PORT_ID_TO_SW_PORT_ID(i64 %411, i64 %412)
  %414 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %415 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %414, i32 0, i32 1
  %416 = load i64, i64* %415, align 8
  %417 = load i64, i64* @e_FM_PORT_TYPE_TX, align 8
  %418 = icmp eq i64 %416, %417
  br i1 %418, label %425, label %419

419:                                              ; preds = %410
  %420 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %421 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %420, i32 0, i32 1
  %422 = load i64, i64* %421, align 8
  %423 = load i64, i64* @e_FM_PORT_TYPE_RX, align 8
  %424 = icmp eq i64 %422, %423
  br i1 %424, label %425, label %459

425:                                              ; preds = %419, %410
  %426 = load i64, i64* %10, align 8
  %427 = load i64, i64* @FM_MAX_NUM_OF_1G_MACS, align 8
  %428 = icmp ult i64 %426, %427
  %429 = zext i1 %428 to i32
  %430 = call i32 @ASSERT_COND(i32 %429)
  %431 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %432 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %431, i32 0, i32 3
  %433 = load i64, i64* %432, align 8
  %434 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %435 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %434, i32 0, i32 2
  %436 = load %struct.TYPE_21__*, %struct.TYPE_21__** %435, align 8
  %437 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %436, i32 0, i32 4
  %438 = load i64*, i64** %437, align 8
  %439 = load i64, i64* %10, align 8
  %440 = getelementptr inbounds i64, i64* %438, i64 %439
  %441 = load i64, i64* %440, align 8
  %442 = icmp sge i64 %433, %441
  br i1 %442, label %443, label %454

443:                                              ; preds = %425
  %444 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %445 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %444, i32 0, i32 3
  %446 = load i64, i64* %445, align 8
  %447 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %448 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %447, i32 0, i32 2
  %449 = load %struct.TYPE_21__*, %struct.TYPE_21__** %448, align 8
  %450 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %449, i32 0, i32 5
  %451 = load i64*, i64** %450, align 8
  %452 = load i64, i64* %10, align 8
  %453 = getelementptr inbounds i64, i64* %451, i64 %452
  store i64 %446, i64* %453, align 8
  br label %458

454:                                              ; preds = %425
  %455 = load i32, i32* @MINOR, align 4
  %456 = load i64, i64* @E_INVALID_VALUE, align 8
  %457 = call i32 @RETURN_ERROR(i32 %455, i64 %456, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %458

458:                                              ; preds = %454, %443
  br label %459

459:                                              ; preds = %458, %419
  %460 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %461 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %462 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %461, i32 0, i32 4
  %463 = call i32 @FmGetPhysicalMuramBase(%struct.TYPE_26__* %460, %struct.TYPE_18__* %462)
  %464 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %465 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %464, i32 0, i32 1
  %466 = load i32, i32* %465, align 8
  %467 = load i32, i32* %8, align 4
  %468 = call i32 @XX_UnlockIntrSpinlock(i32 %466, i32 %467)
  %469 = load i64, i64* @E_OK, align 8
  store i64 %469, i64* %3, align 8
  br label %470

470:                                              ; preds = %459, %129
  %471 = load i64, i64* %3, align 8
  ret i64 %471
}

declare dso_local i32 @memset(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @memcpy(i64*, %struct.TYPE_24__*, i32) #1

declare dso_local i64 @XX_IpcSendMessage(i32, i64*, i32, i64*, i32*, i32*, i32*) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i32 @ASSERT_COND(i32) #1

declare dso_local i32 @IN_RANGE(i32, i64, i32) #1

declare dso_local i32 @XX_LockIntrSpinlock(i32) #1

declare dso_local i32 @fman_qmi_disable_dispatch_limit(i32) #1

declare dso_local i32 @XX_UnlockIntrSpinlock(i32, i32) #1

declare dso_local i64 @FmSetNumOfTasks(%struct.TYPE_26__*, i64, i32*, i32*, i8*) #1

declare dso_local i64 @fman_get_qmi_enq_th(i32) #1

declare dso_local i32 @fman_set_qmi_enq_th(i32, i64) #1

declare dso_local i64 @fman_get_qmi_deq_th(i32) #1

declare dso_local i32 @fman_set_qmi_deq_th(i32, i64) #1

declare dso_local i64 @FmSetSizeOfFifo(%struct.TYPE_26__*, i64, i32*, i32*, i8*) #1

declare dso_local i64 @FmSetNumOfOpenDmas(%struct.TYPE_26__*, i64, i32*, i32*, i8*) #1

declare dso_local i32 @fman_set_liodn_per_port(%struct.fman_rg*, i64, i32, i32) #1

declare dso_local i32 @fman_set_order_restoration_per_port(i32, i64, i64, i32) #1

declare dso_local i32 @HW_PORT_ID_TO_SW_PORT_ID(i64, i64) #1

declare dso_local i32 @FmGetPhysicalMuramBase(%struct.TYPE_26__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
