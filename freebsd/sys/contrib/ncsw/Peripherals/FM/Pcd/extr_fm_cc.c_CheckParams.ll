; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_CheckParams.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_CheckParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_24__*, %struct.TYPE_26__ }
%struct.TYPE_24__ = type { %struct.TYPE_26__, %struct.TYPE_26__*, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_23__ = type { i64, i32, %struct.TYPE_21__*, i32, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_25__, i8*, %struct.TYPE_25__*, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64, %struct.TYPE_20__, i64 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }

@MAJOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Invalid statistics parameters\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"For this node MissNextEngineParams are not valid\00", align 1
@NO_MSG = common dso_local global i8* null, align 8
@e_FM_PCD_CC = common dso_local global i64 0, align 8
@E_INVALID_VALUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"p_Key is not initialized\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"Number of keys exceed the provided maximal number of keys\00", align 1
@TRUE = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_22__*, %struct.TYPE_23__*, i32*)* @CheckParams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CheckParams(i32 %0, %struct.TYPE_22__* %1, %struct.TYPE_23__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i8* null, i8** %12, align 8
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 5
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 4
  %19 = call i64 @ValidateAndCalcStatsParams(%struct.TYPE_23__* %13, %struct.TYPE_22__* %14, i32* %16, i32* %18)
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i32, i32* @MAJOR, align 4
  %24 = load i64, i64* %11, align 8
  %25 = call i32 @RETURN_ERROR(i32 %23, i64 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %22, %4
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @ValidateNextEngineParams(i32 %27, %struct.TYPE_26__* %30, i32 %33)
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %11, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %26
  %38 = load i32, i32* @MAJOR, align 4
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @RETURN_ERROR(i32 %38, i64 %39, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %37, %26
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %41
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 2
  %52 = call i64 @FmPcdManipCheckParamsForCcNextEngine(%struct.TYPE_26__* %51, i8** %12)
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %11, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load i32, i32* @MAJOR, align 4
  %57 = load i64, i64* %11, align 8
  %58 = load i8*, i8** @NO_MSG, align 8
  %59 = call i32 @RETURN_ERROR(i32 %56, i64 %57, i8* %58)
  br label %60

60:                                               ; preds = %55, %48
  br label %61

61:                                               ; preds = %60, %41
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %63, align 8
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 2
  %73 = call i32 @memcpy(%struct.TYPE_25__* %69, %struct.TYPE_26__* %72, i32 4)
  %74 = load i8*, i8** %12, align 8
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %76, align 8
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 1
  store i8* %74, i8** %82, align 8
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %84, align 8
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @e_FM_PCD_CC, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %129

95:                                               ; preds = %61
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %97, align 8
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %129

107:                                              ; preds = %95
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %109, align 8
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @AllocAndFillAdForContLookupManip(i32 %119)
  store i64 %120, i64* %11, align 8
  %121 = load i64, i64* %11, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %107
  %124 = load i32, i32* @MAJOR, align 4
  %125 = load i64, i64* %11, align 8
  %126 = load i8*, i8** @NO_MSG, align 8
  %127 = call i32 @RETURN_ERROR(i32 %124, i64 %125, i8* %126)
  br label %128

128:                                              ; preds = %123, %107
  br label %129

129:                                              ; preds = %128, %95, %61
  store i32 0, i32* %9, align 4
  br label %130

130:                                              ; preds = %319, %129
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ult i64 %132, %135
  br i1 %136, label %137, label %322

137:                                              ; preds = %130
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i64 %143
  store %struct.TYPE_24__* %144, %struct.TYPE_24__** %10, align 8
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_26__*, %struct.TYPE_26__** %146, align 8
  %148 = icmp ne %struct.TYPE_26__* %147, null
  br i1 %148, label %153, label %149

149:                                              ; preds = %137
  %150 = load i32, i32* @MAJOR, align 4
  %151 = load i64, i64* @E_INVALID_VALUE, align 8
  %152 = call i32 @RETURN_ERROR(i32 %150, i64 %151, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %153

153:                                              ; preds = %149, %137
  %154 = load i32, i32* %5, align 4
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = call i64 @ValidateNextEngineParams(i32 %154, %struct.TYPE_26__* %156, i32 %159)
  store i64 %160, i64* %11, align 8
  %161 = load i64, i64* %11, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %153
  %164 = load i32, i32* @MAJOR, align 4
  %165 = load i64, i64* %11, align 8
  %166 = load i8*, i8** @NO_MSG, align 8
  %167 = call i32 @RETURN_ERROR(i32 %164, i64 %165, i8* %166)
  br label %168

168:                                              ; preds = %163, %153
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_26__*, %struct.TYPE_26__** %175, align 8
  %177 = call i64 @UpdateGblMask(%struct.TYPE_23__* %169, i32 %173, %struct.TYPE_26__* %176)
  store i64 %177, i64* %11, align 8
  %178 = load i64, i64* %11, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %168
  %181 = load i32, i32* @MAJOR, align 4
  %182 = load i64, i64* %11, align 8
  %183 = load i8*, i8** @NO_MSG, align 8
  %184 = call i32 @RETURN_ERROR(i32 %181, i64 %182, i8* %183)
  br label %185

185:                                              ; preds = %180, %168
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %203

191:                                              ; preds = %185
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 0
  %194 = call i64 @FmPcdManipCheckParamsForCcNextEngine(%struct.TYPE_26__* %193, i8** %12)
  store i64 %194, i64* %11, align 8
  %195 = load i64, i64* %11, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %191
  %198 = load i32, i32* @MAJOR, align 4
  %199 = load i64, i64* %11, align 8
  %200 = load i8*, i8** @NO_MSG, align 8
  %201 = call i32 @RETURN_ERROR(i32 %198, i64 %199, i8* %200)
  br label %202

202:                                              ; preds = %197, %191
  br label %203

203:                                              ; preds = %202, %185
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %204, i32 0, i32 2
  %206 = load %struct.TYPE_21__*, %struct.TYPE_21__** %205, align 8
  %207 = load i32, i32* %9, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %209, i32 0, i32 3
  %211 = load %struct.TYPE_25__*, %struct.TYPE_25__** %210, align 8
  %212 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %212, i32 0, i32 2
  %214 = load %struct.TYPE_26__*, %struct.TYPE_26__** %213, align 8
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @memcpy(%struct.TYPE_25__* %211, %struct.TYPE_26__* %214, i32 %218)
  %220 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %221 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_26__*, %struct.TYPE_26__** %221, align 8
  %223 = icmp ne %struct.TYPE_26__* %222, null
  br i1 %223, label %224, label %241

224:                                              ; preds = %203
  %225 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %225, i32 0, i32 2
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %226, align 8
  %228 = load i32, i32* %9, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %230, i32 0, i32 2
  %232 = load %struct.TYPE_25__*, %struct.TYPE_25__** %231, align 8
  %233 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %234 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %233, i32 0, i32 1
  %235 = load %struct.TYPE_26__*, %struct.TYPE_26__** %234, align 8
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @memcpy(%struct.TYPE_25__* %232, %struct.TYPE_26__* %235, i32 %239)
  br label %256

241:                                              ; preds = %203
  %242 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %242, i32 0, i32 2
  %244 = load %struct.TYPE_21__*, %struct.TYPE_21__** %243, align 8
  %245 = load i32, i32* %9, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %247, i32 0, i32 2
  %249 = load %struct.TYPE_25__*, %struct.TYPE_25__** %248, align 8
  %250 = bitcast %struct.TYPE_25__* %249 to i8*
  %251 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @memset(i8* %250, i32 255, i32 %254)
  br label %256

256:                                              ; preds = %241, %224
  %257 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %257, i32 0, i32 2
  %259 = load %struct.TYPE_21__*, %struct.TYPE_21__** %258, align 8
  %260 = load i32, i32* %9, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %265 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %264, i32 0, i32 0
  %266 = call i32 @memcpy(%struct.TYPE_25__* %263, %struct.TYPE_26__* %265, i32 4)
  %267 = load i8*, i8** %12, align 8
  %268 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %268, i32 0, i32 2
  %270 = load %struct.TYPE_21__*, %struct.TYPE_21__** %269, align 8
  %271 = load i32, i32* %9, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %273, i32 0, i32 1
  store i8* %267, i8** %274, align 8
  %275 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %275, i32 0, i32 2
  %277 = load %struct.TYPE_21__*, %struct.TYPE_21__** %276, align 8
  %278 = load i32, i32* %9, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @e_FM_PCD_CC, align 8
  %285 = icmp eq i64 %283, %284
  br i1 %285, label %286, label %318

286:                                              ; preds = %256
  %287 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %287, i32 0, i32 2
  %289 = load %struct.TYPE_21__*, %struct.TYPE_21__** %288, align 8
  %290 = load i32, i32* %9, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %293, i32 0, i32 2
  %295 = load i64, i64* %294, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %318

297:                                              ; preds = %286
  %298 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %298, i32 0, i32 2
  %300 = load %struct.TYPE_21__*, %struct.TYPE_21__** %299, align 8
  %301 = load i32, i32* %9, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = call i64 @AllocAndFillAdForContLookupManip(i32 %308)
  store i64 %309, i64* %11, align 8
  %310 = load i64, i64* %11, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %317

312:                                              ; preds = %297
  %313 = load i32, i32* @MAJOR, align 4
  %314 = load i64, i64* %11, align 8
  %315 = load i8*, i8** @NO_MSG, align 8
  %316 = call i32 @RETURN_ERROR(i32 %313, i64 %314, i8* %315)
  br label %317

317:                                              ; preds = %312, %297
  br label %318

318:                                              ; preds = %317, %286, %256
  br label %319

319:                                              ; preds = %318
  %320 = load i32, i32* %9, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %9, align 4
  br label %130

322:                                              ; preds = %130
  %323 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %324 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 8
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %341

327:                                              ; preds = %322
  %328 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %329 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 8
  %331 = sext i32 %330 to i64
  %332 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %333 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = icmp ult i64 %331, %334
  br i1 %335, label %336, label %340

336:                                              ; preds = %327
  %337 = load i32, i32* @MAJOR, align 4
  %338 = load i64, i64* @E_INVALID_VALUE, align 8
  %339 = call i32 @RETURN_ERROR(i32 %337, i64 %338, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  br label %340

340:                                              ; preds = %336, %327
  br label %341

341:                                              ; preds = %340, %322
  %342 = load i32, i32* @TRUE, align 4
  %343 = load i32*, i32** %8, align 8
  store i32 %342, i32* %343, align 4
  %344 = load i64, i64* @E_OK, align 8
  ret i64 %344
}

declare dso_local i64 @ValidateAndCalcStatsParams(%struct.TYPE_23__*, %struct.TYPE_22__*, i32*, i32*) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i64 @ValidateNextEngineParams(i32, %struct.TYPE_26__*, i32) #1

declare dso_local i64 @FmPcdManipCheckParamsForCcNextEngine(%struct.TYPE_26__*, i8**) #1

declare dso_local i32 @memcpy(%struct.TYPE_25__*, %struct.TYPE_26__*, i32) #1

declare dso_local i64 @AllocAndFillAdForContLookupManip(i32) #1

declare dso_local i64 @UpdateGblMask(%struct.TYPE_23__*, i32, %struct.TYPE_26__*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
