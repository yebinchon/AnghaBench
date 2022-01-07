; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_tls_srp.c_SSL_SRP_CTX_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_tls_srp.c_SSL_SRP_CTX_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssl_st = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32 }

@SSL_F_SSL_SRP_CTX_INIT = common dso_local global i32 0, align 4
@ERR_R_BN_LIB = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SSL_SRP_CTX_init(%struct.ssl_st* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssl_st*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store %struct.ssl_st* %0, %struct.ssl_st** %3, align 8
  %5 = load %struct.ssl_st*, %struct.ssl_st** %3, align 8
  %6 = icmp eq %struct.ssl_st* %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct.ssl_st*, %struct.ssl_st** %3, align 8
  %9 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %4, align 8
  %11 = icmp eq %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %1
  store i32 0, i32* %2, align 4
  br label %293

13:                                               ; preds = %7
  %14 = load %struct.ssl_st*, %struct.ssl_st** %3, align 8
  %15 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %14, i32 0, i32 0
  %16 = call i32 @memset(%struct.TYPE_6__* %15, i32 0, i32 104)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 15
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ssl_st*, %struct.ssl_st** %3, align 8
  %22 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 15
  store i32 %20, i32* %23, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 14
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ssl_st*, %struct.ssl_st** %3, align 8
  %29 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 14
  store i32 %27, i32* %30, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 13
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ssl_st*, %struct.ssl_st** %3, align 8
  %36 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 13
  store i32 %34, i32* %37, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 12
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ssl_st*, %struct.ssl_st** %3, align 8
  %43 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 12
  store i32 %41, i32* %44, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 11
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ssl_st*, %struct.ssl_st** %3, align 8
  %50 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 11
  store i32 %48, i32* %51, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 10
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %13
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 10
  %61 = load i32*, i32** %60, align 8
  %62 = call i8* @BN_dup(i32* %61)
  %63 = bitcast i8* %62 to i32*
  %64 = load %struct.ssl_st*, %struct.ssl_st** %3, align 8
  %65 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 7
  store i32* %63, i32** %66, align 8
  %67 = icmp eq i32* %63, null
  br i1 %67, label %187, label %68

68:                                               ; preds = %57, %13
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 9
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %85

74:                                               ; preds = %68
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 9
  %78 = load i32*, i32** %77, align 8
  %79 = call i8* @BN_dup(i32* %78)
  %80 = bitcast i8* %79 to i32*
  %81 = load %struct.ssl_st*, %struct.ssl_st** %3, align 8
  %82 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 6
  store i32* %80, i32** %83, align 8
  %84 = icmp eq i32* %80, null
  br i1 %84, label %187, label %85

85:                                               ; preds = %74, %68
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 8
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %102

91:                                               ; preds = %85
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 8
  %95 = load i32*, i32** %94, align 8
  %96 = call i8* @BN_dup(i32* %95)
  %97 = bitcast i8* %96 to i32*
  %98 = load %struct.ssl_st*, %struct.ssl_st** %3, align 8
  %99 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 5
  store i32* %97, i32** %100, align 8
  %101 = icmp eq i32* %97, null
  br i1 %101, label %187, label %102

102:                                              ; preds = %91, %85
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 7
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %119

108:                                              ; preds = %102
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 7
  %112 = load i32*, i32** %111, align 8
  %113 = call i8* @BN_dup(i32* %112)
  %114 = bitcast i8* %113 to i32*
  %115 = load %struct.ssl_st*, %struct.ssl_st** %3, align 8
  %116 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 4
  store i32* %114, i32** %117, align 8
  %118 = icmp eq i32* %114, null
  br i1 %118, label %187, label %119

119:                                              ; preds = %108, %102
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 6
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %136

125:                                              ; preds = %119
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 6
  %129 = load i32*, i32** %128, align 8
  %130 = call i8* @BN_dup(i32* %129)
  %131 = bitcast i8* %130 to i32*
  %132 = load %struct.ssl_st*, %struct.ssl_st** %3, align 8
  %133 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 3
  store i32* %131, i32** %134, align 8
  %135 = icmp eq i32* %131, null
  br i1 %135, label %187, label %136

136:                                              ; preds = %125, %119
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 5
  %140 = load i32*, i32** %139, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %153

142:                                              ; preds = %136
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 5
  %146 = load i32*, i32** %145, align 8
  %147 = call i8* @BN_dup(i32* %146)
  %148 = bitcast i8* %147 to i32*
  %149 = load %struct.ssl_st*, %struct.ssl_st** %3, align 8
  %150 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 2
  store i32* %148, i32** %151, align 8
  %152 = icmp eq i32* %148, null
  br i1 %152, label %187, label %153

153:                                              ; preds = %142, %136
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 4
  %157 = load i32*, i32** %156, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %170

159:                                              ; preds = %153
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 4
  %163 = load i32*, i32** %162, align 8
  %164 = call i8* @BN_dup(i32* %163)
  %165 = bitcast i8* %164 to i32*
  %166 = load %struct.ssl_st*, %struct.ssl_st** %3, align 8
  %167 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  store i32* %165, i32** %168, align 8
  %169 = icmp eq i32* %165, null
  br i1 %169, label %187, label %170

170:                                              ; preds = %159, %153
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 3
  %174 = load i32*, i32** %173, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %191

176:                                              ; preds = %170
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 3
  %180 = load i32*, i32** %179, align 8
  %181 = call i8* @BN_dup(i32* %180)
  %182 = bitcast i8* %181 to i32*
  %183 = load %struct.ssl_st*, %struct.ssl_st** %3, align 8
  %184 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 1
  store i32* %182, i32** %185, align 8
  %186 = icmp eq i32* %182, null
  br i1 %186, label %187, label %191

187:                                              ; preds = %176, %159, %142, %125, %108, %91, %74, %57
  %188 = load i32, i32* @SSL_F_SSL_SRP_CTX_INIT, align 4
  %189 = load i32, i32* @ERR_R_BN_LIB, align 4
  %190 = call i32 @SSLerr(i32 %188, i32 %189)
  br label %239

191:                                              ; preds = %176, %170
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 2
  %195 = load i32*, i32** %194, align 8
  %196 = icmp ne i32* %195, null
  br i1 %196, label %197, label %211

197:                                              ; preds = %191
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 2
  %201 = load i32*, i32** %200, align 8
  %202 = call i32* @OPENSSL_strdup(i32* %201)
  %203 = load %struct.ssl_st*, %struct.ssl_st** %3, align 8
  %204 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 9
  store i32* %202, i32** %205, align 8
  %206 = icmp eq i32* %202, null
  br i1 %206, label %207, label %211

207:                                              ; preds = %197
  %208 = load i32, i32* @SSL_F_SSL_SRP_CTX_INIT, align 4
  %209 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %210 = call i32 @SSLerr(i32 %208, i32 %209)
  br label %239

211:                                              ; preds = %197, %191
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 1
  %215 = load i32*, i32** %214, align 8
  %216 = icmp ne i32* %215, null
  br i1 %216, label %217, label %231

217:                                              ; preds = %211
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = call i32* @BUF_strdup(i32* %221)
  %223 = load %struct.ssl_st*, %struct.ssl_st** %3, align 8
  %224 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 8
  store i32* %222, i32** %225, align 8
  %226 = icmp eq i32* %222, null
  br i1 %226, label %227, label %231

227:                                              ; preds = %217
  %228 = load i32, i32* @SSL_F_SSL_SRP_CTX_INIT, align 4
  %229 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %230 = call i32 @SSLerr(i32 %228, i32 %229)
  br label %239

231:                                              ; preds = %217, %211
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.ssl_st*, %struct.ssl_st** %3, align 8
  %237 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 10
  store i32 %235, i32* %238, align 8
  store i32 1, i32* %2, align 4
  br label %293

239:                                              ; preds = %227, %207, %187
  %240 = load %struct.ssl_st*, %struct.ssl_st** %3, align 8
  %241 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 9
  %243 = load i32*, i32** %242, align 8
  %244 = call i32 @OPENSSL_free(i32* %243)
  %245 = load %struct.ssl_st*, %struct.ssl_st** %3, align 8
  %246 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 8
  %248 = load i32*, i32** %247, align 8
  %249 = call i32 @OPENSSL_free(i32* %248)
  %250 = load %struct.ssl_st*, %struct.ssl_st** %3, align 8
  %251 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 7
  %253 = load i32*, i32** %252, align 8
  %254 = call i32 @BN_free(i32* %253)
  %255 = load %struct.ssl_st*, %struct.ssl_st** %3, align 8
  %256 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 6
  %258 = load i32*, i32** %257, align 8
  %259 = call i32 @BN_free(i32* %258)
  %260 = load %struct.ssl_st*, %struct.ssl_st** %3, align 8
  %261 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 5
  %263 = load i32*, i32** %262, align 8
  %264 = call i32 @BN_free(i32* %263)
  %265 = load %struct.ssl_st*, %struct.ssl_st** %3, align 8
  %266 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 4
  %268 = load i32*, i32** %267, align 8
  %269 = call i32 @BN_free(i32* %268)
  %270 = load %struct.ssl_st*, %struct.ssl_st** %3, align 8
  %271 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 3
  %273 = load i32*, i32** %272, align 8
  %274 = call i32 @BN_free(i32* %273)
  %275 = load %struct.ssl_st*, %struct.ssl_st** %3, align 8
  %276 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 2
  %278 = load i32*, i32** %277, align 8
  %279 = call i32 @BN_free(i32* %278)
  %280 = load %struct.ssl_st*, %struct.ssl_st** %3, align 8
  %281 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 1
  %283 = load i32*, i32** %282, align 8
  %284 = call i32 @BN_free(i32* %283)
  %285 = load %struct.ssl_st*, %struct.ssl_st** %3, align 8
  %286 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i32 0, i32 0
  %288 = load i32*, i32** %287, align 8
  %289 = call i32 @BN_free(i32* %288)
  %290 = load %struct.ssl_st*, %struct.ssl_st** %3, align 8
  %291 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %290, i32 0, i32 0
  %292 = call i32 @memset(%struct.TYPE_6__* %291, i32 0, i32 104)
  store i32 0, i32* %2, align 4
  br label %293

293:                                              ; preds = %239, %231, %12
  %294 = load i32, i32* %2, align 4
  ret i32 %294
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i8* @BN_dup(i32*) #1

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i32* @OPENSSL_strdup(i32*) #1

declare dso_local i32* @BUF_strdup(i32*) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
