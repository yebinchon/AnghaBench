; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rand/extr_drbg_lib.c_RAND_DRBG_instantiate.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rand/extr_drbg_lib.c_RAND_DRBG_instantiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i64, i64, i64, i64, i64 (%struct.TYPE_10__*, i8**, i32, i64, i64)*, i64, i32, i64 (%struct.TYPE_10__*, i8**, i64, i64, i64, i32)*, i32, i32 (%struct.TYPE_10__*, i8*, i64)*, i32 (%struct.TYPE_10__*, i8*, i64)*, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_10__*, i8*, i64, i8*, i64, i8*, i64)* }

@RAND_F_RAND_DRBG_INSTANTIATE = common dso_local global i32 0, align 4
@RAND_R_PERSONALISATION_STRING_TOO_LONG = common dso_local global i32 0, align 4
@RAND_R_NO_DRBG_IMPLEMENTATION_SELECTED = common dso_local global i32 0, align 4
@DRBG_UNINITIALISED = common dso_local global i64 0, align 8
@DRBG_ERROR = common dso_local global i64 0, align 8
@RAND_R_IN_ERROR_STATE = common dso_local global i32 0, align 4
@RAND_R_ALREADY_INSTANTIATED = common dso_local global i32 0, align 4
@RAND_R_ERROR_RETRIEVING_ENTROPY = common dso_local global i32 0, align 4
@RAND_R_ERROR_RETRIEVING_NONCE = common dso_local global i32 0, align 4
@RAND_R_ERROR_INSTANTIATING_DRBG = common dso_local global i32 0, align 4
@DRBG_READY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RAND_DRBG_instantiate(%struct.TYPE_10__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %12, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %13, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %14, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ugt i64 %24, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = load i32, i32* @RAND_F_RAND_DRBG_INSTANTIATE, align 4
  %31 = load i32, i32* @RAND_R_PERSONALISATION_STRING_TOO_LONG, align 4
  %32 = call i32 @RANDerr(i32 %30, i32 %31)
  br label %218

33:                                               ; preds = %3
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 15
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = icmp eq %struct.TYPE_9__* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* @RAND_F_RAND_DRBG_INSTANTIATE, align 4
  %40 = load i32, i32* @RAND_R_NO_DRBG_IMPLEMENTATION_SELECTED, align 4
  %41 = call i32 @RANDerr(i32 %39, i32 %40)
  br label %218

42:                                               ; preds = %33
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DRBG_UNINITIALISED, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %42
  %49 = load i32, i32* @RAND_F_RAND_DRBG_INSTANTIATE, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @DRBG_ERROR, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* @RAND_R_IN_ERROR_STATE, align 4
  br label %59

57:                                               ; preds = %48
  %58 = load i32, i32* @RAND_R_ALREADY_INSTANTIATED, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  %61 = call i32 @RANDerr(i32 %49, i32 %60)
  br label %218

62:                                               ; preds = %42
  %63 = load i64, i64* @DRBG_ERROR, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 4
  store i64 %63, i64* %65, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = icmp ugt i64 %68, 0
  br i1 %69, label %70, label %92

70:                                               ; preds = %62
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 6
  %73 = load i64 (%struct.TYPE_10__*, i8**, i32, i64, i64)*, i64 (%struct.TYPE_10__*, i8**, i32, i64, i64)** %72, align 8
  %74 = icmp eq i64 (%struct.TYPE_10__*, i8**, i32, i64, i64)* %73, null
  br i1 %74, label %75, label %92

75:                                               ; preds = %70
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = udiv i64 %78, 2
  %80 = load i64, i64* %12, align 8
  %81 = add i64 %80, %79
  store i64 %81, i64* %12, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %13, align 8
  %86 = add i64 %85, %84
  store i64 %86, i64* %13, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 7
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %14, align 8
  %91 = add i64 %90, %89
  store i64 %91, i64* %14, align 8
  br label %92

92:                                               ; preds = %75, %70, %62
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 13
  %95 = call i32 @tsan_load(i32* %94)
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 8
  store i32 %95, i32* %97, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 8
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %92
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 8
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 8
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %102
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 8
  store i32 1, i32* %113, align 8
  br label %114

114:                                              ; preds = %111, %102
  br label %115

115:                                              ; preds = %114, %92
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 9
  %118 = load i64 (%struct.TYPE_10__*, i8**, i64, i64, i64, i32)*, i64 (%struct.TYPE_10__*, i8**, i64, i64, i64, i32)** %117, align 8
  %119 = icmp ne i64 (%struct.TYPE_10__*, i8**, i64, i64, i64, i32)* %118, null
  br i1 %119, label %120, label %129

120:                                              ; preds = %115
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 9
  %123 = load i64 (%struct.TYPE_10__*, i8**, i64, i64, i64, i32)*, i64 (%struct.TYPE_10__*, i8**, i64, i64, i64, i32)** %122, align 8
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %125 = load i64, i64* %12, align 8
  %126 = load i64, i64* %13, align 8
  %127 = load i64, i64* %14, align 8
  %128 = call i64 %123(%struct.TYPE_10__* %124, i8** %9, i64 %125, i64 %126, i64 %127, i32 0)
  store i64 %128, i64* %11, align 8
  br label %129

129:                                              ; preds = %120, %115
  %130 = load i64, i64* %11, align 8
  %131 = load i64, i64* %13, align 8
  %132 = icmp ult i64 %130, %131
  br i1 %132, label %137, label %133

133:                                              ; preds = %129
  %134 = load i64, i64* %11, align 8
  %135 = load i64, i64* %14, align 8
  %136 = icmp ugt i64 %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %133, %129
  %138 = load i32, i32* @RAND_F_RAND_DRBG_INSTANTIATE, align 4
  %139 = load i32, i32* @RAND_R_ERROR_RETRIEVING_ENTROPY, align 4
  %140 = call i32 @RANDerr(i32 %138, i32 %139)
  br label %218

141:                                              ; preds = %133
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 5
  %144 = load i64, i64* %143, align 8
  %145 = icmp ugt i64 %144, 0
  br i1 %145, label %146, label %184

146:                                              ; preds = %141
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 6
  %149 = load i64 (%struct.TYPE_10__*, i8**, i32, i64, i64)*, i64 (%struct.TYPE_10__*, i8**, i32, i64, i64)** %148, align 8
  %150 = icmp ne i64 (%struct.TYPE_10__*, i8**, i32, i64, i64)* %149, null
  br i1 %150, label %151, label %184

151:                                              ; preds = %146
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 6
  %154 = load i64 (%struct.TYPE_10__*, i8**, i32, i64, i64)*, i64 (%struct.TYPE_10__*, i8**, i32, i64, i64)** %153, align 8
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = udiv i64 %158, 2
  %160 = trunc i64 %159 to i32
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 5
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 7
  %166 = load i64, i64* %165, align 8
  %167 = call i64 %154(%struct.TYPE_10__* %155, i8** %8, i32 %160, i64 %163, i64 %166)
  store i64 %167, i64* %10, align 8
  %168 = load i64, i64* %10, align 8
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 5
  %171 = load i64, i64* %170, align 8
  %172 = icmp ult i64 %168, %171
  br i1 %172, label %179, label %173

173:                                              ; preds = %151
  %174 = load i64, i64* %10, align 8
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 7
  %177 = load i64, i64* %176, align 8
  %178 = icmp ugt i64 %174, %177
  br i1 %178, label %179, label %183

179:                                              ; preds = %173, %151
  %180 = load i32, i32* @RAND_F_RAND_DRBG_INSTANTIATE, align 4
  %181 = load i32, i32* @RAND_R_ERROR_RETRIEVING_NONCE, align 4
  %182 = call i32 @RANDerr(i32 %180, i32 %181)
  br label %218

183:                                              ; preds = %173
  br label %184

184:                                              ; preds = %183, %146, %141
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 15
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  %189 = load i32 (%struct.TYPE_10__*, i8*, i64, i8*, i64, i8*, i64)*, i32 (%struct.TYPE_10__*, i8*, i64, i8*, i64, i8*, i64)** %188, align 8
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %191 = load i8*, i8** %9, align 8
  %192 = load i64, i64* %11, align 8
  %193 = load i8*, i8** %8, align 8
  %194 = load i64, i64* %10, align 8
  %195 = load i8*, i8** %6, align 8
  %196 = load i64, i64* %7, align 8
  %197 = call i32 %189(%struct.TYPE_10__* %190, i8* %191, i64 %192, i8* %193, i64 %194, i8* %195, i64 %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %203, label %199

199:                                              ; preds = %184
  %200 = load i32, i32* @RAND_F_RAND_DRBG_INSTANTIATE, align 4
  %201 = load i32, i32* @RAND_R_ERROR_INSTANTIATING_DRBG, align 4
  %202 = call i32 @RANDerr(i32 %200, i32 %201)
  br label %218

203:                                              ; preds = %184
  %204 = load i64, i64* @DRBG_READY, align 8
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 4
  store i64 %204, i64* %206, align 8
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 10
  store i32 1, i32* %208, align 8
  %209 = call i32 @time(i32* null)
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 14
  store i32 %209, i32* %211, align 4
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 13
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 8
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @tsan_store(i32* %213, i32 %216)
  br label %218

218:                                              ; preds = %203, %199, %179, %137, %59, %38, %29
  %219 = load i8*, i8** %9, align 8
  %220 = icmp ne i8* %219, null
  br i1 %220, label %221, label %234

221:                                              ; preds = %218
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 12
  %224 = load i32 (%struct.TYPE_10__*, i8*, i64)*, i32 (%struct.TYPE_10__*, i8*, i64)** %223, align 8
  %225 = icmp ne i32 (%struct.TYPE_10__*, i8*, i64)* %224, null
  br i1 %225, label %226, label %234

226:                                              ; preds = %221
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 12
  %229 = load i32 (%struct.TYPE_10__*, i8*, i64)*, i32 (%struct.TYPE_10__*, i8*, i64)** %228, align 8
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %231 = load i8*, i8** %9, align 8
  %232 = load i64, i64* %11, align 8
  %233 = call i32 %229(%struct.TYPE_10__* %230, i8* %231, i64 %232)
  br label %234

234:                                              ; preds = %226, %221, %218
  %235 = load i8*, i8** %8, align 8
  %236 = icmp ne i8* %235, null
  br i1 %236, label %237, label %250

237:                                              ; preds = %234
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 11
  %240 = load i32 (%struct.TYPE_10__*, i8*, i64)*, i32 (%struct.TYPE_10__*, i8*, i64)** %239, align 8
  %241 = icmp ne i32 (%struct.TYPE_10__*, i8*, i64)* %240, null
  br i1 %241, label %242, label %250

242:                                              ; preds = %237
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 11
  %245 = load i32 (%struct.TYPE_10__*, i8*, i64)*, i32 (%struct.TYPE_10__*, i8*, i64)** %244, align 8
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %247 = load i8*, i8** %8, align 8
  %248 = load i64, i64* %10, align 8
  %249 = call i32 %245(%struct.TYPE_10__* %246, i8* %247, i64 %248)
  br label %250

250:                                              ; preds = %242, %237, %234
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 4
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @DRBG_READY, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %257

256:                                              ; preds = %250
  store i32 1, i32* %4, align 4
  br label %258

257:                                              ; preds = %250
  store i32 0, i32* %4, align 4
  br label %258

258:                                              ; preds = %257, %256
  %259 = load i32, i32* %4, align 4
  ret i32 %259
}

declare dso_local i32 @RANDerr(i32, i32) #1

declare dso_local i32 @tsan_load(i32*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @tsan_store(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
