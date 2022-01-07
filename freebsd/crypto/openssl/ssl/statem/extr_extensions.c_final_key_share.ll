; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions.c_final_key_share.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions.c_final_key_share.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_12__, %struct.TYPE_11__*, i32, i64 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32* }

@SSL_EXT_TLS1_3_HELLO_RETRY_REQUEST = common dso_local global i32 0, align 4
@TLSEXT_KEX_MODE_FLAG_KE = common dso_local global i32 0, align 4
@SSL_AD_MISSING_EXTENSION = common dso_local global i32 0, align 4
@SSL_F_FINAL_KEY_SHARE = common dso_local global i32 0, align 4
@SSL_R_NO_SUITABLE_KEY_SHARE = common dso_local global i32 0, align 4
@TLS1_FLAGS_STATELESS = common dso_local global i32 0, align 4
@SSL_HRR_NONE = common dso_local global i64 0, align 8
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_HRR_PENDING = common dso_local global i64 0, align 8
@TLSEXT_KEX_MODE_FLAG_KE_DHE = common dso_local global i32 0, align 4
@SSL_AD_HANDSHAKE_FAILURE = common dso_local global i32 0, align 4
@SSL_HRR_COMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32, i32)* @final_key_share to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @final_key_share(%struct.TYPE_13__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %15 = call i32 @SSL_IS_TLS13(%struct.TYPE_13__* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %246

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @SSL_EXT_TLS1_3_HELLO_RETRY_REQUEST, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 1, i32* %4, align 4
  br label %246

24:                                               ; preds = %18
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %51, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %51, label %32

32:                                               ; preds = %29
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @TLSEXT_KEX_MODE_FLAG_KE, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %37, %32
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %47 = load i32, i32* @SSL_AD_MISSING_EXTENSION, align 4
  %48 = load i32, i32* @SSL_F_FINAL_KEY_SHARE, align 4
  %49 = load i32, i32* @SSL_R_NO_SUITABLE_KEY_SHARE, align 4
  %50 = call i32 @SSLfatal(%struct.TYPE_13__* %46, i32 %47, i32 %48, i32 %49)
  store i32 0, i32* %4, align 4
  br label %246

51:                                               ; preds = %37, %29, %24
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %231

56:                                               ; preds = %51
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %98

63:                                               ; preds = %56
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @TLS1_FLAGS_STATELESS, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %97

72:                                               ; preds = %63
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %97, label %78

78:                                               ; preds = %72
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @SSL_HRR_NONE, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @ossl_assert(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %78
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %89 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %90 = load i32, i32* @SSL_F_FINAL_KEY_SHARE, align 4
  %91 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %92 = call i32 @SSLfatal(%struct.TYPE_13__* %88, i32 %89, i32 %90, i32 %91)
  store i32 0, i32* %4, align 4
  br label %246

93:                                               ; preds = %78
  %94 = load i64, i64* @SSL_HRR_PENDING, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  store i32 1, i32* %4, align 4
  br label %246

97:                                               ; preds = %72, %63
  br label %220

98:                                               ; preds = %56
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @SSL_HRR_NONE, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %159

104:                                              ; preds = %98
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %159

107:                                              ; preds = %104
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %107
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @TLSEXT_KEX_MODE_FLAG_KE_DHE, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %159

120:                                              ; preds = %112, %107
  store i32 0, i32* %13, align 4
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %122 = call i32 @tls1_get_peer_groups(%struct.TYPE_13__* %121, i32** %9, i64* %11)
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %124 = call i32 @tls1_get_supported_groups(%struct.TYPE_13__* %123, i32** %8, i64* %10)
  store i64 0, i64* %12, align 8
  br label %125

125:                                              ; preds = %142, %120
  %126 = load i64, i64* %12, align 8
  %127 = load i64, i64* %10, align 8
  %128 = icmp ult i64 %126, %127
  br i1 %128, label %129, label %145

129:                                              ; preds = %125
  %130 = load i32*, i32** %8, align 8
  %131 = load i64, i64* %12, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %13, align 4
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %135 = load i32, i32* %13, align 4
  %136 = load i32*, i32** %9, align 8
  %137 = load i64, i64* %11, align 8
  %138 = call i64 @check_in_list(%struct.TYPE_13__* %134, i32 %135, i32* %136, i64 %137, i32 1)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %129
  br label %145

141:                                              ; preds = %129
  br label %142

142:                                              ; preds = %141
  %143 = load i64, i64* %12, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %12, align 8
  br label %125

145:                                              ; preds = %140, %125
  %146 = load i64, i64* %12, align 8
  %147 = load i64, i64* %10, align 8
  %148 = icmp ult i64 %146, %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %145
  %150 = load i32, i32* %13, align 4
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 2
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 1
  store i32 %150, i32* %154, align 4
  %155 = load i64, i64* @SSL_HRR_PENDING, align 8
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 0
  store i64 %155, i64* %157, align 8
  store i32 1, i32* %4, align 4
  br label %246

158:                                              ; preds = %145
  br label %159

159:                                              ; preds = %158, %112, %104, %98
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %172

164:                                              ; preds = %159
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @TLSEXT_KEX_MODE_FLAG_KE, align 4
  %170 = and i32 %168, %169
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %185

172:                                              ; preds = %164, %159
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %174 = load i32, i32* %7, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %172
  %177 = load i32, i32* @SSL_AD_HANDSHAKE_FAILURE, align 4
  br label %180

178:                                              ; preds = %172
  %179 = load i32, i32* @SSL_AD_MISSING_EXTENSION, align 4
  br label %180

180:                                              ; preds = %178, %176
  %181 = phi i32 [ %177, %176 ], [ %179, %178 ]
  %182 = load i32, i32* @SSL_F_FINAL_KEY_SHARE, align 4
  %183 = load i32, i32* @SSL_R_NO_SUITABLE_KEY_SHARE, align 4
  %184 = call i32 @SSLfatal(%struct.TYPE_13__* %173, i32 %181, i32 %182, i32 %183)
  store i32 0, i32* %4, align 4
  br label %246

185:                                              ; preds = %164
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 2
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @TLS1_FLAGS_STATELESS, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %219

194:                                              ; preds = %185
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %219, label %200

200:                                              ; preds = %194
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @SSL_HRR_NONE, align 8
  %205 = icmp eq i64 %203, %204
  %206 = zext i1 %205 to i32
  %207 = call i32 @ossl_assert(i32 %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %215, label %209

209:                                              ; preds = %200
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %211 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %212 = load i32, i32* @SSL_F_FINAL_KEY_SHARE, align 4
  %213 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %214 = call i32 @SSLfatal(%struct.TYPE_13__* %210, i32 %211, i32 %212, i32 %213)
  store i32 0, i32* %4, align 4
  br label %246

215:                                              ; preds = %200
  %216 = load i64, i64* @SSL_HRR_PENDING, align 8
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 0
  store i64 %216, i64* %218, align 8
  store i32 1, i32* %4, align 4
  br label %246

219:                                              ; preds = %194, %185
  br label %220

220:                                              ; preds = %219, %97
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @SSL_HRR_PENDING, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %226, label %230

226:                                              ; preds = %220
  %227 = load i64, i64* @SSL_HRR_COMPLETE, align 8
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 0
  store i64 %227, i64* %229, align 8
  br label %230

230:                                              ; preds = %226, %220
  br label %245

231:                                              ; preds = %51
  %232 = load i32, i32* %7, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %244, label %234

234:                                              ; preds = %231
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %236 = call i32 @tls13_generate_handshake_secret(%struct.TYPE_13__* %235, i32* null, i32 0)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %244, label %238

238:                                              ; preds = %234
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %240 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %241 = load i32, i32* @SSL_F_FINAL_KEY_SHARE, align 4
  %242 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %243 = call i32 @SSLfatal(%struct.TYPE_13__* %239, i32 %240, i32 %241, i32 %242)
  store i32 0, i32* %4, align 4
  br label %246

244:                                              ; preds = %234, %231
  br label %245

245:                                              ; preds = %244, %230
  store i32 1, i32* %4, align 4
  br label %246

246:                                              ; preds = %245, %238, %215, %209, %180, %149, %93, %87, %45, %23, %17
  %247 = load i32, i32* %4, align 4
  ret i32 %247
}

declare dso_local i32 @SSL_IS_TLS13(%struct.TYPE_13__*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i32 @tls1_get_peer_groups(%struct.TYPE_13__*, i32**, i64*) #1

declare dso_local i32 @tls1_get_supported_groups(%struct.TYPE_13__*, i32**, i64*) #1

declare dso_local i64 @check_in_list(%struct.TYPE_13__*, i32, i32*, i64, i32) #1

declare dso_local i32 @tls13_generate_handshake_secret(%struct.TYPE_13__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
