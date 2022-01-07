; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_lib.c_tls_process_change_cipher_spec.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_lib.c_tls_process_change_cipher_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }

@DTLS1_BAD_VER = common dso_local global i64 0, align 8
@DTLS1_CCS_HEADER_LENGTH = common dso_local global i32 0, align 4
@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PROCESS_CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@SSL_R_BAD_CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@MSG_PROCESS_ERROR = common dso_local global i32 0, align 4
@SSL_AD_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@SSL_R_CCS_RECEIVED_EARLY = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL3_CC_READ = common dso_local global i32 0, align 4
@BIO_CTRL_DGRAM_SCTP_AUTH_CCS_RCVD = common dso_local global i32 0, align 4
@MSG_PROCESS_CONTINUE_READING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_process_change_cipher_spec(%struct.TYPE_14__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = call i64 @PACKET_remaining(i32* %7)
  store i64 %8, i64* %6, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %10 = call i64 @SSL_IS_DTLS(%struct.TYPE_14__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %44

12:                                               ; preds = %2
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DTLS1_BAD_VER, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load i64, i64* %6, align 8
  %20 = load i32, i32* @DTLS1_CCS_HEADER_LENGTH, align 4
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %36, label %24

24:                                               ; preds = %18, %12
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DTLS1_BAD_VER, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %24
  %31 = load i64, i64* %6, align 8
  %32 = load i32, i32* @DTLS1_CCS_HEADER_LENGTH, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %30, %18
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %39 = load i32, i32* @SSL_F_TLS_PROCESS_CHANGE_CIPHER_SPEC, align 4
  %40 = load i32, i32* @SSL_R_BAD_CHANGE_CIPHER_SPEC, align 4
  %41 = call i32 @SSLfatal(%struct.TYPE_14__* %37, i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %42, i32* %3, align 4
  br label %112

43:                                               ; preds = %30, %24
  br label %55

44:                                               ; preds = %2
  %45 = load i64, i64* %6, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %49 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %50 = load i32, i32* @SSL_F_TLS_PROCESS_CHANGE_CIPHER_SPEC, align 4
  %51 = load i32, i32* @SSL_R_BAD_CHANGE_CIPHER_SPEC, align 4
  %52 = call i32 @SSLfatal(%struct.TYPE_14__* %48, i32 %49, i32 %50, i32 %51)
  %53 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %53, i32* %3, align 4
  br label %112

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54, %43
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %55
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %65 = load i32, i32* @SSL_AD_UNEXPECTED_MESSAGE, align 4
  %66 = load i32, i32* @SSL_F_TLS_PROCESS_CHANGE_CIPHER_SPEC, align 4
  %67 = load i32, i32* @SSL_R_CCS_RECEIVED_EARLY, align 4
  %68 = call i32 @SSLfatal(%struct.TYPE_14__* %64, i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %69, i32* %3, align 4
  br label %112

70:                                               ; preds = %55
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %76 = call i32 @ssl3_do_change_cipher_spec(%struct.TYPE_14__* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %70
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %80 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %81 = load i32, i32* @SSL_F_TLS_PROCESS_CHANGE_CIPHER_SPEC, align 4
  %82 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %83 = call i32 @SSLfatal(%struct.TYPE_14__* %79, i32 %80, i32 %81, i32 %82)
  %84 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %84, i32* %3, align 4
  br label %112

85:                                               ; preds = %70
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %87 = call i64 @SSL_IS_DTLS(%struct.TYPE_14__* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %110

89:                                               ; preds = %85
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %91 = load i32, i32* @SSL3_CC_READ, align 4
  %92 = call i32 @dtls1_reset_seq_numbers(%struct.TYPE_14__* %90, i32 %91)
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @DTLS1_BAD_VER, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %89
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %98, %89
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %107 = call i32 @SSL_get_wbio(%struct.TYPE_14__* %106)
  %108 = load i32, i32* @BIO_CTRL_DGRAM_SCTP_AUTH_CCS_RCVD, align 4
  %109 = call i32 @BIO_ctrl(i32 %107, i32 %108, i32 1, i32* null)
  br label %110

110:                                              ; preds = %105, %85
  %111 = load i32, i32* @MSG_PROCESS_CONTINUE_READING, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %110, %78, %63, %47, %36
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i64 @SSL_IS_DTLS(%struct.TYPE_14__*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @ssl3_do_change_cipher_spec(%struct.TYPE_14__*) #1

declare dso_local i32 @dtls1_reset_seq_numbers(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @BIO_ctrl(i32, i32, i32, i32*) #1

declare dso_local i32 @SSL_get_wbio(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
