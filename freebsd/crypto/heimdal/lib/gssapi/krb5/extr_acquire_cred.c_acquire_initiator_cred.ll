; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_acquire_cred.c_acquire_initiator_cred.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_acquire_cred.c_acquire_initiator_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, i32, i32*, i32 }
%struct.TYPE_12__ = type { i32*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@GSS_S_FAILURE = common dso_local global i64 0, align 8
@GSS_C_NO_OID = common dso_local global i64 0, align 8
@GSS_C_CRED_PASSWORD = common dso_local global i32 0, align 4
@KRB5_NOCREDS_SUPPLIED = common dso_local global i64 0, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@krb5_cc_type_memory = common dso_local global i32 0, align 4
@GSS_CF_DESTROY_CRED_ON_RELEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i32, i64, i8*, i32, i64, i64, i32, %struct.TYPE_13__*)* @acquire_initiator_cred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @acquire_initiator_cred(i64* %0, i32 %1, i64 %2, i8* %3, i32 %4, i64 %5, i64 %6, i32 %7, %struct.TYPE_13__* %8) #0 {
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_13__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_12__, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.TYPE_14__*, align 8
  store i64* %0, i64** %10, align 8
  store i32 %1, i32* %11, align 4
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  store %struct.TYPE_13__* %8, %struct.TYPE_13__** %18, align 8
  store i32* null, i32** %24, align 8
  store i32* null, i32** %23, align 8
  store i32* null, i32** %21, align 8
  %27 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %27, i64* %19, align 8
  %28 = call i32 @memset(%struct.TYPE_12__* %20, i32 0, i32 16)
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* @GSS_C_NO_OID, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %9
  %33 = load i64, i64* %12, align 8
  %34 = load i32, i32* @GSS_C_CRED_PASSWORD, align 4
  %35 = call i64 @gss_oid_equal(i64 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = load i64, i64* @KRB5_NOCREDS_SUPPLIED, align 8
  store i64 %38, i64* %25, align 8
  br label %245

39:                                               ; preds = %32, %9
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = call i64 @krb5_cc_cache_match(i32 %45, i32* %48, i32** %23)
  store i64 %49, i64* %25, align 8
  %50 = load i64, i64* %25, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %53, i64* %19, align 8
  br label %240

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54, %39
  %56 = load i32*, i32** %23, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load i32, i32* %11, align 4
  %60 = call i64 @krb5_cc_default(i32 %59, i32** %23)
  store i64 %60, i64* %25, align 8
  %61 = load i64, i64* %25, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %245

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64, %55
  %66 = load i32, i32* %11, align 4
  %67 = load i32*, i32** %23, align 8
  %68 = call i64 @krb5_cc_get_principal(i32 %66, i32* %67, i32** %21)
  store i64 %68, i64* %25, align 8
  %69 = load i64, i64* %25, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i32, i32* %11, align 4
  %73 = load i32*, i32** %23, align 8
  %74 = call i32 @krb5_cc_close(i32 %72, i32* %73)
  store i32* null, i32** %21, align 8
  store i64 0, i64* %25, align 8
  br label %113

75:                                               ; preds = %65
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = load i32, i32* %11, align 4
  %82 = load i32*, i32** %21, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 2
  %85 = call i64 @krb5_copy_principal(i32 %81, i32* %82, i32** %84)
  store i64 %85, i64* %25, align 8
  %86 = load i64, i64* %25, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %245

89:                                               ; preds = %80
  br label %112

90:                                               ; preds = %75
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %111

95:                                               ; preds = %90
  %96 = load i32, i32* %11, align 4
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load i32*, i32** %21, align 8
  %101 = call i64 @krb5_principal_compare(i32 %96, i32* %99, i32* %100)
  %102 = load i64, i64* @FALSE, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %95
  %105 = load i32, i32* %11, align 4
  %106 = load i32*, i32** %21, align 8
  %107 = call i32 @krb5_free_principal(i32 %105, i32* %106)
  store i32* null, i32** %21, align 8
  %108 = load i32, i32* %11, align 4
  %109 = load i32*, i32** %23, align 8
  %110 = call i32 @krb5_cc_close(i32 %108, i32* %109)
  store i32* null, i32** %23, align 8
  br label %111

111:                                              ; preds = %104, %95, %90
  br label %112

112:                                              ; preds = %111, %89
  br label %113

113:                                              ; preds = %112, %71
  %114 = load i32*, i32** %21, align 8
  %115 = icmp eq i32* %114, null
  br i1 %115, label %116, label %221

116:                                              ; preds = %113
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %130

121:                                              ; preds = %116
  %122 = load i32, i32* %11, align 4
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 2
  %125 = call i64 @krb5_get_default_principal(i32 %122, i32** %124)
  store i64 %125, i64* %25, align 8
  %126 = load i64, i64* %25, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  br label %245

129:                                              ; preds = %121
  br label %130

130:                                              ; preds = %129, %116
  %131 = load i32, i32* %11, align 4
  %132 = call i64 @krb5_get_init_creds_opt_alloc(i32 %131, i32** %22)
  store i64 %132, i64* %25, align 8
  %133 = load i64, i64* %25, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  br label %245

136:                                              ; preds = %130
  %137 = load i64, i64* %12, align 8
  %138 = load i64, i64* @GSS_C_NO_OID, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %157

140:                                              ; preds = %136
  %141 = load i64, i64* %12, align 8
  %142 = load i32, i32* @GSS_C_CRED_PASSWORD, align 4
  %143 = call i64 @gss_oid_equal(i64 %141, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %157

145:                                              ; preds = %140
  %146 = load i8*, i8** %13, align 8
  %147 = bitcast i8* %146 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %147, %struct.TYPE_14__** %26, align 8
  %148 = load i32, i32* %11, align 4
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32*, i32** %22, align 8
  %156 = call i64 @krb5_get_init_creds_password(i32 %148, %struct.TYPE_12__* %20, i32* %151, i32 %154, i32* null, i32* null, i32 0, i32* null, i32* %155)
  store i64 %156, i64* %25, align 8
  br label %174

157:                                              ; preds = %140, %136
  %158 = load i32, i32* %11, align 4
  %159 = call i64 @get_keytab(i32 %158, i32** %24)
  store i64 %159, i64* %25, align 8
  %160 = load i64, i64* %25, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %157
  %163 = load i32, i32* %11, align 4
  %164 = load i32*, i32** %22, align 8
  %165 = call i32 @krb5_get_init_creds_opt_free(i32 %163, i32* %164)
  br label %245

166:                                              ; preds = %157
  %167 = load i32, i32* %11, align 4
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 2
  %170 = load i32*, i32** %169, align 8
  %171 = load i32*, i32** %24, align 8
  %172 = load i32*, i32** %22, align 8
  %173 = call i64 @krb5_get_init_creds_keytab(i32 %167, %struct.TYPE_12__* %20, i32* %170, i32* %171, i32 0, i32* null, i32* %172)
  store i64 %173, i64* %25, align 8
  br label %174

174:                                              ; preds = %166, %145
  %175 = load i32, i32* %11, align 4
  %176 = load i32*, i32** %22, align 8
  %177 = call i32 @krb5_get_init_creds_opt_free(i32 %175, i32* %176)
  %178 = load i64, i64* %25, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %174
  br label %245

181:                                              ; preds = %174
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* @krb5_cc_type_memory, align 4
  %184 = call i64 @krb5_cc_new_unique(i32 %182, i32 %183, i32* null, i32** %23)
  store i64 %184, i64* %25, align 8
  %185 = load i64, i64* %25, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %181
  br label %245

188:                                              ; preds = %181
  %189 = load i32, i32* %11, align 4
  %190 = load i32*, i32** %23, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = call i64 @krb5_cc_initialize(i32 %189, i32* %190, i32* %192)
  store i64 %193, i64* %25, align 8
  %194 = load i64, i64* %25, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %188
  %197 = load i32, i32* %11, align 4
  %198 = load i32*, i32** %23, align 8
  %199 = call i32 @krb5_cc_destroy(i32 %197, i32* %198)
  br label %245

200:                                              ; preds = %188
  %201 = load i32, i32* %11, align 4
  %202 = load i32*, i32** %23, align 8
  %203 = call i64 @krb5_cc_store_cred(i32 %201, i32* %202, %struct.TYPE_12__* %20)
  store i64 %203, i64* %25, align 8
  %204 = load i64, i64* %25, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %200
  %207 = load i32, i32* %11, align 4
  %208 = load i32*, i32** %23, align 8
  %209 = call i32 @krb5_cc_destroy(i32 %207, i32* %208)
  br label %245

210:                                              ; preds = %200
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 1
  store i32 %213, i32* %215, align 8
  %216 = load i32, i32* @GSS_CF_DESTROY_CRED_ON_RELEASE, align 4
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 8
  %220 = or i32 %219, %216
  store i32 %220, i32* %218, align 8
  br label %239

221:                                              ; preds = %113
  %222 = load i64*, i64** %10, align 8
  %223 = load i32, i32* %11, align 4
  %224 = load i32*, i32** %23, align 8
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 2
  %227 = load i32*, i32** %226, align 8
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 1
  %230 = call i64 @__gsskrb5_ccache_lifetime(i64* %222, i32 %223, i32* %224, i32* %227, i32* %229)
  store i64 %230, i64* %19, align 8
  %231 = load i64, i64* %19, align 8
  %232 = load i64, i64* @GSS_S_COMPLETE, align 8
  %233 = icmp ne i64 %231, %232
  br i1 %233, label %234, label %238

234:                                              ; preds = %221
  %235 = load i32, i32* %11, align 4
  %236 = load i32*, i32** %23, align 8
  %237 = call i32 @krb5_cc_close(i32 %235, i32* %236)
  br label %245

238:                                              ; preds = %221
  store i64 0, i64* %25, align 8
  br label %239

239:                                              ; preds = %238, %210
  br label %240

240:                                              ; preds = %239, %52
  %241 = load i32*, i32** %23, align 8
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 0
  store i32* %241, i32** %243, align 8
  %244 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %244, i64* %19, align 8
  br label %245

245:                                              ; preds = %240, %234, %206, %196, %187, %180, %162, %135, %128, %88, %63, %37
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = icmp ne i32* %247, null
  br i1 %248, label %249, label %252

249:                                              ; preds = %245
  %250 = load i32, i32* %11, align 4
  %251 = call i32 @krb5_free_cred_contents(i32 %250, %struct.TYPE_12__* %20)
  br label %252

252:                                              ; preds = %249, %245
  %253 = load i32*, i32** %21, align 8
  %254 = icmp ne i32* %253, null
  br i1 %254, label %255, label %259

255:                                              ; preds = %252
  %256 = load i32, i32* %11, align 4
  %257 = load i32*, i32** %21, align 8
  %258 = call i32 @krb5_free_principal(i32 %256, i32* %257)
  br label %259

259:                                              ; preds = %255, %252
  %260 = load i32*, i32** %24, align 8
  %261 = icmp ne i32* %260, null
  br i1 %261, label %262, label %266

262:                                              ; preds = %259
  %263 = load i32, i32* %11, align 4
  %264 = load i32*, i32** %24, align 8
  %265 = call i32 @krb5_kt_close(i32 %263, i32* %264)
  br label %266

266:                                              ; preds = %262, %259
  %267 = load i64, i64* %19, align 8
  %268 = load i64, i64* @GSS_S_COMPLETE, align 8
  %269 = icmp ne i64 %267, %268
  br i1 %269, label %270, label %276

270:                                              ; preds = %266
  %271 = load i64, i64* %25, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %270
  %274 = load i64, i64* %25, align 8
  %275 = load i64*, i64** %10, align 8
  store i64 %274, i64* %275, align 8
  br label %276

276:                                              ; preds = %273, %270, %266
  %277 = load i64, i64* %19, align 8
  ret i64 %277
}

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @gss_oid_equal(i64, i32) #1

declare dso_local i64 @krb5_cc_cache_match(i32, i32*, i32**) #1

declare dso_local i64 @krb5_cc_default(i32, i32**) #1

declare dso_local i64 @krb5_cc_get_principal(i32, i32*, i32**) #1

declare dso_local i32 @krb5_cc_close(i32, i32*) #1

declare dso_local i64 @krb5_copy_principal(i32, i32*, i32**) #1

declare dso_local i64 @krb5_principal_compare(i32, i32*, i32*) #1

declare dso_local i32 @krb5_free_principal(i32, i32*) #1

declare dso_local i64 @krb5_get_default_principal(i32, i32**) #1

declare dso_local i64 @krb5_get_init_creds_opt_alloc(i32, i32**) #1

declare dso_local i64 @krb5_get_init_creds_password(i32, %struct.TYPE_12__*, i32*, i32, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i64 @get_keytab(i32, i32**) #1

declare dso_local i32 @krb5_get_init_creds_opt_free(i32, i32*) #1

declare dso_local i64 @krb5_get_init_creds_keytab(i32, %struct.TYPE_12__*, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i64 @krb5_cc_new_unique(i32, i32, i32*, i32**) #1

declare dso_local i64 @krb5_cc_initialize(i32, i32*, i32*) #1

declare dso_local i32 @krb5_cc_destroy(i32, i32*) #1

declare dso_local i64 @krb5_cc_store_cred(i32, i32*, %struct.TYPE_12__*) #1

declare dso_local i64 @__gsskrb5_ccache_lifetime(i64*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @krb5_free_cred_contents(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @krb5_kt_close(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
