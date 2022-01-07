; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_srvr.c_tls_post_process_client_hello.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_srvr.c_tls_post_process_client_hello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i8*, %struct.TYPE_25__*, %struct.TYPE_24__*, %struct.TYPE_22__, i64 (%struct.TYPE_27__*, i32)*, i32, i32, %struct.TYPE_21__* }
%struct.TYPE_25__ = type { %struct.TYPE_26__*, i64 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_26__* }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_27__*, i32)*, i32 }

@WORK_MORE_A = common dso_local global i64 0, align 8
@WORK_MORE_B = common dso_local global i64 0, align 8
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_POST_PROCESS_CLIENT_HELLO = common dso_local global i32 0, align 4
@SSL_R_CERT_CB_ERROR = common dso_local global i32 0, align 4
@SSL_X509_LOOKUP = common dso_local global i8* null, align 8
@SSL_NOTHING = common dso_local global i8* null, align 8
@SSL_AD_HANDSHAKE_FAILURE = common dso_local global i32 0, align 4
@SSL_R_NO_SHARED_CIPHER = common dso_local global i32 0, align 4
@SSL_kDHE = common dso_local global i32 0, align 4
@SSL_kECDHE = common dso_local global i32 0, align 4
@WORK_MORE_C = common dso_local global i64 0, align 8
@WORK_FINISHED_STOP = common dso_local global i64 0, align 8
@WORK_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tls_post_process_client_hello(%struct.TYPE_27__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @WORK_MORE_A, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %15 = call i32 @tls_early_post_process_client_hello(%struct.TYPE_27__* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %210

19:                                               ; preds = %13
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i64, i64* @WORK_MORE_A, align 8
  store i64 %23, i64* %3, align 8
  br label %212

24:                                               ; preds = %19
  %25 = load i64, i64* @WORK_MORE_B, align 8
  store i64 %25, i64* %5, align 8
  br label %26

26:                                               ; preds = %24, %2
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @WORK_MORE_B, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %190

30:                                               ; preds = %26
  %31 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %37 = call i64 @SSL_IS_TLS13(%struct.TYPE_27__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %163

39:                                               ; preds = %35, %30
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %84, label %44

44:                                               ; preds = %39
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %45, i32 0, i32 7
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  %49 = load i32 (%struct.TYPE_27__*, i32)*, i32 (%struct.TYPE_27__*, i32)** %48, align 8
  %50 = icmp ne i32 (%struct.TYPE_27__*, i32)* %49, null
  br i1 %50, label %51, label %84

51:                                               ; preds = %44
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %52, i32 0, i32 7
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  %56 = load i32 (%struct.TYPE_27__*, i32)*, i32 (%struct.TYPE_27__*, i32)** %55, align 8
  %57 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %58, i32 0, i32 7
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 %56(%struct.TYPE_27__* %57, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %51
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %68 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %69 = load i32, i32* @SSL_F_TLS_POST_PROCESS_CLIENT_HELLO, align 4
  %70 = load i32, i32* @SSL_R_CERT_CB_ERROR, align 4
  %71 = call i32 @SSLfatal(%struct.TYPE_27__* %67, i32 %68, i32 %69, i32 %70)
  br label %210

72:                                               ; preds = %51
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load i8*, i8** @SSL_X509_LOOKUP, align 8
  %77 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  %79 = load i64, i64* @WORK_MORE_B, align 8
  store i64 %79, i64* %3, align 8
  br label %212

80:                                               ; preds = %72
  %81 = load i8*, i8** @SSL_NOTHING, align 8
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  br label %84

84:                                               ; preds = %80, %44, %39
  %85 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %86 = call i64 @SSL_IS_TLS13(%struct.TYPE_27__* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %111, label %88

88:                                               ; preds = %84
  %89 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %94 = call i32 @SSL_get_ciphers(%struct.TYPE_27__* %93)
  %95 = call %struct.TYPE_26__* @ssl3_choose_cipher(%struct.TYPE_27__* %89, i32 %92, i32 %94)
  store %struct.TYPE_26__* %95, %struct.TYPE_26__** %6, align 8
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %97 = icmp eq %struct.TYPE_26__* %96, null
  br i1 %97, label %98, label %104

98:                                               ; preds = %88
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %100 = load i32, i32* @SSL_AD_HANDSHAKE_FAILURE, align 4
  %101 = load i32, i32* @SSL_F_TLS_POST_PROCESS_CLIENT_HELLO, align 4
  %102 = load i32, i32* @SSL_R_NO_SHARED_CIPHER, align 4
  %103 = call i32 @SSLfatal(%struct.TYPE_27__* %99, i32 %100, i32 %101, i32 %102)
  br label %210

104:                                              ; preds = %88
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 0
  store %struct.TYPE_26__* %105, %struct.TYPE_26__** %110, align 8
  br label %111

111:                                              ; preds = %104, %84
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %162, label %116

116:                                              ; preds = %111
  %117 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %118 = call i32 @tls_choose_sigalg(%struct.TYPE_27__* %117, i32 1)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %116
  br label %210

121:                                              ; preds = %116
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %122, i32 0, i32 4
  %124 = load i64 (%struct.TYPE_27__*, i32)*, i64 (%struct.TYPE_27__*, i32)** %123, align 8
  %125 = icmp ne i64 (%struct.TYPE_27__*, i32)* %124, null
  br i1 %125, label %126, label %150

126:                                              ; preds = %121
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %127, i32 0, i32 4
  %129 = load i64 (%struct.TYPE_27__*, i32)*, i64 (%struct.TYPE_27__*, i32)** %128, align 8
  %130 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %131 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_24__*, %struct.TYPE_24__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @SSL_kDHE, align 4
  %140 = load i32, i32* @SSL_kECDHE, align 4
  %141 = or i32 %139, %140
  %142 = and i32 %138, %141
  %143 = icmp ne i32 %142, 0
  %144 = zext i1 %143 to i32
  %145 = call i64 %129(%struct.TYPE_27__* %130, i32 %144)
  %146 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %148, i32 0, i32 1
  store i64 %145, i64* %149, align 8
  br label %150

150:                                              ; preds = %126, %121
  %151 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %150
  %158 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 0
  store i64 0, i64* %160, align 8
  br label %161

161:                                              ; preds = %157, %150
  br label %162

162:                                              ; preds = %161, %111
  br label %174

163:                                              ; preds = %35
  %164 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %167, align 8
  %169 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %169, i32 0, i32 2
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i32 0, i32 0
  store %struct.TYPE_26__* %168, %struct.TYPE_26__** %173, align 8
  br label %174

174:                                              ; preds = %163, %162
  %175 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %176 = call i32 @tls_handle_status_request(%struct.TYPE_27__* %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %174
  br label %210

179:                                              ; preds = %174
  %180 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %181 = call i64 @SSL_IS_TLS13(%struct.TYPE_27__* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %188, label %183

183:                                              ; preds = %179
  %184 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %185 = call i32 @tls_handle_alpn(%struct.TYPE_27__* %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %183
  br label %210

188:                                              ; preds = %183, %179
  %189 = load i64, i64* @WORK_MORE_C, align 8
  store i64 %189, i64* %5, align 8
  br label %190

190:                                              ; preds = %188, %26
  %191 = load i64, i64* %5, align 8
  %192 = load i64, i64* @WORK_MORE_C, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %208

194:                                              ; preds = %190
  %195 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %196 = call i32 @ssl_check_srp_ext_ClientHello(%struct.TYPE_27__* %195)
  store i32 %196, i32* %9, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %194
  %199 = load i8*, i8** @SSL_X509_LOOKUP, align 8
  %200 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %200, i32 0, i32 0
  store i8* %199, i8** %201, align 8
  %202 = load i64, i64* @WORK_MORE_C, align 8
  store i64 %202, i64* %3, align 8
  br label %212

203:                                              ; preds = %194
  %204 = load i32, i32* %9, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %203
  br label %210

207:                                              ; preds = %203
  br label %208

208:                                              ; preds = %207, %190
  %209 = load i64, i64* @WORK_FINISHED_STOP, align 8
  store i64 %209, i64* %3, align 8
  br label %212

210:                                              ; preds = %206, %187, %178, %120, %98, %66, %18
  %211 = load i64, i64* @WORK_ERROR, align 8
  store i64 %211, i64* %3, align 8
  br label %212

212:                                              ; preds = %210, %208, %198, %75, %22
  %213 = load i64, i64* %3, align 8
  ret i64 %213
}

declare dso_local i32 @tls_early_post_process_client_hello(%struct.TYPE_27__*) #1

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_27__*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_27__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_26__* @ssl3_choose_cipher(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i32 @SSL_get_ciphers(%struct.TYPE_27__*) #1

declare dso_local i32 @tls_choose_sigalg(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @tls_handle_status_request(%struct.TYPE_27__*) #1

declare dso_local i32 @tls_handle_alpn(%struct.TYPE_27__*) #1

declare dso_local i32 @ssl_check_srp_ext_ClientHello(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
