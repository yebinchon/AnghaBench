; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_ikev2_common.c_ikev2_derive_sk_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_ikev2_common.c_ikev2_derive_sk_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ikev2_prf_alg = type { i32, i32, i32 }
%struct.ikev2_integ_alg = type { i32 }
%struct.ikev2_encr_alg = type { i32 }
%struct.ikev2_keys = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"IKEV2: SK_d\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"IKEV2: SK_ai\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"IKEV2: SK_ar\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"IKEV2: SK_ei\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"IKEV2: SK_er\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"IKEV2: SK_pi\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"IKEV2: SK_pr\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ikev2_derive_sk_keys(%struct.ikev2_prf_alg* %0, %struct.ikev2_integ_alg* %1, %struct.ikev2_encr_alg* %2, i32* %3, i32* %4, i64 %5, %struct.ikev2_keys* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ikev2_prf_alg*, align 8
  %10 = alloca %struct.ikev2_integ_alg*, align 8
  %11 = alloca %struct.ikev2_encr_alg*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.ikev2_keys*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  store %struct.ikev2_prf_alg* %0, %struct.ikev2_prf_alg** %9, align 8
  store %struct.ikev2_integ_alg* %1, %struct.ikev2_integ_alg** %10, align 8
  store %struct.ikev2_encr_alg* %2, %struct.ikev2_encr_alg** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i64 %5, i64* %14, align 8
  store %struct.ikev2_keys* %6, %struct.ikev2_keys** %15, align 8
  %19 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %20 = call i32 @ikev2_free_keys(%struct.ikev2_keys* %19)
  %21 = load %struct.ikev2_prf_alg*, %struct.ikev2_prf_alg** %9, align 8
  %22 = getelementptr inbounds %struct.ikev2_prf_alg, %struct.ikev2_prf_alg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %25 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.ikev2_integ_alg*, %struct.ikev2_integ_alg** %10, align 8
  %27 = getelementptr inbounds %struct.ikev2_integ_alg, %struct.ikev2_integ_alg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %30 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ikev2_encr_alg*, %struct.ikev2_encr_alg** %11, align 8
  %32 = getelementptr inbounds %struct.ikev2_encr_alg, %struct.ikev2_encr_alg* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %35 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.ikev2_prf_alg*, %struct.ikev2_prf_alg** %9, align 8
  %37 = getelementptr inbounds %struct.ikev2_prf_alg, %struct.ikev2_prf_alg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %40 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %42 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %45 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 2, %46
  %48 = add nsw i32 %43, %47
  %49 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %50 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = mul nsw i32 2, %51
  %53 = add nsw i32 %48, %52
  %54 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %55 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 2, %56
  %58 = add nsw i32 %53, %57
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %18, align 8
  %60 = load i64, i64* %18, align 8
  %61 = call i8* @os_malloc(i64 %60)
  %62 = bitcast i8* %61 to i32*
  store i32* %62, i32** %16, align 8
  %63 = load i32*, i32** %16, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %347

66:                                               ; preds = %7
  %67 = load %struct.ikev2_prf_alg*, %struct.ikev2_prf_alg** %9, align 8
  %68 = getelementptr inbounds %struct.ikev2_prf_alg, %struct.ikev2_prf_alg* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %12, align 8
  %71 = load %struct.ikev2_prf_alg*, %struct.ikev2_prf_alg** %9, align 8
  %72 = getelementptr inbounds %struct.ikev2_prf_alg, %struct.ikev2_prf_alg* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %13, align 8
  %75 = load i64, i64* %14, align 8
  %76 = load i32*, i32** %16, align 8
  %77 = load i64, i64* %18, align 8
  %78 = call i64 @ikev2_prf_plus(i32 %69, i32* %70, i32 %73, i32* %74, i64 %75, i32* %76, i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %66
  %81 = load i32*, i32** %16, align 8
  %82 = call i32 @os_free(i32* %81)
  store i32 -1, i32* %8, align 4
  br label %347

83:                                               ; preds = %66
  %84 = load i32*, i32** %16, align 8
  store i32* %84, i32** %17, align 8
  %85 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %86 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = call i8* @os_malloc(i64 %88)
  %90 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %91 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %90, i32 0, i32 10
  store i8* %89, i8** %91, align 8
  %92 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %93 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %92, i32 0, i32 10
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %115

96:                                               ; preds = %83
  %97 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %98 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %97, i32 0, i32 10
  %99 = load i8*, i8** %98, align 8
  %100 = load i32*, i32** %17, align 8
  %101 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %102 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = call i32 @os_memcpy(i8* %99, i32* %100, i64 %104)
  %106 = load i32, i32* @MSG_DEBUG, align 4
  %107 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %108 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %107, i32 0, i32 10
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %111 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = call i32 @wpa_hexdump_key(i32 %106, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %109, i64 %113)
  br label %115

115:                                              ; preds = %96, %83
  %116 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %117 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32*, i32** %17, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  store i32* %121, i32** %17, align 8
  %122 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %123 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = call i8* @os_malloc(i64 %125)
  %127 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %128 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %127, i32 0, i32 9
  store i8* %126, i8** %128, align 8
  %129 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %130 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %129, i32 0, i32 9
  %131 = load i8*, i8** %130, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %152

133:                                              ; preds = %115
  %134 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %135 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %134, i32 0, i32 9
  %136 = load i8*, i8** %135, align 8
  %137 = load i32*, i32** %17, align 8
  %138 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %139 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = call i32 @os_memcpy(i8* %136, i32* %137, i64 %141)
  %143 = load i32, i32* @MSG_DEBUG, align 4
  %144 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %145 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %144, i32 0, i32 9
  %146 = load i8*, i8** %145, align 8
  %147 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %148 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = call i32 @wpa_hexdump_key(i32 %143, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %146, i64 %150)
  br label %152

152:                                              ; preds = %133, %115
  %153 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %154 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %17, align 8
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  store i32* %158, i32** %17, align 8
  %159 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %160 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = call i8* @os_malloc(i64 %162)
  %164 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %165 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %164, i32 0, i32 8
  store i8* %163, i8** %165, align 8
  %166 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %167 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %166, i32 0, i32 8
  %168 = load i8*, i8** %167, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %170, label %189

170:                                              ; preds = %152
  %171 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %172 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %171, i32 0, i32 8
  %173 = load i8*, i8** %172, align 8
  %174 = load i32*, i32** %17, align 8
  %175 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %176 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  %179 = call i32 @os_memcpy(i8* %173, i32* %174, i64 %178)
  %180 = load i32, i32* @MSG_DEBUG, align 4
  %181 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %182 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %181, i32 0, i32 8
  %183 = load i8*, i8** %182, align 8
  %184 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %185 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  %188 = call i32 @wpa_hexdump_key(i32 %180, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %183, i64 %187)
  br label %189

189:                                              ; preds = %170, %152
  %190 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %191 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32*, i32** %17, align 8
  %194 = sext i32 %192 to i64
  %195 = getelementptr inbounds i32, i32* %193, i64 %194
  store i32* %195, i32** %17, align 8
  %196 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %197 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = sext i32 %198 to i64
  %200 = call i8* @os_malloc(i64 %199)
  %201 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %202 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %201, i32 0, i32 7
  store i8* %200, i8** %202, align 8
  %203 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %204 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %203, i32 0, i32 7
  %205 = load i8*, i8** %204, align 8
  %206 = icmp ne i8* %205, null
  br i1 %206, label %207, label %226

207:                                              ; preds = %189
  %208 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %209 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %208, i32 0, i32 7
  %210 = load i8*, i8** %209, align 8
  %211 = load i32*, i32** %17, align 8
  %212 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %213 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = sext i32 %214 to i64
  %216 = call i32 @os_memcpy(i8* %210, i32* %211, i64 %215)
  %217 = load i32, i32* @MSG_DEBUG, align 4
  %218 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %219 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %218, i32 0, i32 7
  %220 = load i8*, i8** %219, align 8
  %221 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %222 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = sext i32 %223 to i64
  %225 = call i32 @wpa_hexdump_key(i32 %217, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %220, i64 %224)
  br label %226

226:                                              ; preds = %207, %189
  %227 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %228 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = load i32*, i32** %17, align 8
  %231 = sext i32 %229 to i64
  %232 = getelementptr inbounds i32, i32* %230, i64 %231
  store i32* %232, i32** %17, align 8
  %233 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %234 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = sext i32 %235 to i64
  %237 = call i8* @os_malloc(i64 %236)
  %238 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %239 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %238, i32 0, i32 6
  store i8* %237, i8** %239, align 8
  %240 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %241 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %240, i32 0, i32 6
  %242 = load i8*, i8** %241, align 8
  %243 = icmp ne i8* %242, null
  br i1 %243, label %244, label %263

244:                                              ; preds = %226
  %245 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %246 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %245, i32 0, i32 6
  %247 = load i8*, i8** %246, align 8
  %248 = load i32*, i32** %17, align 8
  %249 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %250 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = sext i32 %251 to i64
  %253 = call i32 @os_memcpy(i8* %247, i32* %248, i64 %252)
  %254 = load i32, i32* @MSG_DEBUG, align 4
  %255 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %256 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %255, i32 0, i32 6
  %257 = load i8*, i8** %256, align 8
  %258 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %259 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = sext i32 %260 to i64
  %262 = call i32 @wpa_hexdump_key(i32 %254, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %257, i64 %261)
  br label %263

263:                                              ; preds = %244, %226
  %264 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %265 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = load i32*, i32** %17, align 8
  %268 = sext i32 %266 to i64
  %269 = getelementptr inbounds i32, i32* %267, i64 %268
  store i32* %269, i32** %17, align 8
  %270 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %271 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 4
  %273 = sext i32 %272 to i64
  %274 = call i8* @os_malloc(i64 %273)
  %275 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %276 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %275, i32 0, i32 5
  store i8* %274, i8** %276, align 8
  %277 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %278 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %277, i32 0, i32 5
  %279 = load i8*, i8** %278, align 8
  %280 = icmp ne i8* %279, null
  br i1 %280, label %281, label %300

281:                                              ; preds = %263
  %282 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %283 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %282, i32 0, i32 5
  %284 = load i8*, i8** %283, align 8
  %285 = load i32*, i32** %17, align 8
  %286 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %287 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 4
  %289 = sext i32 %288 to i64
  %290 = call i32 @os_memcpy(i8* %284, i32* %285, i64 %289)
  %291 = load i32, i32* @MSG_DEBUG, align 4
  %292 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %293 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %292, i32 0, i32 5
  %294 = load i8*, i8** %293, align 8
  %295 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %296 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 4
  %298 = sext i32 %297 to i64
  %299 = call i32 @wpa_hexdump_key(i32 %291, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %294, i64 %298)
  br label %300

300:                                              ; preds = %281, %263
  %301 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %302 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 4
  %304 = load i32*, i32** %17, align 8
  %305 = sext i32 %303 to i64
  %306 = getelementptr inbounds i32, i32* %304, i64 %305
  store i32* %306, i32** %17, align 8
  %307 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %308 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %307, i32 0, i32 3
  %309 = load i32, i32* %308, align 4
  %310 = sext i32 %309 to i64
  %311 = call i8* @os_malloc(i64 %310)
  %312 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %313 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %312, i32 0, i32 4
  store i8* %311, i8** %313, align 8
  %314 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %315 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %314, i32 0, i32 4
  %316 = load i8*, i8** %315, align 8
  %317 = icmp ne i8* %316, null
  br i1 %317, label %318, label %337

318:                                              ; preds = %300
  %319 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %320 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %319, i32 0, i32 4
  %321 = load i8*, i8** %320, align 8
  %322 = load i32*, i32** %17, align 8
  %323 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %324 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 4
  %326 = sext i32 %325 to i64
  %327 = call i32 @os_memcpy(i8* %321, i32* %322, i64 %326)
  %328 = load i32, i32* @MSG_DEBUG, align 4
  %329 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %330 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %329, i32 0, i32 4
  %331 = load i8*, i8** %330, align 8
  %332 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %333 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %332, i32 0, i32 3
  %334 = load i32, i32* %333, align 4
  %335 = sext i32 %334 to i64
  %336 = call i32 @wpa_hexdump_key(i32 %328, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %331, i64 %335)
  br label %337

337:                                              ; preds = %318, %300
  %338 = load i32*, i32** %16, align 8
  %339 = call i32 @os_free(i32* %338)
  %340 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %341 = call i32 @ikev2_keys_set(%struct.ikev2_keys* %340)
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %346, label %343

343:                                              ; preds = %337
  %344 = load %struct.ikev2_keys*, %struct.ikev2_keys** %15, align 8
  %345 = call i32 @ikev2_free_keys(%struct.ikev2_keys* %344)
  store i32 -1, i32* %8, align 4
  br label %347

346:                                              ; preds = %337
  store i32 0, i32* %8, align 4
  br label %347

347:                                              ; preds = %346, %343, %80, %65
  %348 = load i32, i32* %8, align 4
  ret i32 %348
}

declare dso_local i32 @ikev2_free_keys(%struct.ikev2_keys*) #1

declare dso_local i8* @os_malloc(i64) #1

declare dso_local i64 @ikev2_prf_plus(i32, i32*, i32, i32*, i64, i32*, i64) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @os_memcpy(i8*, i32*, i64) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i8*, i64) #1

declare dso_local i32 @ikev2_keys_set(%struct.ikev2_keys*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
