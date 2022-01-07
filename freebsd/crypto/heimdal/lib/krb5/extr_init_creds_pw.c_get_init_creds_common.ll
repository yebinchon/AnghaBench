; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_init_creds_pw.c_get_init_creds_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_init_creds_pw.c_get_init_creds_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_18__*, i32*, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32*, i64 }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_19__, i32*, i32*, i32*, %struct.TYPE_16__, i32*, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }

@default_s2k_func = common dso_local global i32* null, align 8
@KRB5_INIT_CREDS_CANONICALIZE = common dso_local global i32 0, align 4
@KRB5_NT_ENTERPRISE_PRINCIPAL = common dso_local global i64 0, align 8
@KRB5_GET_INIT_CREDS_OPT_FORWARDABLE = common dso_local global i32 0, align 4
@KRB5_GET_INIT_CREDS_OPT_PROXIABLE = common dso_local global i32 0, align 4
@KRB5_GET_INIT_CREDS_OPT_ADDRESS_LIST = common dso_local global i32 0, align 4
@no_addrs = common dso_local global i32 0, align 4
@KRB5_GET_INIT_CREDS_OPT_ETYPE_LIST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ETYPE_NULL = common dso_local global i32 0, align 4
@KRB5_GET_INIT_CREDS_OPT_PREAUTH_LIST = common dso_local global i32 0, align 4
@KRB5_PADATA_NONE = common dso_local global i32 0, align 4
@KRB5_GET_INIT_CREDS_OPT_ANONYMOUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i64, %struct.TYPE_21__*, %struct.TYPE_20__*)* @get_init_creds_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_init_creds_common(i32 %0, i32 %1, i64 %2, %struct.TYPE_21__* %3, %struct.TYPE_20__* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %10, align 8
  store %struct.TYPE_20__* %4, %struct.TYPE_20__** %11, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %12, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %18 = call i32 @memset(%struct.TYPE_20__* %17, i32 0, i32 80)
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %20 = icmp eq %struct.TYPE_21__* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %5
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i8* @krb5_principal_get_realm(i32 %22, i32 %23)
  store i8* %24, i8** %16, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @krb5_get_init_creds_opt_alloc(i32 %25, %struct.TYPE_21__** %12)
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  store %struct.TYPE_21__* %27, %struct.TYPE_21__** %10, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i8*, i8** %16, align 8
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %31 = call i32 @krb5_get_init_creds_opt_set_default_flags(i32 %28, i32* null, i8* %29, %struct.TYPE_21__* %30)
  br label %32

32:                                               ; preds = %21, %5
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 6
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  %36 = icmp ne %struct.TYPE_18__* %35, null
  br i1 %36, label %37, label %86

37:                                               ; preds = %32
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 6
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %37
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 6
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @krb5_init_creds_set_password(i32 %45, %struct.TYPE_20__* %46, i64 %51)
  store i64 %52, i64* %13, align 8
  %53 = load i64, i64* %13, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  br label %354

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %56, %37
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 6
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 7
  store i32* %62, i32** %64, align 8
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 6
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 6
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 8
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 6
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  br label %89

86:                                               ; preds = %32
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 0
  store i32 128, i32* %88, align 8
  br label %89

89:                                               ; preds = %86, %57
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 7
  %92 = load i32*, i32** %91, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load i32*, i32** @default_s2k_func, align 8
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 7
  store i32* %95, i32** %97, align 8
  br label %98

98:                                               ; preds = %94, %89
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @KRB5_INIT_CREDS_CANONICALIZE, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %98
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %8, align 4
  %108 = call i64 @krb5_principal_get_type(i32 %106, i32 %107)
  %109 = load i64, i64* @KRB5_NT_ENTERPRISE_PRINCIPAL, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %105, %98
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  store i32 1, i32* %114, align 8
  br label %115

115:                                              ; preds = %111, %105
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 3
  store i32* null, i32** %117, align 8
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 5
  store i32* null, i32** %119, align 8
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 4
  store i32* null, i32** %121, align 8
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 3
  store i32* null, i32** %123, align 8
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 6
  %127 = load i32, i32* %8, align 4
  %128 = load i64, i64* %9, align 8
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %130 = call i64 @init_cred(i32 %124, %struct.TYPE_16__* %126, i32 %127, i64 %128, %struct.TYPE_21__* %129)
  store i64 %130, i64* %13, align 8
  %131 = load i64, i64* %13, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %115
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %135 = icmp ne %struct.TYPE_21__* %134, null
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load i32, i32* %7, align 4
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %139 = call i32 @krb5_get_init_creds_opt_free(i32 %137, %struct.TYPE_21__* %138)
  br label %140

140:                                              ; preds = %136, %133
  %141 = load i64, i64* %13, align 8
  store i64 %141, i64* %6, align 8
  br label %363

142:                                              ; preds = %115
  %143 = load i32, i32* %7, align 4
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %145 = call i64 @krb5_init_creds_set_service(i32 %143, %struct.TYPE_20__* %144, i32* null)
  store i64 %145, i64* %13, align 8
  %146 = load i64, i64* %13, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %142
  br label %354

149:                                              ; preds = %142
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @KRB5_GET_INIT_CREDS_OPT_FORWARDABLE, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %149
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 9
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 5
  store i32 %159, i32* %162, align 4
  br label %163

163:                                              ; preds = %156, %149
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @KRB5_GET_INIT_CREDS_OPT_PROXIABLE, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %163
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 8
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 4
  store i32 %173, i32* %176, align 8
  br label %177

177:                                              ; preds = %170, %163
  %178 = load i64, i64* %9, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %177
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 1
  store i32 1, i32* %183, align 4
  br label %184

184:                                              ; preds = %180, %177
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 6
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %184
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 2
  store i32 1, i32* %194, align 8
  br label %195

195:                                              ; preds = %191, %184
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @KRB5_GET_INIT_CREDS_OPT_ADDRESS_LIST, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %195
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i32 0, i32 7
  %205 = load i32*, i32** %204, align 8
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %206, i32 0, i32 5
  store i32* %205, i32** %207, align 8
  br label %230

208:                                              ; preds = %195
  %209 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %209, i32 0, i32 6
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %210, align 8
  %212 = icmp ne %struct.TYPE_18__* %211, null
  br i1 %212, label %213, label %229

213:                                              ; preds = %208
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %214, i32 0, i32 6
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  switch i32 %218, label %228 [
    i32 128, label %219
    i32 130, label %222
    i32 129, label %225
  ]

219:                                              ; preds = %213
  %220 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %220, i32 0, i32 5
  store i32* @no_addrs, i32** %221, align 8
  br label %228

222:                                              ; preds = %213
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 5
  store i32* null, i32** %224, align 8
  br label %228

225:                                              ; preds = %213
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i32 0, i32 5
  store i32* @no_addrs, i32** %227, align 8
  br label %228

228:                                              ; preds = %213, %225, %222, %219
  br label %229

229:                                              ; preds = %228, %208
  br label %230

230:                                              ; preds = %229, %202
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @KRB5_GET_INIT_CREDS_OPT_ETYPE_LIST, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %286

237:                                              ; preds = %230
  %238 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 4
  %240 = load i32*, i32** %239, align 8
  %241 = icmp ne i32* %240, null
  br i1 %241, label %242, label %247

242:                                              ; preds = %237
  %243 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %244 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %243, i32 0, i32 4
  %245 = load i32*, i32** %244, align 8
  %246 = call i32 @free(i32* %245)
  br label %247

247:                                              ; preds = %242, %237
  %248 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = add nsw i32 %250, 1
  %252 = sext i32 %251 to i64
  %253 = mul i64 %252, 4
  %254 = trunc i64 %253 to i32
  %255 = call i32* @malloc(i32 %254)
  store i32* %255, i32** %14, align 8
  %256 = load i32*, i32** %14, align 8
  %257 = icmp eq i32* %256, null
  br i1 %257, label %258, label %264

258:                                              ; preds = %247
  %259 = load i64, i64* @ENOMEM, align 8
  store i64 %259, i64* %13, align 8
  %260 = load i32, i32* %7, align 4
  %261 = load i64, i64* %13, align 8
  %262 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %263 = call i32 @krb5_set_error_message(i32 %260, i64 %261, i32 %262)
  br label %354

264:                                              ; preds = %247
  %265 = load i32*, i32** %14, align 8
  %266 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %267 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %266, i32 0, i32 5
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %270 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = sext i32 %271 to i64
  %273 = mul i64 %272, 4
  %274 = trunc i64 %273 to i32
  %275 = call i32 @memcpy(i32* %265, i32 %268, i32 %274)
  %276 = load i32, i32* @ETYPE_NULL, align 4
  %277 = load i32*, i32** %14, align 8
  %278 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %279 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %277, i64 %281
  store i32 %276, i32* %282, align 4
  %283 = load i32*, i32** %14, align 8
  %284 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %285 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %284, i32 0, i32 4
  store i32* %283, i32** %285, align 8
  br label %286

286:                                              ; preds = %264, %230
  %287 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %288 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* @KRB5_GET_INIT_CREDS_OPT_PREAUTH_LIST, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %332

293:                                              ; preds = %286
  %294 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %295 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = add nsw i32 %296, 1
  %298 = sext i32 %297 to i64
  %299 = mul i64 %298, 4
  %300 = trunc i64 %299 to i32
  %301 = call i32* @malloc(i32 %300)
  store i32* %301, i32** %15, align 8
  %302 = load i32*, i32** %15, align 8
  %303 = icmp eq i32* %302, null
  br i1 %303, label %304, label %310

304:                                              ; preds = %293
  %305 = load i64, i64* @ENOMEM, align 8
  store i64 %305, i64* %13, align 8
  %306 = load i32, i32* %7, align 4
  %307 = load i64, i64* %13, align 8
  %308 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %309 = call i32 @krb5_set_error_message(i32 %306, i64 %307, i32 %308)
  br label %354

310:                                              ; preds = %293
  %311 = load i32*, i32** %15, align 8
  %312 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %313 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %312, i32 0, i32 4
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %316 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 8
  %318 = sext i32 %317 to i64
  %319 = mul i64 %318, 4
  %320 = trunc i64 %319 to i32
  %321 = call i32 @memcpy(i32* %311, i32 %314, i32 %320)
  %322 = load i32, i32* @KRB5_PADATA_NONE, align 4
  %323 = load i32*, i32** %15, align 8
  %324 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %325 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 8
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %323, i64 %327
  store i32 %322, i32* %328, align 4
  %329 = load i32*, i32** %15, align 8
  %330 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %331 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %330, i32 0, i32 3
  store i32* %329, i32** %331, align 8
  br label %332

332:                                              ; preds = %310, %286
  %333 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %334 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* @KRB5_GET_INIT_CREDS_OPT_ANONYMOUS, align 4
  %337 = and i32 %335, %336
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %346

339:                                              ; preds = %332
  %340 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %341 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %340, i32 0, i32 3
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %344 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %343, i32 0, i32 2
  %345 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %344, i32 0, i32 3
  store i32 %342, i32* %345, align 4
  br label %346

346:                                              ; preds = %339, %332
  %347 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %348 = icmp ne %struct.TYPE_21__* %347, null
  br i1 %348, label %349, label %353

349:                                              ; preds = %346
  %350 = load i32, i32* %7, align 4
  %351 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %352 = call i32 @krb5_get_init_creds_opt_free(i32 %350, %struct.TYPE_21__* %351)
  br label %353

353:                                              ; preds = %349, %346
  store i64 0, i64* %6, align 8
  br label %363

354:                                              ; preds = %304, %258, %148, %55
  %355 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %356 = icmp ne %struct.TYPE_21__* %355, null
  br i1 %356, label %357, label %361

357:                                              ; preds = %354
  %358 = load i32, i32* %7, align 4
  %359 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %360 = call i32 @krb5_get_init_creds_opt_free(i32 %358, %struct.TYPE_21__* %359)
  br label %361

361:                                              ; preds = %357, %354
  %362 = load i64, i64* %13, align 8
  store i64 %362, i64* %6, align 8
  br label %363

363:                                              ; preds = %361, %353, %140
  %364 = load i64, i64* %6, align 8
  ret i64 %364
}

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i8* @krb5_principal_get_realm(i32, i32) #1

declare dso_local i32 @krb5_get_init_creds_opt_alloc(i32, %struct.TYPE_21__**) #1

declare dso_local i32 @krb5_get_init_creds_opt_set_default_flags(i32, i32*, i8*, %struct.TYPE_21__*) #1

declare dso_local i64 @krb5_init_creds_set_password(i32, %struct.TYPE_20__*, i64) #1

declare dso_local i64 @krb5_principal_get_type(i32, i32) #1

declare dso_local i64 @init_cred(i32, %struct.TYPE_16__*, i32, i64, %struct.TYPE_21__*) #1

declare dso_local i32 @krb5_get_init_creds_opt_free(i32, %struct.TYPE_21__*) #1

declare dso_local i64 @krb5_init_creds_set_service(i32, %struct.TYPE_20__*, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i32) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
