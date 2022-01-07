; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_get_cred.c_get_cred_kdc_capath_worker.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_get_cred.c_get_cred_kdc_capath_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_37__ = type { %struct.TYPE_38__*, %struct.TYPE_38__*, %struct.TYPE_34__ }
%struct.TYPE_38__ = type { %struct.TYPE_36__ }
%struct.TYPE_36__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i32* }
%struct.TYPE_34__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i32 }

@KRB5_TGS_NAME = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@KRB5_CC_NOTFOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32, %struct.TYPE_37__*, i32, i32, i32*, %struct.TYPE_37__**, %struct.TYPE_37__***)* @get_cred_kdc_capath_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_cred_kdc_capath_worker(i32 %0, i32 %1, i32 %2, %struct.TYPE_37__* %3, i32 %4, i32 %5, i32* %6, %struct.TYPE_37__** %7, %struct.TYPE_37__*** %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_37__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_37__**, align 8
  %19 = alloca %struct.TYPE_37__***, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_37__*, align 8
  %22 = alloca %struct.TYPE_37__, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_37__, align 8
  %27 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store %struct.TYPE_37__* %3, %struct.TYPE_37__** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store %struct.TYPE_37__** %7, %struct.TYPE_37__*** %18, align 8
  store %struct.TYPE_37__*** %8, %struct.TYPE_37__**** %19, align 8
  store i32 1, i32* %25, align 4
  %28 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %18, align 8
  store %struct.TYPE_37__* null, %struct.TYPE_37__** %28, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_38__*, %struct.TYPE_38__** %31, align 8
  %33 = call i32 @krb5_principal_get_realm(i32 %29, %struct.TYPE_38__* %32)
  store i32 %33, i32* %23, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_38__*, %struct.TYPE_38__** %36, align 8
  %38 = call i32 @krb5_principal_get_realm(i32 %34, %struct.TYPE_38__* %37)
  store i32 %38, i32* %24, align 4
  %39 = call i32 @memset(%struct.TYPE_37__* %22, i32 0, i32 24)
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_38__*, %struct.TYPE_38__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %22, i32 0, i32 0
  %45 = call i64 @krb5_copy_principal(i32 %40, %struct.TYPE_38__* %43, %struct.TYPE_38__** %44)
  store i64 %45, i64* %20, align 8
  %46 = load i64, i64* %20, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %9
  %49 = load i64, i64* %20, align 8
  store i64 %49, i64* %10, align 8
  br label %310

50:                                               ; preds = %9
  %51 = load i32, i32* %11, align 4
  %52 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %22, i32 0, i32 1
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* @KRB5_TGS_NAME, align 4
  %55 = load i32, i32* %24, align 4
  %56 = call i64 @krb5_make_principal(i32 %51, %struct.TYPE_38__** %52, i32 %53, i32 %54, i32 %55, i32* null)
  store i64 %56, i64* %20, align 8
  %57 = load i64, i64* %20, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %50
  %60 = load i32, i32* %11, align 4
  %61 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %22, i32 0, i32 0
  %62 = load %struct.TYPE_38__*, %struct.TYPE_38__** %61, align 8
  %63 = call i32 @krb5_free_principal(i32 %60, %struct.TYPE_38__* %62)
  %64 = load i64, i64* %20, align 8
  store i64 %64, i64* %10, align 8
  br label %310

65:                                               ; preds = %50
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %13, align 4
  %68 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %22, i32 0, i32 1
  %69 = load %struct.TYPE_38__*, %struct.TYPE_38__** %68, align 8
  %70 = load %struct.TYPE_37__***, %struct.TYPE_37__**** %19, align 8
  %71 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %70, align 8
  %72 = call i64 @find_cred(i32 %66, i32 %67, %struct.TYPE_38__* %69, %struct.TYPE_37__** %71, %struct.TYPE_37__* %26)
  store i64 %72, i64* %20, align 8
  %73 = load i64, i64* %20, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %142

75:                                               ; preds = %65
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %23, align 4
  %78 = call i64 @strcmp(i32 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %24, align 4
  %83 = call i64 @strcmp(i32 %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80, %75
  %86 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %26, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %25, align 4
  br label %90

90:                                               ; preds = %85, %80
  %91 = call %struct.TYPE_37__* @calloc(i32 1, i32 24)
  %92 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %18, align 8
  store %struct.TYPE_37__* %91, %struct.TYPE_37__** %92, align 8
  %93 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %18, align 8
  %94 = load %struct.TYPE_37__*, %struct.TYPE_37__** %93, align 8
  %95 = icmp eq %struct.TYPE_37__* %94, null
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load i64, i64* @ENOMEM, align 8
  store i64 %97, i64* %20, align 8
  %98 = load i32, i32* %11, align 4
  %99 = load i64, i64* %20, align 8
  %100 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %101 = call i32 @krb5_set_error_message(i32 %98, i64 %99, i32 %100)
  br label %130

102:                                              ; preds = %90
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %107 = load i32, i32* %16, align 4
  %108 = load i32*, i32** %17, align 8
  %109 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %18, align 8
  %110 = load %struct.TYPE_37__*, %struct.TYPE_37__** %109, align 8
  %111 = call i64 @get_cred_kdc_address(i32 %103, i32 %104, i32 %105, i32* null, %struct.TYPE_37__* %106, %struct.TYPE_37__* %26, i32 %107, i32* %108, %struct.TYPE_37__* %110)
  store i64 %111, i64* %20, align 8
  %112 = load i64, i64* %20, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %102
  %115 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %18, align 8
  %116 = load %struct.TYPE_37__*, %struct.TYPE_37__** %115, align 8
  %117 = call i32 @free(%struct.TYPE_37__* %116)
  %118 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %18, align 8
  store %struct.TYPE_37__* null, %struct.TYPE_37__** %118, align 8
  br label %129

119:                                              ; preds = %102
  %120 = load i32, i32* %25, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %119
  %123 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %18, align 8
  %124 = load %struct.TYPE_37__*, %struct.TYPE_37__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %126, i32 0, i32 0
  store i32 0, i32* %127, align 8
  br label %128

128:                                              ; preds = %122, %119
  br label %129

129:                                              ; preds = %128, %114
  br label %130

130:                                              ; preds = %129, %96
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @krb5_free_cred_contents(i32 %131, %struct.TYPE_37__* %26)
  %133 = load i32, i32* %11, align 4
  %134 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %22, i32 0, i32 1
  %135 = load %struct.TYPE_38__*, %struct.TYPE_38__** %134, align 8
  %136 = call i32 @krb5_free_principal(i32 %133, %struct.TYPE_38__* %135)
  %137 = load i32, i32* %11, align 4
  %138 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %22, i32 0, i32 0
  %139 = load %struct.TYPE_38__*, %struct.TYPE_38__** %138, align 8
  %140 = call i32 @krb5_free_principal(i32 %137, %struct.TYPE_38__* %139)
  %141 = load i64, i64* %20, align 8
  store i64 %141, i64* %10, align 8
  br label %310

142:                                              ; preds = %65
  %143 = load i32, i32* %11, align 4
  %144 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %145 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_38__*, %struct.TYPE_38__** %145, align 8
  %147 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_38__*, %struct.TYPE_38__** %148, align 8
  %150 = call i64 @krb5_realm_compare(i32 %143, %struct.TYPE_38__* %146, %struct.TYPE_38__* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %142
  %153 = load i32, i32* %11, align 4
  %154 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %155 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_38__*, %struct.TYPE_38__** %155, align 8
  %157 = load i32, i32* @KRB5_CC_NOTFOUND, align 4
  %158 = call i64 @not_found(i32 %153, %struct.TYPE_38__* %156, i32 %157)
  store i64 %158, i64* %10, align 8
  br label %310

159:                                              ; preds = %142
  br label %160

160:                                              ; preds = %159, %265
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %13, align 4
  %164 = load %struct.TYPE_37__***, %struct.TYPE_37__**** %19, align 8
  %165 = call i64 @get_cred_kdc_capath(i32 %161, i32 %162, i32 %163, %struct.TYPE_37__* %22, i32* null, i32* null, %struct.TYPE_37__** %21, %struct.TYPE_37__*** %164)
  store i64 %165, i64* %20, align 8
  %166 = load i64, i64* %20, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %178

168:                                              ; preds = %160
  %169 = load i32, i32* %11, align 4
  %170 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %22, i32 0, i32 1
  %171 = load %struct.TYPE_38__*, %struct.TYPE_38__** %170, align 8
  %172 = call i32 @krb5_free_principal(i32 %169, %struct.TYPE_38__* %171)
  %173 = load i32, i32* %11, align 4
  %174 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %22, i32 0, i32 0
  %175 = load %struct.TYPE_38__*, %struct.TYPE_38__** %174, align 8
  %176 = call i32 @krb5_free_principal(i32 %173, %struct.TYPE_38__* %175)
  %177 = load i64, i64* %20, align 8
  store i64 %177, i64* %10, align 8
  br label %310

178:                                              ; preds = %160
  %179 = load i32, i32* %25, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %188, label %181

181:                                              ; preds = %178
  %182 = load %struct.TYPE_37__*, %struct.TYPE_37__** %21, align 8
  %183 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %181, %178
  store i32 0, i32* %25, align 4
  %189 = load %struct.TYPE_37__*, %struct.TYPE_37__** %21, align 8
  %190 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %191, i32 0, i32 0
  store i32 0, i32* %192, align 8
  br label %193

193:                                              ; preds = %188, %181
  %194 = load i32, i32* %11, align 4
  %195 = load %struct.TYPE_37__*, %struct.TYPE_37__** %21, align 8
  %196 = load %struct.TYPE_37__***, %struct.TYPE_37__**** %19, align 8
  %197 = call i64 @add_cred(i32 %194, %struct.TYPE_37__* %195, %struct.TYPE_37__*** %196)
  store i64 %197, i64* %20, align 8
  %198 = load i64, i64* %20, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %210

200:                                              ; preds = %193
  %201 = load i32, i32* %11, align 4
  %202 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %22, i32 0, i32 1
  %203 = load %struct.TYPE_38__*, %struct.TYPE_38__** %202, align 8
  %204 = call i32 @krb5_free_principal(i32 %201, %struct.TYPE_38__* %203)
  %205 = load i32, i32* %11, align 4
  %206 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %22, i32 0, i32 0
  %207 = load %struct.TYPE_38__*, %struct.TYPE_38__** %206, align 8
  %208 = call i32 @krb5_free_principal(i32 %205, %struct.TYPE_38__* %207)
  %209 = load i64, i64* %20, align 8
  store i64 %209, i64* %10, align 8
  br label %310

210:                                              ; preds = %193
  %211 = load %struct.TYPE_37__*, %struct.TYPE_37__** %21, align 8
  %212 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %211, i32 0, i32 1
  %213 = load %struct.TYPE_38__*, %struct.TYPE_38__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 1
  %219 = load i32, i32* %218, align 4
  store i32 %219, i32* %27, align 4
  %220 = load i32, i32* %27, align 4
  %221 = load i32, i32* %24, align 4
  %222 = call i64 @strcmp(i32 %220, i32 %221)
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %210
  br label %266

225:                                              ; preds = %210
  %226 = load i32, i32* %11, align 4
  %227 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %22, i32 0, i32 1
  %228 = load %struct.TYPE_38__*, %struct.TYPE_38__** %227, align 8
  %229 = call i32 @krb5_free_principal(i32 %226, %struct.TYPE_38__* %228)
  %230 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %22, i32 0, i32 1
  store %struct.TYPE_38__* null, %struct.TYPE_38__** %230, align 8
  %231 = load i32, i32* %11, align 4
  %232 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %22, i32 0, i32 1
  %233 = load i32, i32* %27, align 4
  %234 = load i32, i32* @KRB5_TGS_NAME, align 4
  %235 = load i32, i32* %24, align 4
  %236 = call i64 @krb5_make_principal(i32 %231, %struct.TYPE_38__** %232, i32 %233, i32 %234, i32 %235, i32* null)
  store i64 %236, i64* %20, align 8
  %237 = load i64, i64* %20, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %249

239:                                              ; preds = %225
  %240 = load i32, i32* %11, align 4
  %241 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %22, i32 0, i32 1
  %242 = load %struct.TYPE_38__*, %struct.TYPE_38__** %241, align 8
  %243 = call i32 @krb5_free_principal(i32 %240, %struct.TYPE_38__* %242)
  %244 = load i32, i32* %11, align 4
  %245 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %22, i32 0, i32 0
  %246 = load %struct.TYPE_38__*, %struct.TYPE_38__** %245, align 8
  %247 = call i32 @krb5_free_principal(i32 %244, %struct.TYPE_38__* %246)
  %248 = load i64, i64* %20, align 8
  store i64 %248, i64* %10, align 8
  br label %310

249:                                              ; preds = %225
  %250 = load i32, i32* %11, align 4
  %251 = load %struct.TYPE_37__*, %struct.TYPE_37__** %21, align 8
  %252 = call i64 @krb5_free_creds(i32 %250, %struct.TYPE_37__* %251)
  store i64 %252, i64* %20, align 8
  %253 = load i64, i64* %20, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %265

255:                                              ; preds = %249
  %256 = load i32, i32* %11, align 4
  %257 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %22, i32 0, i32 1
  %258 = load %struct.TYPE_38__*, %struct.TYPE_38__** %257, align 8
  %259 = call i32 @krb5_free_principal(i32 %256, %struct.TYPE_38__* %258)
  %260 = load i32, i32* %11, align 4
  %261 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %22, i32 0, i32 0
  %262 = load %struct.TYPE_38__*, %struct.TYPE_38__** %261, align 8
  %263 = call i32 @krb5_free_principal(i32 %260, %struct.TYPE_38__* %262)
  %264 = load i64, i64* %20, align 8
  store i64 %264, i64* %10, align 8
  br label %310

265:                                              ; preds = %249
  br label %160

266:                                              ; preds = %224
  %267 = load i32, i32* %11, align 4
  %268 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %22, i32 0, i32 1
  %269 = load %struct.TYPE_38__*, %struct.TYPE_38__** %268, align 8
  %270 = call i32 @krb5_free_principal(i32 %267, %struct.TYPE_38__* %269)
  %271 = load i32, i32* %11, align 4
  %272 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %22, i32 0, i32 0
  %273 = load %struct.TYPE_38__*, %struct.TYPE_38__** %272, align 8
  %274 = call i32 @krb5_free_principal(i32 %271, %struct.TYPE_38__* %273)
  %275 = call %struct.TYPE_37__* @calloc(i32 1, i32 24)
  %276 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %18, align 8
  store %struct.TYPE_37__* %275, %struct.TYPE_37__** %276, align 8
  %277 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %18, align 8
  %278 = load %struct.TYPE_37__*, %struct.TYPE_37__** %277, align 8
  %279 = icmp eq %struct.TYPE_37__* %278, null
  br i1 %279, label %280, label %286

280:                                              ; preds = %266
  %281 = load i64, i64* @ENOMEM, align 8
  store i64 %281, i64* %20, align 8
  %282 = load i32, i32* %11, align 4
  %283 = load i64, i64* %20, align 8
  %284 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %285 = call i32 @krb5_set_error_message(i32 %282, i64 %283, i32 %284)
  br label %305

286:                                              ; preds = %266
  %287 = load i32, i32* %11, align 4
  %288 = load i32, i32* %13, align 4
  %289 = load i32, i32* %12, align 4
  %290 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %291 = load %struct.TYPE_37__*, %struct.TYPE_37__** %21, align 8
  %292 = load i32, i32* %16, align 4
  %293 = load i32*, i32** %17, align 8
  %294 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %18, align 8
  %295 = load %struct.TYPE_37__*, %struct.TYPE_37__** %294, align 8
  %296 = call i64 @get_cred_kdc_address(i32 %287, i32 %288, i32 %289, i32* null, %struct.TYPE_37__* %290, %struct.TYPE_37__* %291, i32 %292, i32* %293, %struct.TYPE_37__* %295)
  store i64 %296, i64* %20, align 8
  %297 = load i64, i64* %20, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %304

299:                                              ; preds = %286
  %300 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %18, align 8
  %301 = load %struct.TYPE_37__*, %struct.TYPE_37__** %300, align 8
  %302 = call i32 @free(%struct.TYPE_37__* %301)
  %303 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %18, align 8
  store %struct.TYPE_37__* null, %struct.TYPE_37__** %303, align 8
  br label %304

304:                                              ; preds = %299, %286
  br label %305

305:                                              ; preds = %304, %280
  %306 = load i32, i32* %11, align 4
  %307 = load %struct.TYPE_37__*, %struct.TYPE_37__** %21, align 8
  %308 = call i64 @krb5_free_creds(i32 %306, %struct.TYPE_37__* %307)
  %309 = load i64, i64* %20, align 8
  store i64 %309, i64* %10, align 8
  br label %310

310:                                              ; preds = %305, %255, %239, %200, %168, %152, %130, %59, %48
  %311 = load i64, i64* %10, align 8
  ret i64 %311
}

declare dso_local i32 @krb5_principal_get_realm(i32, %struct.TYPE_38__*) #1

declare dso_local i32 @memset(%struct.TYPE_37__*, i32, i32) #1

declare dso_local i64 @krb5_copy_principal(i32, %struct.TYPE_38__*, %struct.TYPE_38__**) #1

declare dso_local i64 @krb5_make_principal(i32, %struct.TYPE_38__**, i32, i32, i32, i32*) #1

declare dso_local i32 @krb5_free_principal(i32, %struct.TYPE_38__*) #1

declare dso_local i64 @find_cred(i32, i32, %struct.TYPE_38__*, %struct.TYPE_37__**, %struct.TYPE_37__*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local %struct.TYPE_37__* @calloc(i32, i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i32) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i64 @get_cred_kdc_address(i32, i32, i32, i32*, %struct.TYPE_37__*, %struct.TYPE_37__*, i32, i32*, %struct.TYPE_37__*) #1

declare dso_local i32 @free(%struct.TYPE_37__*) #1

declare dso_local i32 @krb5_free_cred_contents(i32, %struct.TYPE_37__*) #1

declare dso_local i64 @krb5_realm_compare(i32, %struct.TYPE_38__*, %struct.TYPE_38__*) #1

declare dso_local i64 @not_found(i32, %struct.TYPE_38__*, i32) #1

declare dso_local i64 @get_cred_kdc_capath(i32, i32, i32, %struct.TYPE_37__*, i32*, i32*, %struct.TYPE_37__**, %struct.TYPE_37__***) #1

declare dso_local i64 @add_cred(i32, %struct.TYPE_37__*, %struct.TYPE_37__***) #1

declare dso_local i64 @krb5_free_creds(i32, %struct.TYPE_37__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
