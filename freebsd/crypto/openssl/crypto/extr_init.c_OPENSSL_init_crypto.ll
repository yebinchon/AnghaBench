; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_init.c_OPENSSL_init_crypto.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_init.c_OPENSSL_init_crypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stopped = common dso_local global i64 0, align 8
@OPENSSL_INIT_BASE_ONLY = common dso_local global i32 0, align 4
@CRYPTO_F_OPENSSL_INIT_CRYPTO = common dso_local global i32 0, align 4
@ERR_R_INIT_FAIL = common dso_local global i32 0, align 4
@base = common dso_local global i32 0, align 4
@ossl_init_base = common dso_local global i32 0, align 4
@OPENSSL_INIT_NO_ATEXIT = common dso_local global i32 0, align 4
@register_atexit = common dso_local global i32 0, align 4
@ossl_init_no_register_atexit = common dso_local global i32 0, align 4
@ossl_init_register_atexit = common dso_local global i32 0, align 4
@load_crypto_nodelete = common dso_local global i32 0, align 4
@ossl_init_load_crypto_nodelete = common dso_local global i32 0, align 4
@OPENSSL_INIT_NO_LOAD_CRYPTO_STRINGS = common dso_local global i32 0, align 4
@load_crypto_strings = common dso_local global i32 0, align 4
@ossl_init_no_load_crypto_strings = common dso_local global i32 0, align 4
@ossl_init_load_crypto_strings = common dso_local global i32 0, align 4
@OPENSSL_INIT_LOAD_CRYPTO_STRINGS = common dso_local global i32 0, align 4
@OPENSSL_INIT_NO_ADD_ALL_CIPHERS = common dso_local global i32 0, align 4
@add_all_ciphers = common dso_local global i32 0, align 4
@ossl_init_no_add_all_ciphers = common dso_local global i32 0, align 4
@ossl_init_add_all_ciphers = common dso_local global i32 0, align 4
@OPENSSL_INIT_ADD_ALL_CIPHERS = common dso_local global i32 0, align 4
@OPENSSL_INIT_NO_ADD_ALL_DIGESTS = common dso_local global i32 0, align 4
@add_all_digests = common dso_local global i32 0, align 4
@ossl_init_no_add_all_digests = common dso_local global i32 0, align 4
@ossl_init_add_all_digests = common dso_local global i32 0, align 4
@OPENSSL_INIT_ADD_ALL_DIGESTS = common dso_local global i32 0, align 4
@OPENSSL_INIT_ATFORK = common dso_local global i32 0, align 4
@OPENSSL_INIT_NO_LOAD_CONFIG = common dso_local global i32 0, align 4
@config = common dso_local global i32 0, align 4
@ossl_init_no_config = common dso_local global i32 0, align 4
@ossl_init_config = common dso_local global i32 0, align 4
@OPENSSL_INIT_LOAD_CONFIG = common dso_local global i32 0, align 4
@init_lock = common dso_local global i32 0, align 4
@conf_settings = common dso_local global i32* null, align 8
@OPENSSL_INIT_ASYNC = common dso_local global i32 0, align 4
@async = common dso_local global i32 0, align 4
@ossl_init_async = common dso_local global i32 0, align 4
@OPENSSL_INIT_ENGINE_OPENSSL = common dso_local global i32 0, align 4
@engine_openssl = common dso_local global i32 0, align 4
@ossl_init_engine_openssl = common dso_local global i32 0, align 4
@OPENSSL_INIT_ENGINE_CRYPTODEV = common dso_local global i32 0, align 4
@engine_devcrypto = common dso_local global i32 0, align 4
@ossl_init_engine_devcrypto = common dso_local global i32 0, align 4
@OPENSSL_INIT_ENGINE_RDRAND = common dso_local global i32 0, align 4
@engine_rdrand = common dso_local global i32 0, align 4
@ossl_init_engine_rdrand = common dso_local global i32 0, align 4
@OPENSSL_INIT_ENGINE_DYNAMIC = common dso_local global i32 0, align 4
@engine_dynamic = common dso_local global i32 0, align 4
@ossl_init_engine_dynamic = common dso_local global i32 0, align 4
@OPENSSL_INIT_ENGINE_PADLOCK = common dso_local global i32 0, align 4
@engine_padlock = common dso_local global i32 0, align 4
@ossl_init_engine_padlock = common dso_local global i32 0, align 4
@OPENSSL_INIT_ENGINE_AFALG = common dso_local global i32 0, align 4
@engine_afalg = common dso_local global i32 0, align 4
@ossl_init_engine_afalg = common dso_local global i32 0, align 4
@OPENSSL_INIT_ENGINE_ALL_BUILTIN = common dso_local global i32 0, align 4
@OPENSSL_INIT_ZLIB = common dso_local global i32 0, align 4
@zlib = common dso_local global i32 0, align 4
@ossl_init_zlib = common dso_local global i32 0, align 4
@OPENSSL_INIT_ENGINE_CAPI = common dso_local global i32 0, align 4
@engine_capi = common dso_local global i32 0, align 4
@ossl_init_engine_capi = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OPENSSL_init_crypto(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %7 = load i64, i64* @stopped, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @OPENSSL_INIT_BASE_ONLY, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* @CRYPTO_F_OPENSSL_INIT_CRYPTO, align 4
  %16 = load i32, i32* @ERR_R_INIT_FAIL, align 4
  %17 = call i32 @CRYPTOerr(i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %14, %9
  store i32 0, i32* %3, align 4
  br label %245

19:                                               ; preds = %2
  %20 = load i32, i32* @ossl_init_base, align 4
  %21 = call i32 @RUN_ONCE(i32* @base, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %245

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @OPENSSL_INIT_BASE_ONLY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %245

30:                                               ; preds = %24
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @OPENSSL_INIT_NO_ATEXIT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load i32, i32* @ossl_init_no_register_atexit, align 4
  %37 = load i32, i32* @ossl_init_register_atexit, align 4
  %38 = call i32 @RUN_ONCE_ALT(i32* @register_atexit, i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %245

41:                                               ; preds = %35
  br label %48

42:                                               ; preds = %30
  %43 = load i32, i32* @ossl_init_register_atexit, align 4
  %44 = call i32 @RUN_ONCE(i32* @register_atexit, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %245

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %47, %41
  %49 = load i32, i32* @ossl_init_load_crypto_nodelete, align 4
  %50 = call i32 @RUN_ONCE(i32* @load_crypto_nodelete, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %245

53:                                               ; preds = %48
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @OPENSSL_INIT_NO_LOAD_CRYPTO_STRINGS, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i32, i32* @ossl_init_no_load_crypto_strings, align 4
  %60 = load i32, i32* @ossl_init_load_crypto_strings, align 4
  %61 = call i32 @RUN_ONCE_ALT(i32* @load_crypto_strings, i32 %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %245

64:                                               ; preds = %58, %53
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @OPENSSL_INIT_LOAD_CRYPTO_STRINGS, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load i32, i32* @ossl_init_load_crypto_strings, align 4
  %71 = call i32 @RUN_ONCE(i32* @load_crypto_strings, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %245

74:                                               ; preds = %69, %64
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @OPENSSL_INIT_NO_ADD_ALL_CIPHERS, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load i32, i32* @ossl_init_no_add_all_ciphers, align 4
  %81 = load i32, i32* @ossl_init_add_all_ciphers, align 4
  %82 = call i32 @RUN_ONCE_ALT(i32* @add_all_ciphers, i32 %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  br label %245

85:                                               ; preds = %79, %74
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @OPENSSL_INIT_ADD_ALL_CIPHERS, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load i32, i32* @ossl_init_add_all_ciphers, align 4
  %92 = call i32 @RUN_ONCE(i32* @add_all_ciphers, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  store i32 0, i32* %3, align 4
  br label %245

95:                                               ; preds = %90, %85
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @OPENSSL_INIT_NO_ADD_ALL_DIGESTS, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load i32, i32* @ossl_init_no_add_all_digests, align 4
  %102 = load i32, i32* @ossl_init_add_all_digests, align 4
  %103 = call i32 @RUN_ONCE_ALT(i32* @add_all_digests, i32 %101, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %100
  store i32 0, i32* %3, align 4
  br label %245

106:                                              ; preds = %100, %95
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @OPENSSL_INIT_ADD_ALL_DIGESTS, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load i32, i32* @ossl_init_add_all_digests, align 4
  %113 = call i32 @RUN_ONCE(i32* @add_all_digests, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %111
  store i32 0, i32* %3, align 4
  br label %245

116:                                              ; preds = %111, %106
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @OPENSSL_INIT_ATFORK, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = call i32 (...) @openssl_init_fork_handlers()
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %121
  store i32 0, i32* %3, align 4
  br label %245

125:                                              ; preds = %121, %116
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* @OPENSSL_INIT_NO_LOAD_CONFIG, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = load i32, i32* @ossl_init_no_config, align 4
  %132 = load i32, i32* @ossl_init_config, align 4
  %133 = call i32 @RUN_ONCE_ALT(i32* @config, i32 %131, i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %130
  store i32 0, i32* %3, align 4
  br label %245

136:                                              ; preds = %130, %125
  %137 = load i32, i32* %4, align 4
  %138 = load i32, i32* @OPENSSL_INIT_LOAD_CONFIG, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %153

141:                                              ; preds = %136
  %142 = load i32, i32* @init_lock, align 4
  %143 = call i32 @CRYPTO_THREAD_write_lock(i32 %142)
  %144 = load i32*, i32** %5, align 8
  store i32* %144, i32** @conf_settings, align 8
  %145 = load i32, i32* @ossl_init_config, align 4
  %146 = call i32 @RUN_ONCE(i32* @config, i32 %145)
  store i32 %146, i32* %6, align 4
  store i32* null, i32** @conf_settings, align 8
  %147 = load i32, i32* @init_lock, align 4
  %148 = call i32 @CRYPTO_THREAD_unlock(i32 %147)
  %149 = load i32, i32* %6, align 4
  %150 = icmp sle i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %141
  store i32 0, i32* %3, align 4
  br label %245

152:                                              ; preds = %141
  br label %153

153:                                              ; preds = %152, %136
  %154 = load i32, i32* %4, align 4
  %155 = load i32, i32* @OPENSSL_INIT_ASYNC, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %153
  %159 = load i32, i32* @ossl_init_async, align 4
  %160 = call i32 @RUN_ONCE(i32* @async, i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %158
  store i32 0, i32* %3, align 4
  br label %245

163:                                              ; preds = %158, %153
  %164 = load i32, i32* %4, align 4
  %165 = load i32, i32* @OPENSSL_INIT_ENGINE_OPENSSL, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %163
  %169 = load i32, i32* @ossl_init_engine_openssl, align 4
  %170 = call i32 @RUN_ONCE(i32* @engine_openssl, i32 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %168
  store i32 0, i32* %3, align 4
  br label %245

173:                                              ; preds = %168, %163
  %174 = load i32, i32* %4, align 4
  %175 = load i32, i32* @OPENSSL_INIT_ENGINE_CRYPTODEV, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %173
  %179 = load i32, i32* @ossl_init_engine_devcrypto, align 4
  %180 = call i32 @RUN_ONCE(i32* @engine_devcrypto, i32 %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %178
  store i32 0, i32* %3, align 4
  br label %245

183:                                              ; preds = %178, %173
  %184 = load i32, i32* %4, align 4
  %185 = load i32, i32* @OPENSSL_INIT_ENGINE_RDRAND, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %183
  %189 = load i32, i32* @ossl_init_engine_rdrand, align 4
  %190 = call i32 @RUN_ONCE(i32* @engine_rdrand, i32 %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %188
  store i32 0, i32* %3, align 4
  br label %245

193:                                              ; preds = %188, %183
  %194 = load i32, i32* %4, align 4
  %195 = load i32, i32* @OPENSSL_INIT_ENGINE_DYNAMIC, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %193
  %199 = load i32, i32* @ossl_init_engine_dynamic, align 4
  %200 = call i32 @RUN_ONCE(i32* @engine_dynamic, i32 %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %198
  store i32 0, i32* %3, align 4
  br label %245

203:                                              ; preds = %198, %193
  %204 = load i32, i32* %4, align 4
  %205 = load i32, i32* @OPENSSL_INIT_ENGINE_PADLOCK, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %203
  %209 = load i32, i32* @ossl_init_engine_padlock, align 4
  %210 = call i32 @RUN_ONCE(i32* @engine_padlock, i32 %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %213, label %212

212:                                              ; preds = %208
  store i32 0, i32* %3, align 4
  br label %245

213:                                              ; preds = %208, %203
  %214 = load i32, i32* %4, align 4
  %215 = load i32, i32* @OPENSSL_INIT_ENGINE_AFALG, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %213
  %219 = load i32, i32* @ossl_init_engine_afalg, align 4
  %220 = call i32 @RUN_ONCE(i32* @engine_afalg, i32 %219)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %223, label %222

222:                                              ; preds = %218
  store i32 0, i32* %3, align 4
  br label %245

223:                                              ; preds = %218, %213
  %224 = load i32, i32* %4, align 4
  %225 = load i32, i32* @OPENSSL_INIT_ENGINE_ALL_BUILTIN, align 4
  %226 = load i32, i32* @OPENSSL_INIT_ENGINE_OPENSSL, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* @OPENSSL_INIT_ENGINE_AFALG, align 4
  %229 = or i32 %227, %228
  %230 = and i32 %224, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %223
  %233 = call i32 (...) @ENGINE_register_all_complete()
  br label %234

234:                                              ; preds = %232, %223
  %235 = load i32, i32* %4, align 4
  %236 = load i32, i32* @OPENSSL_INIT_ZLIB, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %234
  %240 = load i32, i32* @ossl_init_zlib, align 4
  %241 = call i32 @RUN_ONCE(i32* @zlib, i32 %240)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %244, label %243

243:                                              ; preds = %239
  store i32 0, i32* %3, align 4
  br label %245

244:                                              ; preds = %239, %234
  store i32 1, i32* %3, align 4
  br label %245

245:                                              ; preds = %244, %243, %222, %212, %202, %192, %182, %172, %162, %151, %135, %124, %115, %105, %94, %84, %73, %63, %52, %46, %40, %29, %23, %18
  %246 = load i32, i32* %3, align 4
  ret i32 %246
}

declare dso_local i32 @CRYPTOerr(i32, i32) #1

declare dso_local i32 @RUN_ONCE(i32*, i32) #1

declare dso_local i32 @RUN_ONCE_ALT(i32*, i32, i32) #1

declare dso_local i32 @openssl_init_fork_handlers(...) #1

declare dso_local i32 @CRYPTO_THREAD_write_lock(i32) #1

declare dso_local i32 @CRYPTO_THREAD_unlock(i32) #1

declare dso_local i32 @ENGINE_register_all_complete(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
