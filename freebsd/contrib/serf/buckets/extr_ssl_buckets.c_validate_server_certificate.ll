; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_ssl_buckets.c_validate_server_certificate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_ssl_buckets.c_validate_server_certificate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8* (i32, i32, %struct.TYPE_7__*)*, i8* (i32, i32, i32, %struct.TYPE_7__**, i32)*, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@X509 = common dso_local global i32 0, align 4
@server_cert = common dso_local global i32 0, align 4
@SERF_SSL_CERT_NOTYETVALID = common dso_local global i32 0, align 4
@SERF_SSL_CERT_EXPIRED = common dso_local global i32 0, align 4
@SERF_SSL_CERT_SELF_SIGNED = common dso_local global i32 0, align 4
@SERF_SSL_CERT_UNKNOWNCA = common dso_local global i32 0, align 4
@SERF_SSL_CERT_REVOKED = common dso_local global i32 0, align 4
@SERF_SSL_CERT_UNKNOWN_FAILURE = common dso_local global i32 0, align 4
@APR_SUCCESS = common dso_local global i8* null, align 8
@chain = common dso_local global i32 0, align 4
@SERF_ERROR_SSL_CERT_FAILED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @validate_server_certificate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_server_certificate(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_7__**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %19 = load i32, i32* @X509, align 4
  %20 = load i32, i32* @server_cert, align 4
  %21 = mul nsw i32 %19, %20
  store i32 0, i32* %9, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 (...) @SSL_get_ex_data_X509_STORE_CTX_idx()
  %24 = call i32* @X509_STORE_CTX_get_ex_data(i32* %22, i32 %23)
  store i32* %24, i32** %5, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call %struct.TYPE_6__* @SSL_get_app_data(i32* %25)
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %6, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @X509_STORE_CTX_get_current_cert(i32* %27)
  store i32 %28, i32* @server_cert, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @X509_STORE_CTX_get_error_depth(i32* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %62, label %33

33:                                               ; preds = %2
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @X509_STORE_CTX_get_error(i32* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  switch i32 %36, label %57 [
    i32 136, label %37
    i32 137, label %41
    i32 133, label %45
    i32 131, label %45
    i32 129, label %49
    i32 130, label %49
    i32 134, label %49
    i32 132, label %49
    i32 128, label %49
    i32 135, label %53
  ]

37:                                               ; preds = %33
  %38 = load i32, i32* @SERF_SSL_CERT_NOTYETVALID, align 4
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %9, align 4
  br label %61

41:                                               ; preds = %33
  %42 = load i32, i32* @SERF_SSL_CERT_EXPIRED, align 4
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %9, align 4
  br label %61

45:                                               ; preds = %33, %33
  %46 = load i32, i32* @SERF_SSL_CERT_SELF_SIGNED, align 4
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %9, align 4
  br label %61

49:                                               ; preds = %33, %33, %33, %33, %33
  %50 = load i32, i32* @SERF_SSL_CERT_UNKNOWNCA, align 4
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  br label %61

53:                                               ; preds = %33
  %54 = load i32, i32* @SERF_SSL_CERT_REVOKED, align 4
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %9, align 4
  br label %61

57:                                               ; preds = %33
  %58 = load i32, i32* @SERF_SSL_CERT_UNKNOWN_FAILURE, align 4
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %57, %53, %49, %45, %41, %37
  br label %62

62:                                               ; preds = %61, %2
  %63 = load i32, i32* @server_cert, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @validate_cert_hostname(i32 %63, i32 %66)
  store i8* %67, i8** %10, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = load i32, i32* @SERF_SSL_CERT_UNKNOWN_FAILURE, align 4
  %72 = load i32, i32* %9, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %70, %62
  %75 = load i32, i32* @server_cert, align 4
  %76 = call i32 @X509_get_notBefore(i32 %75)
  %77 = call i64 @X509_cmp_current_time(i32 %76)
  %78 = icmp sge i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* @SERF_SSL_CERT_NOTYETVALID, align 4
  %81 = load i32, i32* %9, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %9, align 4
  br label %93

83:                                               ; preds = %74
  %84 = load i32, i32* @server_cert, align 4
  %85 = call i32 @X509_get_notAfter(i32 %84)
  %86 = call i64 @X509_cmp_current_time(i32 %85)
  %87 = icmp sle i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load i32, i32* @SERF_SSL_CERT_EXPIRED, align 4
  %90 = load i32, i32* %9, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %88, %83
  br label %93

93:                                               ; preds = %92, %79
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i8* (i32, i32, %struct.TYPE_7__*)*, i8* (i32, i32, %struct.TYPE_7__*)** %95, align 8
  %97 = icmp ne i8* (i32, i32, %struct.TYPE_7__*)* %96, null
  br i1 %97, label %98, label %138

98:                                               ; preds = %93
  %99 = load i32, i32* %8, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %138

104:                                              ; preds = %101, %98
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @apr_pool_create(i32** %12, i32 %107)
  %109 = load i32*, i32** %12, align 8
  %110 = call i8* @apr_palloc(i32* %109, i32 8)
  %111 = bitcast i8* %110 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %111, %struct.TYPE_7__** %11, align 8
  %112 = load i32, i32* @server_cert, align 4
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i8* (i32, i32, %struct.TYPE_7__*)*, i8* (i32, i32, %struct.TYPE_7__*)** %119, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %126 = call i8* %120(i32 %123, i32 %124, %struct.TYPE_7__* %125)
  store i8* %126, i8** %10, align 8
  %127 = load i8*, i8** %10, align 8
  %128 = load i8*, i8** @APR_SUCCESS, align 8
  %129 = icmp eq i8* %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %104
  store i32 1, i32* %3, align 4
  br label %135

131:                                              ; preds = %104
  store i32 0, i32* %3, align 4
  %132 = load i8*, i8** %10, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  store i8* %132, i8** %134, align 8
  br label %135

135:                                              ; preds = %131, %130
  %136 = load i32*, i32** %12, align 8
  %137 = call i32 @apr_pool_destroy(i32* %136)
  br label %138

138:                                              ; preds = %135, %101, %93
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 2
  %141 = load i8* (i32, i32, i32, %struct.TYPE_7__**, i32)*, i8* (i32, i32, i32, %struct.TYPE_7__**, i32)** %140, align 8
  %142 = icmp ne i8* (i32, i32, i32, %struct.TYPE_7__**, i32)* %141, null
  br i1 %142, label %143, label %241

143:                                              ; preds = %138
  %144 = load i32, i32* %8, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  %147 = load i32, i32* %9, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %241

149:                                              ; preds = %146, %143
  %150 = load i32, i32* @X509, align 4
  %151 = call i32 @STACK_OF(i32 %150)
  %152 = load i32, i32* @chain, align 4
  %153 = mul nsw i32 %151, %152
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @apr_pool_create(i32** %15, i32 %156)
  %158 = load i32*, i32** %4, align 8
  %159 = call i32 @X509_STORE_CTX_get_chain(i32* %158)
  store i32 %159, i32* @chain, align 4
  %160 = load i32, i32* @chain, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %178, label %162

162:                                              ; preds = %149
  %163 = load i32*, i32** %15, align 8
  %164 = call i8* @apr_palloc(i32* %163, i32 8)
  %165 = bitcast i8* %164 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %165, %struct.TYPE_7__** %16, align 8
  %166 = load i32, i32* @server_cert, align 4
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  %169 = load i32, i32* %8, align 4
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 4
  %172 = load i32*, i32** %15, align 8
  %173 = call i8* @apr_palloc(i32* %172, i32 16)
  %174 = bitcast i8* %173 to %struct.TYPE_7__**
  store %struct.TYPE_7__** %174, %struct.TYPE_7__*** %13, align 8
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %176 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %176, i64 0
  store %struct.TYPE_7__* %175, %struct.TYPE_7__** %177, align 8
  store i32 1, i32* %14, align 4
  br label %214

178:                                              ; preds = %149
  %179 = load i32, i32* @chain, align 4
  %180 = call i32 @sk_X509_num(i32 %179)
  store i32 %180, i32* %14, align 4
  %181 = load i32*, i32** %15, align 8
  %182 = load i32, i32* %14, align 4
  %183 = add nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = mul i64 8, %184
  %186 = trunc i64 %185 to i32
  %187 = call i8* @apr_palloc(i32* %181, i32 %186)
  %188 = bitcast i8* %187 to %struct.TYPE_7__**
  store %struct.TYPE_7__** %188, %struct.TYPE_7__*** %13, align 8
  store i32 0, i32* %17, align 4
  br label %189

189:                                              ; preds = %210, %178
  %190 = load i32, i32* %17, align 4
  %191 = load i32, i32* %14, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %213

193:                                              ; preds = %189
  %194 = load i32*, i32** %15, align 8
  %195 = call i8* @apr_palloc(i32* %194, i32 8)
  %196 = bitcast i8* %195 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %196, %struct.TYPE_7__** %18, align 8
  %197 = load i32, i32* @chain, align 4
  %198 = load i32, i32* %17, align 4
  %199 = call i32 @sk_X509_value(i32 %197, i32 %198)
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 4
  %202 = load i32, i32* %17, align 4
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 0
  store i32 %202, i32* %204, align 4
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %206 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %13, align 8
  %207 = load i32, i32* %17, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %206, i64 %208
  store %struct.TYPE_7__* %205, %struct.TYPE_7__** %209, align 8
  br label %210

210:                                              ; preds = %193
  %211 = load i32, i32* %17, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %17, align 4
  br label %189

213:                                              ; preds = %189
  br label %214

214:                                              ; preds = %213, %162
  %215 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %13, align 8
  %216 = load i32, i32* %14, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %215, i64 %217
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %218, align 8
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 2
  %221 = load i8* (i32, i32, i32, %struct.TYPE_7__**, i32)*, i8* (i32, i32, i32, %struct.TYPE_7__**, i32)** %220, align 8
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* %9, align 4
  %226 = load i32, i32* %8, align 4
  %227 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %13, align 8
  %228 = load i32, i32* %14, align 4
  %229 = call i8* %221(i32 %224, i32 %225, i32 %226, %struct.TYPE_7__** %227, i32 %228)
  store i8* %229, i8** %10, align 8
  %230 = load i8*, i8** %10, align 8
  %231 = load i8*, i8** @APR_SUCCESS, align 8
  %232 = icmp eq i8* %230, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %214
  store i32 1, i32* %3, align 4
  br label %238

234:                                              ; preds = %214
  store i32 0, i32* %3, align 4
  %235 = load i8*, i8** %10, align 8
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 0
  store i8* %235, i8** %237, align 8
  br label %238

238:                                              ; preds = %234, %233
  %239 = load i32*, i32** %15, align 8
  %240 = call i32 @apr_pool_destroy(i32* %239)
  br label %241

241:                                              ; preds = %238, %146, %138
  %242 = load i32, i32* %3, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %258, label %244

244:                                              ; preds = %241
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 2
  %247 = load i8* (i32, i32, i32, %struct.TYPE_7__**, i32)*, i8* (i32, i32, i32, %struct.TYPE_7__**, i32)** %246, align 8
  %248 = icmp ne i8* (i32, i32, i32, %struct.TYPE_7__**, i32)* %247, null
  br i1 %248, label %258, label %249

249:                                              ; preds = %244
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 1
  %252 = load i8* (i32, i32, %struct.TYPE_7__*)*, i8* (i32, i32, %struct.TYPE_7__*)** %251, align 8
  %253 = icmp ne i8* (i32, i32, %struct.TYPE_7__*)* %252, null
  br i1 %253, label %258, label %254

254:                                              ; preds = %249
  %255 = load i8*, i8** @SERF_ERROR_SSL_CERT_FAILED, align 8
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 0
  store i8* %255, i8** %257, align 8
  br label %258

258:                                              ; preds = %254, %249, %244, %241
  %259 = load i32, i32* %3, align 4
  ret i32 %259
}

declare dso_local i32* @X509_STORE_CTX_get_ex_data(i32*, i32) #1

declare dso_local i32 @SSL_get_ex_data_X509_STORE_CTX_idx(...) #1

declare dso_local %struct.TYPE_6__* @SSL_get_app_data(i32*) #1

declare dso_local i32 @X509_STORE_CTX_get_current_cert(i32*) #1

declare dso_local i32 @X509_STORE_CTX_get_error_depth(i32*) #1

declare dso_local i32 @X509_STORE_CTX_get_error(i32*) #1

declare dso_local i8* @validate_cert_hostname(i32, i32) #1

declare dso_local i64 @X509_cmp_current_time(i32) #1

declare dso_local i32 @X509_get_notBefore(i32) #1

declare dso_local i32 @X509_get_notAfter(i32) #1

declare dso_local i32 @apr_pool_create(i32**, i32) #1

declare dso_local i8* @apr_palloc(i32*, i32) #1

declare dso_local i32 @apr_pool_destroy(i32*) #1

declare dso_local i32 @STACK_OF(i32) #1

declare dso_local i32 @X509_STORE_CTX_get_chain(i32*) #1

declare dso_local i32 @sk_X509_num(i32) #1

declare dso_local i32 @sk_X509_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
