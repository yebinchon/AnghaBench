; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions.c_final_server_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions.c_final_server_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, i32, %struct.TYPE_27__, %struct.TYPE_26__*, %struct.TYPE_26__*, %struct.TYPE_24__*, i64 }
%struct.TYPE_27__ = type { i64, i32* }
%struct.TYPE_26__ = type { %struct.TYPE_25__, %struct.TYPE_22__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_22__ = type { i32 (%struct.TYPE_30__*, i32*, i32)*, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32* }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i64, i64, i64, i32* }

@SSL_AD_UNRECOGNIZED_NAME = common dso_local global i32 0, align 4
@SSL_OP_NO_TICKET = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_FINAL_SERVER_NAME = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_TLSEXT_ERR_OK = common dso_local global i32 0, align 4
@SSL_R_CALLBACK_FAILED = common dso_local global i32 0, align 4
@SSL3_AL_WARNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_30__*, i32, i32)* @final_server_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @final_server_name(%struct.TYPE_30__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 128, i32* %8, align 4
  %12 = load i32, i32* @SSL_AD_UNRECOGNIZED_NAME, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %14 = call i32 @SSL_get_options(%struct.TYPE_30__* %13)
  %15 = load i32, i32* @SSL_OP_NO_TICKET, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %10, align 4
  %19 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %22 = icmp ne %struct.TYPE_26__* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @ossl_assert(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %3
  %27 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %28, align 8
  %30 = icmp ne %struct.TYPE_26__* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @ossl_assert(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %26, %3
  %35 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %36 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %37 = load i32, i32* @SSL_F_FINAL_SERVER_NAME, align 4
  %38 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %39 = call i32 @SSLfatal(%struct.TYPE_30__* %35, i32 %36, i32 %37, i32 %38)
  store i32 0, i32* %4, align 4
  br label %263

40:                                               ; preds = %26
  %41 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 0
  %46 = load i32 (%struct.TYPE_30__*, i32*, i32)*, i32 (%struct.TYPE_30__*, i32*, i32)** %45, align 8
  %47 = icmp ne i32 (%struct.TYPE_30__*, i32*, i32)* %46, null
  br i1 %47, label %48, label %63

48:                                               ; preds = %40
  %49 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %49, i32 0, i32 4
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 0
  %54 = load i32 (%struct.TYPE_30__*, i32*, i32)*, i32 (%struct.TYPE_30__*, i32*, i32)** %53, align 8
  %55 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %56 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %56, i32 0, i32 4
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 %54(%struct.TYPE_30__* %55, i32* %9, i32 %61)
  store i32 %62, i32* %8, align 4
  br label %87

63:                                               ; preds = %40
  %64 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %64, i32 0, i32 3
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 0
  %69 = load i32 (%struct.TYPE_30__*, i32*, i32)*, i32 (%struct.TYPE_30__*, i32*, i32)** %68, align 8
  %70 = icmp ne i32 (%struct.TYPE_30__*, i32*, i32)* %69, null
  br i1 %70, label %71, label %86

71:                                               ; preds = %63
  %72 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 0
  %77 = load i32 (%struct.TYPE_30__*, i32*, i32)*, i32 (%struct.TYPE_30__*, i32*, i32)** %76, align 8
  %78 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %79 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 %77(%struct.TYPE_30__* %78, i32* %9, i32 %84)
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %71, %63
  br label %87

87:                                               ; preds = %86, %48
  %88 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %88, i32 0, i32 6
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %147

92:                                               ; preds = %87
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %146

95:                                               ; preds = %92
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @SSL_TLSEXT_ERR_OK, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %146

99:                                               ; preds = %95
  %100 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %106 = call i64 @SSL_IS_TLS13(%struct.TYPE_30__* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %146

108:                                              ; preds = %104, %99
  %109 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %109, i32 0, i32 5
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @OPENSSL_free(i32* %114)
  %116 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = call i32* @OPENSSL_strdup(i32* %119)
  %121 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %121, i32 0, i32 5
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 0
  store i32* %120, i32** %125, align 8
  %126 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %126, i32 0, i32 5
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = icmp eq i32* %131, null
  br i1 %132, label %133, label %145

133:                                              ; preds = %108
  %134 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %145

139:                                              ; preds = %133
  %140 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %141 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %142 = load i32, i32* @SSL_F_FINAL_SERVER_NAME, align 4
  %143 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %144 = call i32 @SSLfatal(%struct.TYPE_30__* %140, i32 %141, i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %139, %133, %108
  br label %146

146:                                              ; preds = %145, %104, %95, %92
  br label %147

147:                                              ; preds = %146, %87
  %148 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %149 = call i64 @SSL_IS_FIRST_HANDSHAKE(%struct.TYPE_30__* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %172

151:                                              ; preds = %147
  %152 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %152, i32 0, i32 4
  %154 = load %struct.TYPE_26__*, %struct.TYPE_26__** %153, align 8
  %155 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %155, i32 0, i32 3
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %156, align 8
  %158 = icmp ne %struct.TYPE_26__* %154, %157
  br i1 %158, label %159, label %172

159:                                              ; preds = %151
  %160 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %160, i32 0, i32 4
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %163, i32 0, i32 0
  %165 = call i32 @tsan_counter(i32* %164)
  %166 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %166, i32 0, i32 3
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %169, i32 0, i32 0
  %171 = call i32 @tsan_decr(i32* %170)
  br label %172

172:                                              ; preds = %159, %151, %147
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* @SSL_TLSEXT_ERR_OK, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %241

176:                                              ; preds = %172
  %177 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %241

182:                                              ; preds = %176
  %183 = load i32, i32* %10, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %241

185:                                              ; preds = %182
  %186 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %187 = call i32 @SSL_get_options(%struct.TYPE_30__* %186)
  %188 = load i32, i32* @SSL_OP_NO_TICKET, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %241

191:                                              ; preds = %185
  %192 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %193, i32 0, i32 0
  store i64 0, i64* %194, align 8
  %195 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %240, label %199

199:                                              ; preds = %191
  %200 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %201 = call %struct.TYPE_29__* @SSL_get_session(%struct.TYPE_30__* %200)
  store %struct.TYPE_29__* %201, %struct.TYPE_29__** %11, align 8
  %202 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %203 = icmp ne %struct.TYPE_29__* %202, null
  br i1 %203, label %204, label %233

204:                                              ; preds = %199
  %205 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %206, i32 0, i32 3
  %208 = load i32*, i32** %207, align 8
  %209 = call i32 @OPENSSL_free(i32* %208)
  %210 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %211 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %211, i32 0, i32 3
  store i32* null, i32** %212, align 8
  %213 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %214 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %214, i32 0, i32 2
  store i64 0, i64* %215, align 8
  %216 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %217 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %217, i32 0, i32 1
  store i64 0, i64* %218, align 8
  %219 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %220 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %220, i32 0, i32 0
  store i64 0, i64* %221, align 8
  %222 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %223 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %224 = call i32 @ssl_generate_session_id(%struct.TYPE_30__* %222, %struct.TYPE_29__* %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %232, label %226

226:                                              ; preds = %204
  %227 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %228 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %229 = load i32, i32* @SSL_F_FINAL_SERVER_NAME, align 4
  %230 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %231 = call i32 @SSLfatal(%struct.TYPE_30__* %227, i32 %228, i32 %229, i32 %230)
  store i32 0, i32* %4, align 4
  br label %263

232:                                              ; preds = %204
  br label %239

233:                                              ; preds = %199
  %234 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %235 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %236 = load i32, i32* @SSL_F_FINAL_SERVER_NAME, align 4
  %237 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %238 = call i32 @SSLfatal(%struct.TYPE_30__* %234, i32 %235, i32 %236, i32 %237)
  store i32 0, i32* %4, align 4
  br label %263

239:                                              ; preds = %232
  br label %240

240:                                              ; preds = %239, %191
  br label %241

241:                                              ; preds = %240, %185, %182, %176, %172
  %242 = load i32, i32* %8, align 4
  switch i32 %242, label %262 [
    i32 130, label %243
    i32 129, label %249
    i32 128, label %259
  ]

243:                                              ; preds = %241
  %244 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %245 = load i32, i32* %9, align 4
  %246 = load i32, i32* @SSL_F_FINAL_SERVER_NAME, align 4
  %247 = load i32, i32* @SSL_R_CALLBACK_FAILED, align 4
  %248 = call i32 @SSLfatal(%struct.TYPE_30__* %244, i32 %245, i32 %246, i32 %247)
  store i32 0, i32* %4, align 4
  br label %263

249:                                              ; preds = %241
  %250 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %251 = call i64 @SSL_IS_TLS13(%struct.TYPE_30__* %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %258, label %253

253:                                              ; preds = %249
  %254 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %255 = load i32, i32* @SSL3_AL_WARNING, align 4
  %256 = load i32, i32* %9, align 4
  %257 = call i32 @ssl3_send_alert(%struct.TYPE_30__* %254, i32 %255, i32 %256)
  br label %258

258:                                              ; preds = %253, %249
  store i32 1, i32* %4, align 4
  br label %263

259:                                              ; preds = %241
  %260 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %260, i32 0, i32 0
  store i32 0, i32* %261, align 8
  store i32 1, i32* %4, align 4
  br label %263

262:                                              ; preds = %241
  store i32 1, i32* %4, align 4
  br label %263

263:                                              ; preds = %262, %259, %258, %243, %233, %226, %34
  %264 = load i32, i32* %4, align 4
  ret i32 %264
}

declare dso_local i32 @SSL_get_options(%struct.TYPE_30__*) #1

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_30__*, i32, i32, i32) #1

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_30__*) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

declare dso_local i32* @OPENSSL_strdup(i32*) #1

declare dso_local i64 @SSL_IS_FIRST_HANDSHAKE(%struct.TYPE_30__*) #1

declare dso_local i32 @tsan_counter(i32*) #1

declare dso_local i32 @tsan_decr(i32*) #1

declare dso_local %struct.TYPE_29__* @SSL_get_session(%struct.TYPE_30__*) #1

declare dso_local i32 @ssl_generate_session_id(%struct.TYPE_30__*, %struct.TYPE_29__*) #1

declare dso_local i32 @ssl3_send_alert(%struct.TYPE_30__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
