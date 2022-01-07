; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_lib.c_SSL_dup.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_lib.c_SSL_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i64, i64, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32*, i32, i32*, i32, i32 }

@CRYPTO_EX_INDEX_SSL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_28__* @SSL_dup(%struct.TYPE_28__* %0) #0 {
  %2 = alloca %struct.TYPE_28__*, align 8
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %3, align 8
  %6 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %7 = call i32 @SSL_in_init(%struct.TYPE_28__* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %11 = call i32 @SSL_in_before(%struct.TYPE_28__* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 26
  %16 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %16, i32 0, i32 25
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @CRYPTO_UP_REF(i32* %15, i32* %5, i32 %18)
  %20 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  store %struct.TYPE_28__* %20, %struct.TYPE_28__** %2, align 8
  br label %303

21:                                               ; preds = %9
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %23 = call i32 @SSL_get_SSL_CTX(%struct.TYPE_28__* %22)
  %24 = call %struct.TYPE_28__* @SSL_new(i32 %23)
  store %struct.TYPE_28__* %24, %struct.TYPE_28__** %4, align 8
  %25 = icmp eq %struct.TYPE_28__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %2, align 8
  br label %303

27:                                               ; preds = %21
  %28 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %28, i32 0, i32 24
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %34 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %35 = call i32 @SSL_copy_session_id(%struct.TYPE_28__* %33, %struct.TYPE_28__* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %300

38:                                               ; preds = %32
  br label %82

39:                                               ; preds = %27
  %40 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %41, i32 0, i32 23
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @SSL_set_ssl_method(%struct.TYPE_28__* %40, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  br label %300

47:                                               ; preds = %39
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %48, i32 0, i32 22
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %69

52:                                               ; preds = %47
  %53 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %53, i32 0, i32 22
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @ssl_cert_free(i32* %55)
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %57, i32 0, i32 22
  %59 = load i32*, i32** %58, align 8
  %60 = call i32* @ssl_cert_dup(i32* %59)
  %61 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %61, i32 0, i32 22
  store i32* %60, i32** %62, align 8
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %63, i32 0, i32 22
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %52
  br label %300

68:                                               ; preds = %52
  br label %69

69:                                               ; preds = %68, %47
  %70 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %71 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %71, i32 0, i32 21
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %74, i32 0, i32 20
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @SSL_set_session_id_context(%struct.TYPE_28__* %70, i32 %73, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %69
  br label %300

81:                                               ; preds = %69
  br label %82

82:                                               ; preds = %81, %38
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %84 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %85 = call i32 @ssl_dane_dup(%struct.TYPE_28__* %83, %struct.TYPE_28__* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %82
  br label %300

88:                                               ; preds = %82
  %89 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %89, i32 0, i32 19
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %92, i32 0, i32 19
  store i32 %91, i32* %93, align 8
  %94 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %94, i32 0, i32 18
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %97, i32 0, i32 18
  store i32 %96, i32* %98, align 4
  %99 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %99, i32 0, i32 17
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 17
  store i32 %101, i32* %103, align 8
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %106 = call i32 @SSL_get_max_cert_list(%struct.TYPE_28__* %105)
  %107 = call i32 @SSL_set_max_cert_list(%struct.TYPE_28__* %104, i32 %106)
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %109 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %110 = call i32 @SSL_get_read_ahead(%struct.TYPE_28__* %109)
  %111 = call i32 @SSL_set_read_ahead(%struct.TYPE_28__* %108, i32 %110)
  %112 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %112, i32 0, i32 16
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %115, i32 0, i32 16
  store i32 %114, i32* %116, align 4
  %117 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %117, i32 0, i32 15
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %120, i32 0, i32 15
  store i32 %119, i32* %121, align 8
  %122 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %123 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %124 = call i32 @SSL_get_verify_mode(%struct.TYPE_28__* %123)
  %125 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %126 = call i32 @SSL_get_verify_callback(%struct.TYPE_28__* %125)
  %127 = call i32 @SSL_set_verify(%struct.TYPE_28__* %122, i32 %124, i32 %126)
  %128 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %130 = call i32 @SSL_get_verify_depth(%struct.TYPE_28__* %129)
  %131 = call i32 @SSL_set_verify_depth(%struct.TYPE_28__* %128, i32 %130)
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %132, i32 0, i32 14
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %135, i32 0, i32 14
  store i32 %134, i32* %136, align 4
  %137 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %138 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %139 = call i32 @SSL_get_info_callback(%struct.TYPE_28__* %138)
  %140 = call i32 @SSL_set_info_callback(%struct.TYPE_28__* %137, i32 %139)
  %141 = load i32, i32* @CRYPTO_EX_INDEX_SSL, align 4
  %142 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %142, i32 0, i32 13
  %144 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %144, i32 0, i32 13
  %146 = call i32 @CRYPTO_dup_ex_data(i32 %141, i32* %143, i32* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %88
  br label %300

149:                                              ; preds = %88
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %150, i32 0, i32 11
  %152 = load i32*, i32** %151, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %165

154:                                              ; preds = %149
  %155 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %155, i32 0, i32 11
  %157 = load i32*, i32** %156, align 8
  %158 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %158, i32 0, i32 11
  %160 = bitcast i32** %159 to i8*
  %161 = call i32 @BIO_dup_state(i32* %157, i8* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %154
  br label %300

164:                                              ; preds = %154
  br label %165

165:                                              ; preds = %164, %149
  %166 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %166, i32 0, i32 12
  %168 = load i32*, i32** %167, align 8
  %169 = icmp ne i32* %168, null
  br i1 %169, label %170, label %200

170:                                              ; preds = %165
  %171 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %171, i32 0, i32 12
  %173 = load i32*, i32** %172, align 8
  %174 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %174, i32 0, i32 11
  %176 = load i32*, i32** %175, align 8
  %177 = icmp ne i32* %173, %176
  br i1 %177, label %178, label %189

178:                                              ; preds = %170
  %179 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %179, i32 0, i32 12
  %181 = load i32*, i32** %180, align 8
  %182 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %182, i32 0, i32 12
  %184 = bitcast i32** %183 to i8*
  %185 = call i32 @BIO_dup_state(i32* %181, i8* %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %178
  br label %300

188:                                              ; preds = %178
  br label %199

189:                                              ; preds = %170
  %190 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %190, i32 0, i32 11
  %192 = load i32*, i32** %191, align 8
  %193 = call i32 @BIO_up_ref(i32* %192)
  %194 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %194, i32 0, i32 11
  %196 = load i32*, i32** %195, align 8
  %197 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %197, i32 0, i32 12
  store i32* %196, i32** %198, align 8
  br label %199

199:                                              ; preds = %189, %188
  br label %200

200:                                              ; preds = %199, %165
  %201 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %201, i32 0, i32 9
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %204, i32 0, i32 9
  store i64 %203, i64* %205, align 8
  %206 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %206, i32 0, i32 10
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %222

210:                                              ; preds = %200
  %211 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %211, i32 0, i32 9
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %210
  %216 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %217 = call i32 @SSL_set_accept_state(%struct.TYPE_28__* %216)
  br label %221

218:                                              ; preds = %210
  %219 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %220 = call i32 @SSL_set_connect_state(%struct.TYPE_28__* %219)
  br label %221

221:                                              ; preds = %218, %215
  br label %222

222:                                              ; preds = %221, %200
  %223 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %223, i32 0, i32 8
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %226, i32 0, i32 8
  store i32 %225, i32* %227, align 8
  %228 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %228, i32 0, i32 7
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %231, i32 0, i32 7
  store i32 %230, i32* %232, align 4
  %233 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %233, i32 0, i32 6
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %236, i32 0, i32 6
  store i32 %235, i32* %237, align 8
  %238 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %238, i32 0, i32 5
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %241, i32 0, i32 5
  store i32 %240, i32* %242, align 4
  %243 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @X509_VERIFY_PARAM_inherit(i32 %245, i32 %248)
  %250 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %250, i32 0, i32 3
  %252 = load i32*, i32** %251, align 8
  %253 = icmp ne i32* %252, null
  br i1 %253, label %254, label %265

254:                                              ; preds = %222
  %255 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %255, i32 0, i32 3
  %257 = load i32*, i32** %256, align 8
  %258 = call i8* @sk_SSL_CIPHER_dup(i32* %257)
  %259 = bitcast i8* %258 to i32*
  %260 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %260, i32 0, i32 3
  store i32* %259, i32** %261, align 8
  %262 = icmp eq i32* %259, null
  br i1 %262, label %263, label %264

263:                                              ; preds = %254
  br label %300

264:                                              ; preds = %254
  br label %265

265:                                              ; preds = %264, %222
  %266 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %266, i32 0, i32 2
  %268 = load i32*, i32** %267, align 8
  %269 = icmp ne i32* %268, null
  br i1 %269, label %270, label %281

270:                                              ; preds = %265
  %271 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %271, i32 0, i32 2
  %273 = load i32*, i32** %272, align 8
  %274 = call i8* @sk_SSL_CIPHER_dup(i32* %273)
  %275 = bitcast i8* %274 to i32*
  %276 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %276, i32 0, i32 2
  store i32* %275, i32** %277, align 8
  %278 = icmp eq i32* %275, null
  br i1 %278, label %279, label %280

279:                                              ; preds = %270
  br label %300

280:                                              ; preds = %270
  br label %281

281:                                              ; preds = %280, %265
  %282 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %282, i32 0, i32 1
  %284 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @dup_ca_names(i32* %283, i32 %286)
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %297

289:                                              ; preds = %281
  %290 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %290, i32 0, i32 0
  %292 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = call i32 @dup_ca_names(i32* %291, i32 %294)
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %298, label %297

297:                                              ; preds = %289, %281
  br label %300

298:                                              ; preds = %289
  %299 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  store %struct.TYPE_28__* %299, %struct.TYPE_28__** %2, align 8
  br label %303

300:                                              ; preds = %297, %279, %263, %187, %163, %148, %87, %80, %67, %46, %37
  %301 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %302 = call i32 @SSL_free(%struct.TYPE_28__* %301)
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %2, align 8
  br label %303

303:                                              ; preds = %300, %298, %26, %13
  %304 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  ret %struct.TYPE_28__* %304
}

declare dso_local i32 @SSL_in_init(%struct.TYPE_28__*) #1

declare dso_local i32 @SSL_in_before(%struct.TYPE_28__*) #1

declare dso_local i32 @CRYPTO_UP_REF(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_28__* @SSL_new(i32) #1

declare dso_local i32 @SSL_get_SSL_CTX(%struct.TYPE_28__*) #1

declare dso_local i32 @SSL_copy_session_id(%struct.TYPE_28__*, %struct.TYPE_28__*) #1

declare dso_local i32 @SSL_set_ssl_method(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @ssl_cert_free(i32*) #1

declare dso_local i32* @ssl_cert_dup(i32*) #1

declare dso_local i32 @SSL_set_session_id_context(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @ssl_dane_dup(%struct.TYPE_28__*, %struct.TYPE_28__*) #1

declare dso_local i32 @SSL_set_max_cert_list(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @SSL_get_max_cert_list(%struct.TYPE_28__*) #1

declare dso_local i32 @SSL_set_read_ahead(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @SSL_get_read_ahead(%struct.TYPE_28__*) #1

declare dso_local i32 @SSL_set_verify(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @SSL_get_verify_mode(%struct.TYPE_28__*) #1

declare dso_local i32 @SSL_get_verify_callback(%struct.TYPE_28__*) #1

declare dso_local i32 @SSL_set_verify_depth(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @SSL_get_verify_depth(%struct.TYPE_28__*) #1

declare dso_local i32 @SSL_set_info_callback(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @SSL_get_info_callback(%struct.TYPE_28__*) #1

declare dso_local i32 @CRYPTO_dup_ex_data(i32, i32*, i32*) #1

declare dso_local i32 @BIO_dup_state(i32*, i8*) #1

declare dso_local i32 @BIO_up_ref(i32*) #1

declare dso_local i32 @SSL_set_accept_state(%struct.TYPE_28__*) #1

declare dso_local i32 @SSL_set_connect_state(%struct.TYPE_28__*) #1

declare dso_local i32 @X509_VERIFY_PARAM_inherit(i32, i32) #1

declare dso_local i8* @sk_SSL_CIPHER_dup(i32*) #1

declare dso_local i32 @dup_ca_names(i32*, i32) #1

declare dso_local i32 @SSL_free(%struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
