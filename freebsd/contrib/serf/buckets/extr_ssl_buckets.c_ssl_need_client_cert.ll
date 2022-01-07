; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_ssl_buckets.c_ssl_need_client_cert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_ssl_buckets.c_ssl_need_client_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i64, i64, i32*, i32*, i32, i32 (i32, i8*, i8**)*, i32, i32, i32 (i32, i8**)* }

@APR_SUCCESS = common dso_local global i32 0, align 4
@APR_READ = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"serf:ssl:cert\00", align 1
@apr_pool_cleanup_null = common dso_local global i32 0, align 4
@ERR_LIB_PKCS12 = common dso_local global i64 0, align 8
@PKCS12_R_MAC_VERIFY_FAILURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"serf:ssl:certpw\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"OpenSSL cert error: %d %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**, i32**)* @ssl_need_client_cert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_need_client_cert(i32* %0, i32** %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32** %2, i32*** %7, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call %struct.TYPE_3__* @SSL_get_app_data(i32* %22)
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %8, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 6
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %3
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 6
  %31 = load i32*, i32** %30, align 8
  %32 = load i32**, i32*** %6, align 8
  store i32* %31, i32** %32, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 5
  %35 = load i32*, i32** %34, align 8
  %36 = load i32**, i32*** %7, align 8
  store i32* %35, i32** %36, align 8
  store i32 1, i32* %4, align 4
  br label %269

37:                                               ; preds = %3
  br label %38

38:                                               ; preds = %267, %80, %37
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 11
  %41 = load i32 (i32, i8**)*, i32 (i32, i8**)** %40, align 8
  %42 = icmp ne i32 (i32, i8**)* %41, null
  br i1 %42, label %43, label %268

43:                                               ; preds = %38
  store i32 0, i32* %16, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %49, i32* %9, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %10, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i8* null, i8** %54, align 8
  store i32 1, i32* %16, align 4
  br label %63

55:                                               ; preds = %43
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 11
  %58 = load i32 (i32, i8**)*, i32 (i32, i8**)** %57, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 10
  %61 = load i32, i32* %60, align 4
  %62 = call i32 %58(i32 %61, i8** %10)
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %55, %48
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i8*, i8** %10, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %66, %63
  br label %268

70:                                               ; preds = %66
  %71 = load i8*, i8** %10, align 8
  %72 = load i32, i32* @APR_READ, align 4
  %73 = load i32, i32* @APR_OS_DEFAULT, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 9
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @apr_file_open(i32** %11, i8* %71, i32 %72, i32 %73, i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  br label %38

81:                                               ; preds = %70
  %82 = call i32* (...) @bio_meth_file_new()
  store i32* %82, i32** %13, align 8
  %83 = load i32*, i32** %13, align 8
  %84 = call i32* @BIO_new(i32* %83)
  store i32* %84, i32** %12, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = call i32 @bio_set_data(i32* %85, i32* %86)
  %88 = load i8*, i8** %10, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  %91 = load i32*, i32** %12, align 8
  %92 = call i32* @d2i_PKCS12_bio(i32* %91, i32* null)
  store i32* %92, i32** %14, align 8
  %93 = load i32*, i32** %11, align 8
  %94 = call i32 @apr_file_close(i32* %93)
  %95 = load i32*, i32** %14, align 8
  %96 = load i32**, i32*** %7, align 8
  %97 = load i32**, i32*** %6, align 8
  %98 = call i32 @PKCS12_parse(i32* %95, i8* null, i32** %96, i32** %97, i32* null)
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %15, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %136

101:                                              ; preds = %81
  %102 = load i32*, i32** %14, align 8
  %103 = call i32 @PKCS12_free(i32* %102)
  %104 = load i32*, i32** %13, align 8
  %105 = call i32 @bio_meth_free(i32* %104)
  %106 = load i32**, i32*** %6, align 8
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 6
  store i32* %107, i32** %109, align 8
  %110 = load i32**, i32*** %7, align 8
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 5
  store i32* %111, i32** %113, align 8
  %114 = load i32, i32* %16, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %135, label %116

116:                                              ; preds = %101
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %116
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = call i8* @apr_pstrdup(i64 %124, i8* %127)
  store i8* %128, i8** %17, align 8
  %129 = load i8*, i8** %17, align 8
  %130 = load i32, i32* @apr_pool_cleanup_null, align 4
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @apr_pool_userdata_setn(i8* %129, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %130, i64 %133)
  br label %135

135:                                              ; preds = %121, %116, %101
  store i32 1, i32* %4, align 4
  br label %269

136:                                              ; preds = %81
  %137 = call i32 (...) @ERR_get_error()
  store i32 %137, i32* %18, align 4
  %138 = call i32 (...) @ERR_clear_error()
  %139 = load i32, i32* %18, align 4
  %140 = call i32 @ERR_GET_LIB(i32 %139)
  %141 = sext i32 %140 to i64
  %142 = load i64, i64* @ERR_LIB_PKCS12, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %254

144:                                              ; preds = %136
  %145 = load i32, i32* %18, align 4
  %146 = call i32 @ERR_GET_REASON(i32 %145)
  %147 = sext i32 %146 to i64
  %148 = load i64, i64* @PKCS12_R_MAC_VERIFY_FAILURE, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %254

150:                                              ; preds = %144
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 8
  %153 = load i32 (i32, i8*, i8**)*, i32 (i32, i8*, i8**)** %152, align 8
  %154 = icmp ne i32 (i32, i8*, i8**)* %153, null
  br i1 %154, label %155, label %249

155:                                              ; preds = %150
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 2
  %158 = load i8*, i8** %157, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %167

160:                                              ; preds = %155
  %161 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %161, i32* %9, align 4
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 2
  %164 = load i8*, i8** %163, align 8
  store i8* %164, i8** %19, align 8
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 2
  store i8* null, i8** %166, align 8
  br label %178

167:                                              ; preds = %155
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 8
  %170 = load i32 (i32, i8*, i8**)*, i32 (i32, i8*, i8**)** %169, align 8
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 7
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 1
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 %170(i32 %173, i8* %176, i8** %19)
  store i32 %177, i32* %9, align 4
  br label %178

178:                                              ; preds = %167, %160
  %179 = load i32, i32* %9, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %248, label %181

181:                                              ; preds = %178
  %182 = load i8*, i8** %19, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %248

184:                                              ; preds = %181
  %185 = load i32*, i32** %14, align 8
  %186 = load i8*, i8** %19, align 8
  %187 = load i32**, i32*** %7, align 8
  %188 = load i32**, i32*** %6, align 8
  %189 = call i32 @PKCS12_parse(i32* %185, i8* %186, i32** %187, i32** %188, i32* null)
  store i32 %189, i32* %15, align 4
  %190 = load i32, i32* %15, align 4
  %191 = icmp eq i32 %190, 1
  br i1 %191, label %192, label %247

192:                                              ; preds = %184
  %193 = load i32*, i32** %14, align 8
  %194 = call i32 @PKCS12_free(i32* %193)
  %195 = load i32*, i32** %13, align 8
  %196 = call i32 @bio_meth_free(i32* %195)
  %197 = load i32**, i32*** %6, align 8
  %198 = load i32*, i32** %197, align 8
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 6
  store i32* %198, i32** %200, align 8
  %201 = load i32**, i32*** %7, align 8
  %202 = load i32*, i32** %201, align 8
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 5
  store i32* %202, i32** %204, align 8
  %205 = load i32, i32* %16, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %226, label %207

207:                                              ; preds = %192
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 4
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %226

212:                                              ; preds = %207
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 4
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 1
  %218 = load i8*, i8** %217, align 8
  %219 = call i8* @apr_pstrdup(i64 %215, i8* %218)
  store i8* %219, i8** %20, align 8
  %220 = load i8*, i8** %20, align 8
  %221 = load i32, i32* @apr_pool_cleanup_null, align 4
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 4
  %224 = load i64, i64* %223, align 8
  %225 = call i32 @apr_pool_userdata_setn(i8* %220, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %221, i64 %224)
  br label %226

226:                                              ; preds = %212, %207, %192
  %227 = load i32, i32* %16, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %246, label %229

229:                                              ; preds = %226
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 3
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %246

234:                                              ; preds = %229
  %235 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 3
  %237 = load i64, i64* %236, align 8
  %238 = load i8*, i8** %19, align 8
  %239 = call i8* @apr_pstrdup(i64 %237, i8* %238)
  store i8* %239, i8** %21, align 8
  %240 = load i8*, i8** %21, align 8
  %241 = load i32, i32* @apr_pool_cleanup_null, align 4
  %242 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 3
  %244 = load i64, i64* %243, align 8
  %245 = call i32 @apr_pool_userdata_setn(i8* %240, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %241, i64 %244)
  br label %246

246:                                              ; preds = %234, %229, %226
  store i32 1, i32* %4, align 4
  br label %269

247:                                              ; preds = %184
  br label %248

248:                                              ; preds = %247, %181, %178
  br label %249

249:                                              ; preds = %248, %150
  %250 = load i32*, i32** %14, align 8
  %251 = call i32 @PKCS12_free(i32* %250)
  %252 = load i32*, i32** %13, align 8
  %253 = call i32 @bio_meth_free(i32* %252)
  store i32 0, i32* %4, align 4
  br label %269

254:                                              ; preds = %144, %136
  %255 = load i32, i32* %18, align 4
  %256 = call i32 @ERR_GET_LIB(i32 %255)
  %257 = load i32, i32* %18, align 4
  %258 = call i32 @ERR_GET_FUNC(i32 %257)
  %259 = load i32, i32* %18, align 4
  %260 = call i32 @ERR_GET_REASON(i32 %259)
  %261 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %256, i32 %258, i32 %260)
  %262 = load i32*, i32** %14, align 8
  %263 = call i32 @PKCS12_free(i32* %262)
  %264 = load i32*, i32** %13, align 8
  %265 = call i32 @bio_meth_free(i32* %264)
  br label %266

266:                                              ; preds = %254
  br label %267

267:                                              ; preds = %266
  br label %38

268:                                              ; preds = %69, %38
  store i32 0, i32* %4, align 4
  br label %269

269:                                              ; preds = %268, %249, %246, %135, %28
  %270 = load i32, i32* %4, align 4
  ret i32 %270
}

declare dso_local %struct.TYPE_3__* @SSL_get_app_data(i32*) #1

declare dso_local i32 @apr_file_open(i32**, i8*, i32, i32, i32) #1

declare dso_local i32* @bio_meth_file_new(...) #1

declare dso_local i32* @BIO_new(i32*) #1

declare dso_local i32 @bio_set_data(i32*, i32*) #1

declare dso_local i32* @d2i_PKCS12_bio(i32*, i32*) #1

declare dso_local i32 @apr_file_close(i32*) #1

declare dso_local i32 @PKCS12_parse(i32*, i8*, i32**, i32**, i32*) #1

declare dso_local i32 @PKCS12_free(i32*) #1

declare dso_local i32 @bio_meth_free(i32*) #1

declare dso_local i8* @apr_pstrdup(i64, i8*) #1

declare dso_local i32 @apr_pool_userdata_setn(i8*, i8*, i32, i64) #1

declare dso_local i32 @ERR_get_error(...) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32 @ERR_GET_LIB(i32) #1

declare dso_local i32 @ERR_GET_REASON(i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

declare dso_local i32 @ERR_GET_FUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
