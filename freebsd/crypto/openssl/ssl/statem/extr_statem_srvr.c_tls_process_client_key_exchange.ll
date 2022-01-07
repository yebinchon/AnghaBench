; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_srvr.c_tls_process_client_key_exchange.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_srvr.c_tls_process_client_key_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32*, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }

@SSL_PSK = common dso_local global i64 0, align 8
@SSL_kPSK = common dso_local global i64 0, align 8
@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PROCESS_CLIENT_KEY_EXCHANGE = common dso_local global i32 0, align 4
@SSL_R_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@SSL_kRSA = common dso_local global i64 0, align 8
@SSL_kRSAPSK = common dso_local global i64 0, align 8
@SSL_kDHE = common dso_local global i64 0, align 8
@SSL_kDHEPSK = common dso_local global i64 0, align 8
@SSL_kECDHE = common dso_local global i64 0, align 8
@SSL_kECDHEPSK = common dso_local global i64 0, align 8
@SSL_kSRP = common dso_local global i64 0, align 8
@SSL_kGOST = common dso_local global i64 0, align 8
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_R_UNKNOWN_CIPHER_TYPE = common dso_local global i32 0, align 4
@MSG_PROCESS_CONTINUE_PROCESSING = common dso_local global i32 0, align 4
@MSG_PROCESS_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_process_client_key_exchange(%struct.TYPE_17__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @SSL_PSK, align 8
  %17 = and i64 %15, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @tls_process_cke_psk_preamble(%struct.TYPE_17__* %20, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %125

25:                                               ; preds = %19, %2
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @SSL_kPSK, align 8
  %28 = and i64 %26, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %25
  %31 = load i32*, i32** %5, align 8
  %32 = call i64 @PACKET_remaining(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %36 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %37 = load i32, i32* @SSL_F_TLS_PROCESS_CLIENT_KEY_EXCHANGE, align 4
  %38 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %39 = call i32 @SSLfatal(%struct.TYPE_17__* %35, i32 %36, i32 %37, i32 %38)
  br label %125

40:                                               ; preds = %30
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %42 = call i32 @ssl_generate_master_secret(%struct.TYPE_17__* %41, i32* null, i32 0, i32 0)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  br label %125

45:                                               ; preds = %40
  br label %123

46:                                               ; preds = %25
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* @SSL_kRSA, align 8
  %49 = load i64, i64* @SSL_kRSAPSK, align 8
  %50 = or i64 %48, %49
  %51 = and i64 %47, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @tls_process_cke_rsa(%struct.TYPE_17__* %54, i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  br label %125

59:                                               ; preds = %53
  br label %122

60:                                               ; preds = %46
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* @SSL_kDHE, align 8
  %63 = load i64, i64* @SSL_kDHEPSK, align 8
  %64 = or i64 %62, %63
  %65 = and i64 %61, %64
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @tls_process_cke_dhe(%struct.TYPE_17__* %68, i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  br label %125

73:                                               ; preds = %67
  br label %121

74:                                               ; preds = %60
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* @SSL_kECDHE, align 8
  %77 = load i64, i64* @SSL_kECDHEPSK, align 8
  %78 = or i64 %76, %77
  %79 = and i64 %75, %78
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %74
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 @tls_process_cke_ecdhe(%struct.TYPE_17__* %82, i32* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %81
  br label %125

87:                                               ; preds = %81
  br label %120

88:                                               ; preds = %74
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* @SSL_kSRP, align 8
  %91 = and i64 %89, %90
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %95 = load i32*, i32** %5, align 8
  %96 = call i32 @tls_process_cke_srp(%struct.TYPE_17__* %94, i32* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %93
  br label %125

99:                                               ; preds = %93
  br label %119

100:                                              ; preds = %88
  %101 = load i64, i64* %6, align 8
  %102 = load i64, i64* @SSL_kGOST, align 8
  %103 = and i64 %101, %102
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %100
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %107 = load i32*, i32** %5, align 8
  %108 = call i32 @tls_process_cke_gost(%struct.TYPE_17__* %106, i32* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %105
  br label %125

111:                                              ; preds = %105
  br label %118

112:                                              ; preds = %100
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %114 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %115 = load i32, i32* @SSL_F_TLS_PROCESS_CLIENT_KEY_EXCHANGE, align 4
  %116 = load i32, i32* @SSL_R_UNKNOWN_CIPHER_TYPE, align 4
  %117 = call i32 @SSLfatal(%struct.TYPE_17__* %113, i32 %114, i32 %115, i32 %116)
  br label %125

118:                                              ; preds = %111
  br label %119

119:                                              ; preds = %118, %99
  br label %120

120:                                              ; preds = %119, %87
  br label %121

121:                                              ; preds = %120, %73
  br label %122

122:                                              ; preds = %121, %59
  br label %123

123:                                              ; preds = %122, %45
  %124 = load i32, i32* @MSG_PROCESS_CONTINUE_PROCESSING, align 4
  store i32 %124, i32* %3, align 4
  br label %145

125:                                              ; preds = %112, %110, %98, %86, %72, %58, %44, %34, %24
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @OPENSSL_clear_free(i32* %131, i32 %137)
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  store i32* null, i32** %143, align 8
  %144 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %125, %123
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @tls_process_cke_psk_preamble(%struct.TYPE_17__*, i32*) #1

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @ssl_generate_master_secret(%struct.TYPE_17__*, i32*, i32, i32) #1

declare dso_local i32 @tls_process_cke_rsa(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @tls_process_cke_dhe(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @tls_process_cke_ecdhe(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @tls_process_cke_srp(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @tls_process_cke_gost(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @OPENSSL_clear_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
