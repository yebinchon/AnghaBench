; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_srvr.c_ossl_statem_server_read_transition.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_srvr.c_ossl_statem_server_read_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i64, %struct.TYPE_14__*, %struct.TYPE_13__*, i32, %struct.TYPE_16__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_16__ = type { i32, i32 }

@SSL3_MT_CLIENT_HELLO = common dso_local global i32 0, align 4
@TLS_ST_SR_CLNT_HELLO = common dso_local global i32 0, align 4
@SSL3_MT_CLIENT_KEY_EXCHANGE = common dso_local global i32 0, align 4
@SSL3_VERSION = common dso_local global i32 0, align 4
@SSL_VERIFY_PEER = common dso_local global i32 0, align 4
@SSL_VERIFY_FAIL_IF_NO_PEER_CERT = common dso_local global i32 0, align 4
@SSL_AD_HANDSHAKE_FAILURE = common dso_local global i32 0, align 4
@SSL_F_OSSL_STATEM_SERVER_READ_TRANSITION = common dso_local global i32 0, align 4
@SSL_R_PEER_DID_NOT_RETURN_A_CERTIFICATE = common dso_local global i32 0, align 4
@SSL3_MT_CERTIFICATE = common dso_local global i32 0, align 4
@SSL3_MT_CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@SSL3_MT_CERTIFICATE_VERIFY = common dso_local global i32 0, align 4
@SSL3_MT_NEXT_PROTO = common dso_local global i32 0, align 4
@SSL3_MT_FINISHED = common dso_local global i32 0, align 4
@TLS_ST_SR_FINISHED = common dso_local global i8* null, align 8
@SSL_READING = common dso_local global i32 0, align 4
@SSL3_AD_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@SSL_R_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ossl_statem_server_read_transition(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 6
  store %struct.TYPE_16__* %9, %struct.TYPE_16__** %6, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %11 = call i64 @SSL_IS_TLS13(%struct.TYPE_15__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @ossl_statem_server13_read_transition(%struct.TYPE_15__* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %188

19:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %214

20:                                               ; preds = %2
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %24 [
    i32 136, label %25
    i32 135, label %25
    i32 137, label %25
    i32 128, label %34
    i32 134, label %98
    i32 131, label %106
    i32 133, label %135
    i32 132, label %143
    i32 130, label %169
    i32 129, label %179
  ]

24:                                               ; preds = %20
  br label %187

25:                                               ; preds = %20, %20, %20
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @SSL3_MT_CLIENT_HELLO, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* @TLS_ST_SR_CLNT_HELLO, align 4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  store i32 1, i32* %3, align 4
  br label %214

33:                                               ; preds = %25
  br label %187

34:                                               ; preds = %20
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @SSL3_MT_CLIENT_KEY_EXCHANGE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %80

38:                                               ; preds = %34
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %76

46:                                               ; preds = %38
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @SSL3_VERSION, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %46
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @SSL_VERIFY_PEER, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %52
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @SSL_VERIFY_FAIL_IF_NO_PEER_CERT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %68 = load i32, i32* @SSL_AD_HANDSHAKE_FAILURE, align 4
  %69 = load i32, i32* @SSL_F_OSSL_STATEM_SERVER_READ_TRANSITION, align 4
  %70 = load i32, i32* @SSL_R_PEER_DID_NOT_RETURN_A_CERTIFICATE, align 4
  %71 = call i32 @SSLfatal(%struct.TYPE_15__* %67, i32 %68, i32 %69, i32 %70)
  store i32 0, i32* %3, align 4
  br label %214

72:                                               ; preds = %59, %52
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  store i32 131, i32* %74, align 4
  store i32 1, i32* %3, align 4
  br label %214

75:                                               ; preds = %46
  br label %79

76:                                               ; preds = %38
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  store i32 131, i32* %78, align 4
  store i32 1, i32* %3, align 4
  br label %214

79:                                               ; preds = %75
  br label %97

80:                                               ; preds = %34
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 3
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %80
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @SSL3_MT_CERTIFICATE, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  store i32 134, i32* %94, align 4
  store i32 1, i32* %3, align 4
  br label %214

95:                                               ; preds = %88
  br label %96

96:                                               ; preds = %95, %80
  br label %97

97:                                               ; preds = %96, %79
  br label %187

98:                                               ; preds = %20
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @SSL3_MT_CLIENT_KEY_EXCHANGE, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  store i32 131, i32* %104, align 4
  store i32 1, i32* %3, align 4
  br label %214

105:                                              ; preds = %98
  br label %187

106:                                              ; preds = %20
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 4
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %118, label %113

113:                                              ; preds = %106
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %113, %106
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @SSL3_MT_CHANGE_CIPHER_SPEC, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  store i32 132, i32* %124, align 4
  store i32 1, i32* %3, align 4
  br label %214

125:                                              ; preds = %118
  br label %134

126:                                              ; preds = %113
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* @SSL3_MT_CERTIFICATE_VERIFY, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  store i32 133, i32* %132, align 4
  store i32 1, i32* %3, align 4
  br label %214

133:                                              ; preds = %126
  br label %134

134:                                              ; preds = %133, %125
  br label %187

135:                                              ; preds = %20
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* @SSL3_MT_CHANGE_CIPHER_SPEC, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  store i32 132, i32* %141, align 4
  store i32 1, i32* %3, align 4
  br label %214

142:                                              ; preds = %135
  br label %187

143:                                              ; preds = %20
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %143
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* @SSL3_MT_NEXT_PROTO, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  store i32 130, i32* %156, align 4
  store i32 1, i32* %3, align 4
  br label %214

157:                                              ; preds = %150
  br label %168

158:                                              ; preds = %143
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* @SSL3_MT_FINISHED, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %167

162:                                              ; preds = %158
  %163 = load i8*, i8** @TLS_ST_SR_FINISHED, align 8
  %164 = ptrtoint i8* %163 to i32
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 4
  store i32 1, i32* %3, align 4
  br label %214

167:                                              ; preds = %158
  br label %168

168:                                              ; preds = %167, %157
  br label %187

169:                                              ; preds = %20
  %170 = load i32, i32* %5, align 4
  %171 = load i32, i32* @SSL3_MT_FINISHED, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %178

173:                                              ; preds = %169
  %174 = load i8*, i8** @TLS_ST_SR_FINISHED, align 8
  %175 = ptrtoint i8* %174 to i32
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 4
  store i32 1, i32* %3, align 4
  br label %214

178:                                              ; preds = %169
  br label %187

179:                                              ; preds = %20
  %180 = load i32, i32* %5, align 4
  %181 = load i32, i32* @SSL3_MT_CHANGE_CIPHER_SPEC, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %179
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 0
  store i32 132, i32* %185, align 4
  store i32 1, i32* %3, align 4
  br label %214

186:                                              ; preds = %179
  br label %187

187:                                              ; preds = %186, %178, %168, %142, %134, %105, %97, %33, %24
  br label %188

188:                                              ; preds = %187, %18
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %190 = call i64 @SSL_IS_DTLS(%struct.TYPE_15__* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %208

192:                                              ; preds = %188
  %193 = load i32, i32* %5, align 4
  %194 = load i32, i32* @SSL3_MT_CHANGE_CIPHER_SPEC, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %208

196:                                              ; preds = %192
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 2
  store i64 0, i64* %198, align 8
  %199 = load i32, i32* @SSL_READING, align 4
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 4
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %203 = call i32* @SSL_get_rbio(%struct.TYPE_15__* %202)
  store i32* %203, i32** %7, align 8
  %204 = load i32*, i32** %7, align 8
  %205 = call i32 @BIO_clear_retry_flags(i32* %204)
  %206 = load i32*, i32** %7, align 8
  %207 = call i32 @BIO_set_retry_read(i32* %206)
  store i32 0, i32* %3, align 4
  br label %214

208:                                              ; preds = %192, %188
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %210 = load i32, i32* @SSL3_AD_UNEXPECTED_MESSAGE, align 4
  %211 = load i32, i32* @SSL_F_OSSL_STATEM_SERVER_READ_TRANSITION, align 4
  %212 = load i32, i32* @SSL_R_UNEXPECTED_MESSAGE, align 4
  %213 = call i32 @SSLfatal(%struct.TYPE_15__* %209, i32 %210, i32 %211, i32 %212)
  store i32 0, i32* %3, align 4
  br label %214

214:                                              ; preds = %208, %196, %183, %173, %162, %154, %139, %130, %122, %102, %92, %76, %72, %66, %29, %19
  %215 = load i32, i32* %3, align 4
  ret i32 %215
}

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_15__*) #1

declare dso_local i32 @ossl_statem_server13_read_transition(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i64 @SSL_IS_DTLS(%struct.TYPE_15__*) #1

declare dso_local i32* @SSL_get_rbio(%struct.TYPE_15__*) #1

declare dso_local i32 @BIO_clear_retry_flags(i32*) #1

declare dso_local i32 @BIO_set_retry_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
