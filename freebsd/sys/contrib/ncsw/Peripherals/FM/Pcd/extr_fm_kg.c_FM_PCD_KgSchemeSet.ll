; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_kg.c_FM_PCD_KgSchemeSet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_kg.c_FM_PCD_KgSchemeSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, %struct.TYPE_22__, %struct.TYPE_20__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { i64, i32* }
%struct.TYPE_25__ = type { i64, i64*, %struct.TYPE_25__*, %struct.TYPE_21__*, i64, %struct.TYPE_24__* }
%struct.TYPE_21__ = type { %struct.fman_kg_scheme_regs }
%struct.fman_kg_scheme_regs = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i64, i64, %struct.TYPE_25__* }

@E_OK = common dso_local global i64 0, align 8
@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@E_ALREADY_EXISTS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Scheme is invalid\00", align 1
@TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Scheme Try Lock - BUSY\00", align 1
@E_NOT_IN_RANGE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"relative-scheme-id %d!\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Scheme id (%d)!\00", align 1
@E_NOT_AVAILABLE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"FM KG Scheme lock obj!\00", align 1
@NO_MSG = common dso_local global i8* null, align 8
@FM_KG_NUM_OF_GENERIC_REGS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @FM_PCD_KgSchemeSet(i32* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.fman_kg_scheme_regs, align 8
  %8 = alloca %struct.fman_kg_scheme_regs*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_24__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %16 = load i64, i64* @E_OK, align 8
  store i64 %16, i64* %10, align 8
  store i64 0, i64* %14, align 8
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %56

21:                                               ; preds = %2
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = bitcast i32* %25 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %26, %struct.TYPE_24__** %15, align 8
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  store %struct.TYPE_25__* %29, %struct.TYPE_25__** %6, align 8
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %31 = load i32, i32* @E_INVALID_HANDLE, align 4
  %32 = call i32 @SANITY_CHECK_RETURN_VALUE(%struct.TYPE_25__* %30, i32 %31, i32* null)
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %34, align 8
  %36 = load i32, i32* @E_INVALID_HANDLE, align 4
  %37 = call i32 @SANITY_CHECK_RETURN_VALUE(%struct.TYPE_25__* %35, i32 %36, i32* null)
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %39 = call i64 @FmPcdKgIsSchemeValidSw(%struct.TYPE_24__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %21
  %42 = load i32, i32* @MAJOR, align 4
  %43 = load i64, i64* @E_ALREADY_EXISTS, align 8
  %44 = call i32 @REPORT_ERROR(i32 %42, i64 %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %372

45:                                               ; preds = %21
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %47 = call i32 @KgSchemeFlagTryLock(%struct.TYPE_24__* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* @TRACE, align 4
  %51 = call i32 @DBG(i32 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 1
  store i32* null, i32** %54, align 8
  store i32* null, i32** %3, align 8
  br label %372

55:                                               ; preds = %45
  br label %130

56:                                               ; preds = %2
  %57 = load i32*, i32** %4, align 8
  %58 = bitcast i32* %57 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %58, %struct.TYPE_25__** %6, align 8
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %60 = load i32, i32* @E_INVALID_HANDLE, align 4
  %61 = call i32 @SANITY_CHECK_RETURN_VALUE(%struct.TYPE_25__* %59, i32 %60, i32* null)
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %63, align 8
  %65 = load i32, i32* @E_INVALID_HANDLE, align 4
  %66 = call i32 @SANITY_CHECK_RETURN_VALUE(%struct.TYPE_25__* %64, i32 %65, i32* null)
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %14, align 8
  %71 = load i64, i64* %14, align 8
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp uge i64 %71, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %56
  %79 = load i32, i32* @MAJOR, align 4
  %80 = load i64, i64* @E_NOT_IN_RANGE, align 8
  %81 = load i64, i64* %14, align 8
  %82 = inttoptr i64 %81 to i8*
  %83 = call i32 @REPORT_ERROR(i32 %79, i64 %80, i8* %82)
  store i32* null, i32** %3, align 8
  br label %372

84:                                               ; preds = %56
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 5
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %88, align 8
  %90 = load i64, i64* %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i64 %90
  store %struct.TYPE_24__* %91, %struct.TYPE_24__** %15, align 8
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %93 = call i64 @FmPcdKgIsSchemeValidSw(%struct.TYPE_24__* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %84
  %96 = load i32, i32* @MAJOR, align 4
  %97 = load i64, i64* @E_ALREADY_EXISTS, align 8
  %98 = load i64, i64* %14, align 8
  %99 = inttoptr i64 %98 to i8*
  %100 = call i32 @REPORT_ERROR(i32 %96, i64 %97, i8* %99)
  store i32* null, i32** %3, align 8
  br label %372

101:                                              ; preds = %84
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %103 = call i32 @memset(%struct.TYPE_24__* %102, i32 0, i32 24)
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 1
  %108 = load i64*, i64** %107, align 8
  %109 = load i64, i64* %14, align 8
  %110 = getelementptr inbounds i64, i64* %108, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 2
  store %struct.TYPE_25__* %114, %struct.TYPE_25__** %116, align 8
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %118 = call i64 @FmPcdAcquireLock(%struct.TYPE_25__* %117)
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 1
  store i64 %118, i64* %120, align 8
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %101
  %126 = load i32, i32* @MAJOR, align 4
  %127 = load i64, i64* @E_NOT_AVAILABLE, align 8
  %128 = call i32 @REPORT_ERROR(i32 %126, i64 %127, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %129

129:                                              ; preds = %125, %101
  br label %130

130:                                              ; preds = %129, %55
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %132 = bitcast %struct.TYPE_24__* %131 to i32*
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %134 = call i64 @BuildSchemeRegs(i32* %132, %struct.TYPE_23__* %133, %struct.fman_kg_scheme_regs* %7)
  store i64 %134, i64* %10, align 8
  %135 = load i64, i64* %10, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %166

137:                                              ; preds = %130
  %138 = load i32, i32* @MAJOR, align 4
  %139 = load i64, i64* %10, align 8
  %140 = load i8*, i8** @NO_MSG, align 8
  %141 = call i32 @REPORT_ERROR(i32 %138, i64 %139, i8* %140)
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %137
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %148 = call i32 @KgSchemeFlagUnlock(%struct.TYPE_24__* %147)
  br label %149

149:                                              ; preds = %146, %137
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %165, label %154

154:                                              ; preds = %149
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %154
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %161 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %162 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @FmPcdReleaseLock(%struct.TYPE_25__* %160, i64 %163)
  br label %165

165:                                              ; preds = %159, %154, %149
  store i32* null, i32** %3, align 8
  br label %372

166:                                              ; preds = %130
  %167 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %220

171:                                              ; preds = %166
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %172, i32 0, i32 4
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %176 = bitcast %struct.TYPE_24__* %175 to i32*
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i64 @FmHcPcdKgSetScheme(i64 %174, i32* %176, %struct.fman_kg_scheme_regs* %7, i32 %180)
  store i64 %181, i64* %10, align 8
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %171
  %187 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %188 = call i32 @KgSchemeFlagUnlock(%struct.TYPE_24__* %187)
  br label %189

189:                                              ; preds = %186, %171
  %190 = load i64, i64* %10, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %209

192:                                              ; preds = %189
  %193 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %208, label %197

197:                                              ; preds = %192
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %199 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %197
  %203 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %204 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @FmPcdReleaseLock(%struct.TYPE_25__* %203, i64 %206)
  br label %208

208:                                              ; preds = %202, %197, %192
  store i32* null, i32** %3, align 8
  br label %372

209:                                              ; preds = %189
  %210 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %209
  %215 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %216 = call i32 @ValidateSchemeSw(%struct.TYPE_24__* %215)
  br label %217

217:                                              ; preds = %214, %209
  %218 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %219 = bitcast %struct.TYPE_24__* %218 to i32*
  store i32* %219, i32** %3, align 8
  br label %372

220:                                              ; preds = %166
  %221 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %222 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  store i64 %223, i64* %13, align 8
  %224 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %224, i32 0, i32 2
  %226 = load %struct.TYPE_25__*, %struct.TYPE_25__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %226, i32 0, i32 3
  %228 = load %struct.TYPE_21__*, %struct.TYPE_21__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %228, i32 0, i32 0
  store %struct.fman_kg_scheme_regs* %229, %struct.fman_kg_scheme_regs** %8, align 8
  %230 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %230, i32 0, i32 2
  %232 = load %struct.TYPE_25__*, %struct.TYPE_25__** %231, align 8
  %233 = call i32 @KgHwLock(%struct.TYPE_25__* %232)
  store i32 %233, i32* %12, align 4
  %234 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %8, align 8
  %235 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %234, i32 0, i32 15
  %236 = load i32, i32* %235, align 8
  %237 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %7, i32 0, i32 15
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @WRITE_UINT32(i32 %236, i32 %238)
  %240 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %8, align 8
  %241 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %240, i32 0, i32 14
  %242 = load i32, i32* %241, align 4
  %243 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %7, i32 0, i32 14
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @WRITE_UINT32(i32 %242, i32 %244)
  %246 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %8, align 8
  %247 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %246, i32 0, i32 13
  %248 = load i32, i32* %247, align 8
  %249 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %7, i32 0, i32 13
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @WRITE_UINT32(i32 %248, i32 %250)
  %252 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %8, align 8
  %253 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %252, i32 0, i32 12
  %254 = load i32, i32* %253, align 4
  %255 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %7, i32 0, i32 12
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @WRITE_UINT32(i32 %254, i32 %256)
  %258 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %8, align 8
  %259 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %258, i32 0, i32 11
  %260 = load i32, i32* %259, align 8
  %261 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %7, i32 0, i32 11
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @WRITE_UINT32(i32 %260, i32 %262)
  %264 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %8, align 8
  %265 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %264, i32 0, i32 10
  %266 = load i32, i32* %265, align 4
  %267 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %7, i32 0, i32 10
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @WRITE_UINT32(i32 %266, i32 %268)
  %270 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %8, align 8
  %271 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %270, i32 0, i32 9
  %272 = load i32, i32* %271, align 8
  %273 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %7, i32 0, i32 9
  %274 = load i32, i32* %273, align 8
  %275 = call i32 @WRITE_UINT32(i32 %272, i32 %274)
  %276 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %8, align 8
  %277 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %276, i32 0, i32 8
  %278 = load i32, i32* %277, align 4
  %279 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %7, i32 0, i32 8
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @WRITE_UINT32(i32 %278, i32 %280)
  %282 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %8, align 8
  %283 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %282, i32 0, i32 7
  %284 = load i32, i32* %283, align 8
  %285 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %7, i32 0, i32 7
  %286 = load i32, i32* %285, align 8
  %287 = call i32 @WRITE_UINT32(i32 %284, i32 %286)
  %288 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %8, align 8
  %289 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %288, i32 0, i32 6
  %290 = load i32, i32* %289, align 4
  %291 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %7, i32 0, i32 6
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @WRITE_UINT32(i32 %290, i32 %292)
  %294 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %8, align 8
  %295 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %294, i32 0, i32 5
  %296 = load i32, i32* %295, align 8
  %297 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %7, i32 0, i32 5
  %298 = load i32, i32* %297, align 8
  %299 = call i32 @WRITE_UINT32(i32 %296, i32 %298)
  %300 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %8, align 8
  %301 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %300, i32 0, i32 4
  %302 = load i32, i32* %301, align 4
  %303 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %7, i32 0, i32 4
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @WRITE_UINT32(i32 %302, i32 %304)
  %306 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %8, align 8
  %307 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 8
  %309 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %7, i32 0, i32 3
  %310 = load i32, i32* %309, align 8
  %311 = call i32 @WRITE_UINT32(i32 %308, i32 %310)
  %312 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %8, align 8
  %313 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 4
  %315 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %7, i32 0, i32 2
  %316 = load i32, i32* %315, align 4
  %317 = call i32 @WRITE_UINT32(i32 %314, i32 %316)
  %318 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %8, align 8
  %319 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 8
  %321 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %7, i32 0, i32 1
  %322 = load i32, i32* %321, align 8
  %323 = call i32 @WRITE_UINT32(i32 %320, i32 %322)
  store i64 0, i64* %9, align 8
  br label %324

324:                                              ; preds = %341, %220
  %325 = load i64, i64* %9, align 8
  %326 = load i64, i64* @FM_KG_NUM_OF_GENERIC_REGS, align 8
  %327 = icmp ult i64 %325, %326
  br i1 %327, label %328, label %344

328:                                              ; preds = %324
  %329 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %8, align 8
  %330 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %329, i32 0, i32 0
  %331 = load i32*, i32** %330, align 8
  %332 = load i64, i64* %9, align 8
  %333 = getelementptr inbounds i32, i32* %331, i64 %332
  %334 = load i32, i32* %333, align 4
  %335 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %7, i32 0, i32 0
  %336 = load i32*, i32** %335, align 8
  %337 = load i64, i64* %9, align 8
  %338 = getelementptr inbounds i32, i32* %336, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = call i32 @WRITE_UINT32(i32 %334, i32 %339)
  br label %341

341:                                              ; preds = %328
  %342 = load i64, i64* %9, align 8
  %343 = add i64 %342, 1
  store i64 %343, i64* %9, align 8
  br label %324

344:                                              ; preds = %324
  %345 = load i64, i64* %13, align 8
  %346 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %346, i32 0, i32 1
  %348 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = call i32 @FmPcdKgBuildWriteSchemeActionReg(i64 %345, i32 %349)
  store i32 %350, i32* %11, align 4
  %351 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %352 = load i32, i32* %11, align 4
  %353 = call i32 @WriteKgarWait(%struct.TYPE_25__* %351, i32 %352)
  %354 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %355 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %354, i32 0, i32 2
  %356 = load %struct.TYPE_25__*, %struct.TYPE_25__** %355, align 8
  %357 = load i32, i32* %12, align 4
  %358 = call i32 @KgHwUnlock(%struct.TYPE_25__* %356, i32 %357)
  %359 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %360 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %359, i32 0, i32 0
  %361 = load i64, i64* %360, align 8
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %366, label %363

363:                                              ; preds = %344
  %364 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %365 = call i32 @ValidateSchemeSw(%struct.TYPE_24__* %364)
  br label %369

366:                                              ; preds = %344
  %367 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %368 = call i32 @KgSchemeFlagUnlock(%struct.TYPE_24__* %367)
  br label %369

369:                                              ; preds = %366, %363
  %370 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %371 = bitcast %struct.TYPE_24__* %370 to i32*
  store i32* %371, i32** %3, align 8
  br label %372

372:                                              ; preds = %369, %217, %208, %165, %95, %78, %49, %41
  %373 = load i32*, i32** %3, align 8
  ret i32* %373
}

declare dso_local i32 @SANITY_CHECK_RETURN_VALUE(%struct.TYPE_25__*, i32, i32*) #1

declare dso_local i64 @FmPcdKgIsSchemeValidSw(%struct.TYPE_24__*) #1

declare dso_local i32 @REPORT_ERROR(i32, i64, i8*) #1

declare dso_local i32 @KgSchemeFlagTryLock(%struct.TYPE_24__*) #1

declare dso_local i32 @DBG(i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i64 @FmPcdAcquireLock(%struct.TYPE_25__*) #1

declare dso_local i64 @BuildSchemeRegs(i32*, %struct.TYPE_23__*, %struct.fman_kg_scheme_regs*) #1

declare dso_local i32 @KgSchemeFlagUnlock(%struct.TYPE_24__*) #1

declare dso_local i32 @FmPcdReleaseLock(%struct.TYPE_25__*, i64) #1

declare dso_local i64 @FmHcPcdKgSetScheme(i64, i32*, %struct.fman_kg_scheme_regs*, i32) #1

declare dso_local i32 @ValidateSchemeSw(%struct.TYPE_24__*) #1

declare dso_local i32 @KgHwLock(%struct.TYPE_25__*) #1

declare dso_local i32 @WRITE_UINT32(i32, i32) #1

declare dso_local i32 @FmPcdKgBuildWriteSchemeActionReg(i64, i32) #1

declare dso_local i32 @WriteKgarWait(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @KgHwUnlock(%struct.TYPE_25__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
