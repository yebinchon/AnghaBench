; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_set_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_xfer = type { i64, i64, i64, i64, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i64, i32, i64, %struct.module_env*, i32* }
%struct.TYPE_3__ = type { i32, i32*, i64 }
%struct.module_env = type { i64*, i32*, i32 }
%struct.timeval = type { i64, i64 }

@AUTH_TRANSFER_MAX_BACKOFF = common dso_local global i32 0, align 4
@auth_xfer_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"cannot allocate timer, no refresh for %s\00", align 1
@verbosity = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"auth zone %s timeout in %d seconds\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.auth_xfer*, %struct.module_env*, i32, i32)* @xfr_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfr_set_timeout(%struct.auth_xfer* %0, %struct.module_env* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.auth_xfer*, align 8
  %6 = alloca %struct.module_env*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.timeval, align 8
  %10 = alloca i64, align 8
  %11 = alloca [256 x i8], align 16
  %12 = alloca [256 x i8], align 16
  store %struct.auth_xfer* %0, %struct.auth_xfer** %5, align 8
  store %struct.module_env* %1, %struct.module_env** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %14 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %13, i32 0, i32 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @log_assert(i32 %17)
  %19 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %20 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %19, i32 0, i32 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %35, label %25

25:                                               ; preds = %4
  %26 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %27 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %26, i32 0, i32 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.module_env*, %struct.module_env** %6, align 8
  %32 = getelementptr inbounds %struct.module_env, %struct.module_env* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %30, %33
  br label %35

35:                                               ; preds = %25, %4
  %36 = phi i1 [ true, %4 ], [ %34, %25 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @log_assert(i32 %37)
  %39 = load %struct.module_env*, %struct.module_env** %6, align 8
  %40 = getelementptr inbounds %struct.module_env, %struct.module_env* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %44 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %43, i32 0, i32 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i64 %42, i64* %46, align 8
  %47 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %48 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %35
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %51
  %55 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %56 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %59 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %58, i32 0, i32 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i64 %57, i64* %61, align 8
  br label %62

62:                                               ; preds = %54, %51, %35
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %67 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %66, i32 0, i32 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i32 0, i32* %69, align 8
  br label %104

70:                                               ; preds = %62
  %71 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %72 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %71, i32 0, i32 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %79 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %78, i32 0, i32 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store i32 3, i32* %81, align 8
  br label %89

82:                                               ; preds = %70
  %83 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %84 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %83, i32 0, i32 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = mul nsw i32 %87, 2
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %82, %77
  %90 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %91 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %90, i32 0, i32 4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @AUTH_TRANSFER_MAX_BACKOFF, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %89
  %98 = load i32, i32* @AUTH_TRANSFER_MAX_BACKOFF, align 4
  %99 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %100 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %99, i32 0, i32 4
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  store i32 %98, i32* %102, align 8
  br label %103

103:                                              ; preds = %97, %89
  br label %104

104:                                              ; preds = %103, %65
  %105 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %106 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %105, i32 0, i32 7
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %204

109:                                              ; preds = %104
  %110 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %111 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %10, align 8
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %117 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %10, align 8
  br label %119

119:                                              ; preds = %115, %109
  %120 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %121 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %10, align 8
  %124 = icmp slt i64 %122, %123
  br i1 %124, label %125, label %135

125:                                              ; preds = %119
  %126 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %127 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %130 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %129, i32 0, i32 4
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %133, %128
  store i64 %134, i64* %132, align 8
  br label %143

135:                                              ; preds = %119
  %136 = load i64, i64* %10, align 8
  %137 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %138 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %137, i32 0, i32 4
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %141, %136
  store i64 %142, i64* %140, align 8
  br label %143

143:                                              ; preds = %135, %125
  %144 = load i32, i32* %7, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %159

146:                                              ; preds = %143
  %147 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %148 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %147, i32 0, i32 4
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = sext i32 %151 to i64
  %153 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %154 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %153, i32 0, i32 4
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = add nsw i64 %157, %152
  store i64 %158, i64* %156, align 8
  br label %159

159:                                              ; preds = %146, %143
  %160 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %161 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %203

164:                                              ; preds = %159
  %165 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %166 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %169 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %167, %170
  %172 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %173 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %172, i32 0, i32 4
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp slt i64 %171, %176
  br i1 %177, label %178, label %203

178:                                              ; preds = %164
  %179 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %180 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %183 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = add nsw i64 %181, %184
  %186 = load %struct.module_env*, %struct.module_env** %6, align 8
  %187 = getelementptr inbounds %struct.module_env, %struct.module_env* %186, i32 0, i32 0
  %188 = load i64*, i64** %187, align 8
  %189 = load i64, i64* %188, align 8
  %190 = icmp sgt i64 %185, %189
  br i1 %190, label %191, label %203

191:                                              ; preds = %178
  %192 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %193 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %196 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %195, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = add nsw i64 %194, %197
  %199 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %200 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %199, i32 0, i32 4
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  store i64 %198, i64* %202, align 8
  br label %203

203:                                              ; preds = %191, %178, %164, %159
  br label %217

204:                                              ; preds = %104
  %205 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %206 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %205, i32 0, i32 4
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = sext i32 %209 to i64
  %211 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %212 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %211, i32 0, i32 4
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = add nsw i64 %215, %210
  store i64 %216, i64* %214, align 8
  br label %217

217:                                              ; preds = %204, %203
  %218 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %219 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %218, i32 0, i32 4
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %250, label %224

224:                                              ; preds = %217
  %225 = load %struct.module_env*, %struct.module_env** %6, align 8
  %226 = getelementptr inbounds %struct.module_env, %struct.module_env* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @auth_xfer_timer, align 4
  %229 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %230 = call i64 @comm_timer_create(i32 %227, i32 %228, %struct.auth_xfer* %229)
  %231 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %232 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %231, i32 0, i32 4
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 2
  store i64 %230, i64* %234, align 8
  %235 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %236 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %235, i32 0, i32 4
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 2
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %249, label %241

241:                                              ; preds = %224
  %242 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %243 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %242, i32 0, i32 5
  %244 = load i32, i32* %243, align 8
  %245 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %246 = call i32 @dname_str(i32 %244, i8* %245)
  %247 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %248 = call i32 @log_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %247)
  br label %352

249:                                              ; preds = %224
  br label %250

250:                                              ; preds = %249, %217
  %251 = load %struct.module_env*, %struct.module_env** %6, align 8
  %252 = getelementptr inbounds %struct.module_env, %struct.module_env* %251, i32 0, i32 1
  %253 = load i32*, i32** %252, align 8
  %254 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %255 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %254, i32 0, i32 4
  %256 = load %struct.TYPE_4__*, %struct.TYPE_4__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 4
  store i32* %253, i32** %257, align 8
  %258 = load %struct.module_env*, %struct.module_env** %6, align 8
  %259 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %260 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %259, i32 0, i32 4
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 3
  store %struct.module_env* %258, %struct.module_env** %262, align 8
  %263 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %264 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %263, i32 0, i32 4
  %265 = load %struct.TYPE_4__*, %struct.TYPE_4__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 3
  %267 = load %struct.module_env*, %struct.module_env** %266, align 8
  %268 = getelementptr inbounds %struct.module_env, %struct.module_env* %267, i32 0, i32 0
  %269 = load i64*, i64** %268, align 8
  %270 = load i64, i64* %269, align 8
  %271 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %272 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %271, i32 0, i32 4
  %273 = load %struct.TYPE_4__*, %struct.TYPE_4__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = icmp sle i64 %270, %275
  br i1 %276, label %277, label %293

277:                                              ; preds = %250
  %278 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %279 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %278, i32 0, i32 4
  %280 = load %struct.TYPE_4__*, %struct.TYPE_4__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %284 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %283, i32 0, i32 4
  %285 = load %struct.TYPE_4__*, %struct.TYPE_4__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 3
  %287 = load %struct.module_env*, %struct.module_env** %286, align 8
  %288 = getelementptr inbounds %struct.module_env, %struct.module_env* %287, i32 0, i32 0
  %289 = load i64*, i64** %288, align 8
  %290 = load i64, i64* %289, align 8
  %291 = sub nsw i64 %282, %290
  %292 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i64 %291, i64* %292, align 8
  br label %295

293:                                              ; preds = %250
  %294 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i64 0, i64* %294, align 8
  br label %295

295:                                              ; preds = %293, %277
  %296 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %328

299:                                              ; preds = %295
  %300 = load i32, i32* %8, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %328

302:                                              ; preds = %299
  %303 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %304 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %303, i32 0, i32 6
  %305 = load %struct.TYPE_3__*, %struct.TYPE_3__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %305, i32 0, i32 2
  %307 = load i64, i64* %306, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %328

309:                                              ; preds = %302
  %310 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i64 0, i64* %310, align 8
  %311 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %312 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %311, i32 0, i32 6
  %313 = load %struct.TYPE_3__*, %struct.TYPE_3__** %312, align 8
  %314 = icmp ne %struct.TYPE_3__* %313, null
  br i1 %314, label %315, label %327

315:                                              ; preds = %309
  %316 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %317 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %316, i32 0, i32 6
  %318 = load %struct.TYPE_3__*, %struct.TYPE_3__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %318, i32 0, i32 1
  %320 = load i32*, i32** %319, align 8
  %321 = icmp eq i32* %320, null
  br i1 %321, label %322, label %327

322:                                              ; preds = %315
  %323 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %324 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %323, i32 0, i32 6
  %325 = load %struct.TYPE_3__*, %struct.TYPE_3__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %325, i32 0, i32 0
  store i32 1, i32* %326, align 8
  br label %327

327:                                              ; preds = %322, %315, %309
  br label %328

328:                                              ; preds = %327, %302, %299, %295
  %329 = load i64, i64* @verbosity, align 8
  %330 = load i64, i64* @VERB_ALGO, align 8
  %331 = icmp sge i64 %329, %330
  br i1 %331, label %332, label %344

332:                                              ; preds = %328
  %333 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %334 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %333, i32 0, i32 5
  %335 = load i32, i32* %334, align 8
  %336 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %337 = call i32 @dname_str(i32 %335, i8* %336)
  %338 = load i64, i64* @VERB_ALGO, align 8
  %339 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %340 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = trunc i64 %341 to i32
  %343 = call i32 @verbose(i64 %338, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %339, i32 %342)
  br label %344

344:                                              ; preds = %332, %328
  %345 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i64 0, i64* %345, align 8
  %346 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %347 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %346, i32 0, i32 4
  %348 = load %struct.TYPE_4__*, %struct.TYPE_4__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %348, i32 0, i32 2
  %350 = load i64, i64* %349, align 8
  %351 = call i32 @comm_timer_set(i64 %350, %struct.timeval* %9)
  br label %352

352:                                              ; preds = %344, %241
  ret void
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i64 @comm_timer_create(i32, i32, %struct.auth_xfer*) #1

declare dso_local i32 @dname_str(i32, i8*) #1

declare dso_local i32 @log_err(i8*, i8*) #1

declare dso_local i32 @verbose(i64, i8*, i8*, i32) #1

declare dso_local i32 @comm_timer_set(i64, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
