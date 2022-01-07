; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_clnt.c_tls_process_certificate_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_clnt.c_tls_process_certificate_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64, %struct.TYPE_14__*, i64, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i64, i32*, i64* }

@SSL_PKEY_NUM = common dso_local global i64 0, align 8
@SSL_SENT_SHUTDOWN = common dso_local global i32 0, align 4
@MSG_PROCESS_FINISHED_READING = common dso_local global i32 0, align 4
@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PROCESS_CERTIFICATE_REQUEST = common dso_local global i32 0, align 4
@SSL_R_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@MSG_PROCESS_ERROR = common dso_local global i32 0, align 4
@SSL_R_BAD_LENGTH = common dso_local global i32 0, align 4
@SSL_EXT_TLS1_3_CERTIFICATE_REQUEST = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_R_SIGNATURE_ALGORITHMS_ERROR = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@SSL_PHA_REQUESTED = common dso_local global i64 0, align 8
@MSG_PROCESS_CONTINUE_READING = common dso_local global i32 0, align 4
@MSG_PROCESS_CONTINUE_PROCESSING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_process_certificate_request(%struct.TYPE_15__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 0, i64* %6, align 8
  br label %12

12:                                               ; preds = %25, %2
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @SSL_PKEY_NUM, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 3
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %16
  %26 = load i64, i64* %6, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %6, align 8
  br label %12

28:                                               ; preds = %12
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %30 = call i64 @SSL_IS_TLS13(%struct.TYPE_15__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %122

32:                                               ; preds = %28
  store i32* null, i32** %9, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SSL_SENT_SHUTDOWN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @MSG_PROCESS_FINISHED_READING, align 4
  store i32 %40, i32* %3, align 4
  br label %229

41:                                               ; preds = %32
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @OPENSSL_free(i32* %47)
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 2
  store i32* null, i32** %53, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 4
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @OPENSSL_free(i32* %61)
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 4
  store i32* null, i32** %64, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @PACKET_get_length_prefixed_1(i32* %65, i32* %7)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %41
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 4
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 3
  %73 = call i32 @PACKET_memdup(i32* %7, i32** %70, i64* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %68, %41
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %77 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %78 = load i32, i32* @SSL_F_TLS_PROCESS_CERTIFICATE_REQUEST, align 4
  %79 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %80 = call i32 @SSLfatal(%struct.TYPE_15__* %76, i32 %77, i32 %78, i32 %79)
  %81 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %81, i32* %3, align 4
  br label %229

82:                                               ; preds = %68
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 @PACKET_get_length_prefixed_2(i32* %83, i32* %8)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %82
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %88 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %89 = load i32, i32* @SSL_F_TLS_PROCESS_CERTIFICATE_REQUEST, align 4
  %90 = load i32, i32* @SSL_R_BAD_LENGTH, align 4
  %91 = call i32 @SSLfatal(%struct.TYPE_15__* %87, i32 %88, i32 %89, i32 %90)
  %92 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %92, i32* %3, align 4
  br label %229

93:                                               ; preds = %82
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %95 = load i32, i32* @SSL_EXT_TLS1_3_CERTIFICATE_REQUEST, align 4
  %96 = call i32 @tls_collect_extensions(%struct.TYPE_15__* %94, i32* %8, i32 %95, i32** %9, i32* null, i32 1)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %100 = load i32, i32* @SSL_EXT_TLS1_3_CERTIFICATE_REQUEST, align 4
  %101 = load i32*, i32** %9, align 8
  %102 = call i32 @tls_parse_all_extensions(%struct.TYPE_15__* %99, i32 %100, i32* %101, i32* null, i32 0, i32 1)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %98, %93
  %105 = load i32*, i32** %9, align 8
  %106 = call i32 @OPENSSL_free(i32* %105)
  %107 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %107, i32* %3, align 4
  br label %229

108:                                              ; preds = %98
  %109 = load i32*, i32** %9, align 8
  %110 = call i32 @OPENSSL_free(i32* %109)
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %112 = call i32 @tls1_process_sigalgs(%struct.TYPE_15__* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %121, label %114

114:                                              ; preds = %108
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %116 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %117 = load i32, i32* @SSL_F_TLS_PROCESS_CERTIFICATE_REQUEST, align 4
  %118 = load i32, i32* @SSL_R_BAD_LENGTH, align 4
  %119 = call i32 @SSLfatal(%struct.TYPE_15__* %115, i32 %116, i32 %117, i32 %118)
  %120 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %120, i32* %3, align 4
  br label %229

121:                                              ; preds = %108
  br label %199

122:                                              ; preds = %28
  %123 = load i32*, i32** %5, align 8
  %124 = call i32 @PACKET_get_length_prefixed_1(i32* %123, i32* %10)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %133, label %126

126:                                              ; preds = %122
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %128 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %129 = load i32, i32* @SSL_F_TLS_PROCESS_CERTIFICATE_REQUEST, align 4
  %130 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %131 = call i32 @SSLfatal(%struct.TYPE_15__* %127, i32 %128, i32 %129, i32 %130)
  %132 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %132, i32* %3, align 4
  br label %229

133:                                              ; preds = %122
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 2
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 1
  %144 = call i32 @PACKET_memdup(i32* %10, i32** %138, i64* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %153, label %146

146:                                              ; preds = %133
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %148 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %149 = load i32, i32* @SSL_F_TLS_PROCESS_CERTIFICATE_REQUEST, align 4
  %150 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %151 = call i32 @SSLfatal(%struct.TYPE_15__* %147, i32 %148, i32 %149, i32 %150)
  %152 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %152, i32* %3, align 4
  br label %229

153:                                              ; preds = %133
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %155 = call i64 @SSL_USE_SIGALGS(%struct.TYPE_15__* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %191

157:                                              ; preds = %153
  %158 = load i32*, i32** %5, align 8
  %159 = call i32 @PACKET_get_length_prefixed_2(i32* %158, i32* %11)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %168, label %161

161:                                              ; preds = %157
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %163 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %164 = load i32, i32* @SSL_F_TLS_PROCESS_CERTIFICATE_REQUEST, align 4
  %165 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %166 = call i32 @SSLfatal(%struct.TYPE_15__* %162, i32 %163, i32 %164, i32 %165)
  %167 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %167, i32* %3, align 4
  br label %229

168:                                              ; preds = %157
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %170 = call i32 @tls1_save_sigalgs(%struct.TYPE_15__* %169, i32* %11, i32 0)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %179, label %172

172:                                              ; preds = %168
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %174 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %175 = load i32, i32* @SSL_F_TLS_PROCESS_CERTIFICATE_REQUEST, align 4
  %176 = load i32, i32* @SSL_R_SIGNATURE_ALGORITHMS_ERROR, align 4
  %177 = call i32 @SSLfatal(%struct.TYPE_15__* %173, i32 %174, i32 %175, i32 %176)
  %178 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %178, i32* %3, align 4
  br label %229

179:                                              ; preds = %168
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %181 = call i32 @tls1_process_sigalgs(%struct.TYPE_15__* %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %190, label %183

183:                                              ; preds = %179
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %185 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %186 = load i32, i32* @SSL_F_TLS_PROCESS_CERTIFICATE_REQUEST, align 4
  %187 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %188 = call i32 @SSLfatal(%struct.TYPE_15__* %184, i32 %185, i32 %186, i32 %187)
  %189 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %189, i32* %3, align 4
  br label %229

190:                                              ; preds = %179
  br label %191

191:                                              ; preds = %190, %153
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %193 = load i32*, i32** %5, align 8
  %194 = call i32 @parse_ca_names(%struct.TYPE_15__* %192, i32* %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %198, label %196

196:                                              ; preds = %191
  %197 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %197, i32* %3, align 4
  br label %229

198:                                              ; preds = %191
  br label %199

199:                                              ; preds = %198, %121
  %200 = load i32*, i32** %5, align 8
  %201 = call i64 @PACKET_remaining(i32* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %210

203:                                              ; preds = %199
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %205 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %206 = load i32, i32* @SSL_F_TLS_PROCESS_CERTIFICATE_REQUEST, align 4
  %207 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %208 = call i32 @SSLfatal(%struct.TYPE_15__* %204, i32 %205, i32 %206, i32 %207)
  %209 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %209, i32* %3, align 4
  br label %229

210:                                              ; preds = %199
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 2
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 0
  store i32 1, i32* %215, align 8
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %217 = call i64 @SSL_IS_TLS13(%struct.TYPE_15__* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %227

219:                                              ; preds = %210
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @SSL_PHA_REQUESTED, align 8
  %224 = icmp ne i64 %222, %223
  br i1 %224, label %225, label %227

225:                                              ; preds = %219
  %226 = load i32, i32* @MSG_PROCESS_CONTINUE_READING, align 4
  store i32 %226, i32* %3, align 4
  br label %229

227:                                              ; preds = %219, %210
  %228 = load i32, i32* @MSG_PROCESS_CONTINUE_PROCESSING, align 4
  store i32 %228, i32* %3, align 4
  br label %229

229:                                              ; preds = %227, %225, %203, %196, %183, %172, %161, %146, %126, %114, %104, %86, %75, %39
  %230 = load i32, i32* %3, align 4
  ret i32 %230
}

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_15__*) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

declare dso_local i32 @PACKET_get_length_prefixed_1(i32*, i32*) #1

declare dso_local i32 @PACKET_memdup(i32*, i32**, i64*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @PACKET_get_length_prefixed_2(i32*, i32*) #1

declare dso_local i32 @tls_collect_extensions(%struct.TYPE_15__*, i32*, i32, i32**, i32*, i32) #1

declare dso_local i32 @tls_parse_all_extensions(%struct.TYPE_15__*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @tls1_process_sigalgs(%struct.TYPE_15__*) #1

declare dso_local i64 @SSL_USE_SIGALGS(%struct.TYPE_15__*) #1

declare dso_local i32 @tls1_save_sigalgs(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @parse_ca_names(%struct.TYPE_15__*, i32*) #1

declare dso_local i64 @PACKET_remaining(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
