; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_enc.c_tls1_alert_code.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_enc.c_tls1_alert_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL3_AD_CLOSE_NOTIFY = common dso_local global i32 0, align 4
@SSL3_AD_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@SSL3_AD_BAD_RECORD_MAC = common dso_local global i32 0, align 4
@TLS1_AD_DECRYPTION_FAILED = common dso_local global i32 0, align 4
@TLS1_AD_RECORD_OVERFLOW = common dso_local global i32 0, align 4
@SSL3_AD_DECOMPRESSION_FAILURE = common dso_local global i32 0, align 4
@SSL3_AD_HANDSHAKE_FAILURE = common dso_local global i32 0, align 4
@SSL3_AD_BAD_CERTIFICATE = common dso_local global i32 0, align 4
@SSL3_AD_UNSUPPORTED_CERTIFICATE = common dso_local global i32 0, align 4
@SSL3_AD_CERTIFICATE_REVOKED = common dso_local global i32 0, align 4
@SSL3_AD_CERTIFICATE_EXPIRED = common dso_local global i32 0, align 4
@SSL3_AD_CERTIFICATE_UNKNOWN = common dso_local global i32 0, align 4
@SSL3_AD_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@TLS1_AD_UNKNOWN_CA = common dso_local global i32 0, align 4
@TLS1_AD_ACCESS_DENIED = common dso_local global i32 0, align 4
@TLS1_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@TLS1_AD_DECRYPT_ERROR = common dso_local global i32 0, align 4
@TLS1_AD_EXPORT_RESTRICTION = common dso_local global i32 0, align 4
@TLS1_AD_PROTOCOL_VERSION = common dso_local global i32 0, align 4
@TLS1_AD_INSUFFICIENT_SECURITY = common dso_local global i32 0, align 4
@TLS1_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@TLS1_AD_USER_CANCELLED = common dso_local global i32 0, align 4
@TLS1_AD_NO_RENEGOTIATION = common dso_local global i32 0, align 4
@TLS1_AD_UNSUPPORTED_EXTENSION = common dso_local global i32 0, align 4
@TLS1_AD_CERTIFICATE_UNOBTAINABLE = common dso_local global i32 0, align 4
@TLS1_AD_UNRECOGNIZED_NAME = common dso_local global i32 0, align 4
@TLS1_AD_BAD_CERTIFICATE_STATUS_RESPONSE = common dso_local global i32 0, align 4
@TLS1_AD_BAD_CERTIFICATE_HASH_VALUE = common dso_local global i32 0, align 4
@TLS1_AD_UNKNOWN_PSK_IDENTITY = common dso_local global i32 0, align 4
@TLS1_AD_INAPPROPRIATE_FALLBACK = common dso_local global i32 0, align 4
@TLS1_AD_NO_APPLICATION_PROTOCOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls1_alert_code(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %69 [
    i32 150, label %5
    i32 134, label %7
    i32 156, label %9
    i32 147, label %11
    i32 135, label %13
    i32 148, label %15
    i32 144, label %17
    i32 138, label %19
    i32 159, label %20
    i32 130, label %22
    i32 153, label %24
    i32 155, label %26
    i32 152, label %28
    i32 143, label %30
    i32 133, label %32
    i32 160, label %34
    i32 149, label %36
    i32 146, label %38
    i32 145, label %40
    i32 136, label %42
    i32 141, label %44
    i32 140, label %46
    i32 128, label %48
    i32 137, label %50
    i32 129, label %52
    i32 151, label %54
    i32 131, label %56
    i32 157, label %58
    i32 158, label %60
    i32 132, label %62
    i32 142, label %64
    i32 139, label %66
    i32 154, label %68
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @SSL3_AD_CLOSE_NOTIFY, align 4
  store i32 %6, i32* %2, align 4
  br label %70

7:                                                ; preds = %1
  %8 = load i32, i32* @SSL3_AD_UNEXPECTED_MESSAGE, align 4
  store i32 %8, i32* %2, align 4
  br label %70

9:                                                ; preds = %1
  %10 = load i32, i32* @SSL3_AD_BAD_RECORD_MAC, align 4
  store i32 %10, i32* %2, align 4
  br label %70

11:                                               ; preds = %1
  %12 = load i32, i32* @TLS1_AD_DECRYPTION_FAILED, align 4
  store i32 %12, i32* %2, align 4
  br label %70

13:                                               ; preds = %1
  %14 = load i32, i32* @TLS1_AD_RECORD_OVERFLOW, align 4
  store i32 %14, i32* %2, align 4
  br label %70

15:                                               ; preds = %1
  %16 = load i32, i32* @SSL3_AD_DECOMPRESSION_FAILURE, align 4
  store i32 %16, i32* %2, align 4
  br label %70

17:                                               ; preds = %1
  %18 = load i32, i32* @SSL3_AD_HANDSHAKE_FAILURE, align 4
  store i32 %18, i32* %2, align 4
  br label %70

19:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %70

20:                                               ; preds = %1
  %21 = load i32, i32* @SSL3_AD_BAD_CERTIFICATE, align 4
  store i32 %21, i32* %2, align 4
  br label %70

22:                                               ; preds = %1
  %23 = load i32, i32* @SSL3_AD_UNSUPPORTED_CERTIFICATE, align 4
  store i32 %23, i32* %2, align 4
  br label %70

24:                                               ; preds = %1
  %25 = load i32, i32* @SSL3_AD_CERTIFICATE_REVOKED, align 4
  store i32 %25, i32* %2, align 4
  br label %70

26:                                               ; preds = %1
  %27 = load i32, i32* @SSL3_AD_CERTIFICATE_EXPIRED, align 4
  store i32 %27, i32* %2, align 4
  br label %70

28:                                               ; preds = %1
  %29 = load i32, i32* @SSL3_AD_CERTIFICATE_UNKNOWN, align 4
  store i32 %29, i32* %2, align 4
  br label %70

30:                                               ; preds = %1
  %31 = load i32, i32* @SSL3_AD_ILLEGAL_PARAMETER, align 4
  store i32 %31, i32* %2, align 4
  br label %70

32:                                               ; preds = %1
  %33 = load i32, i32* @TLS1_AD_UNKNOWN_CA, align 4
  store i32 %33, i32* %2, align 4
  br label %70

34:                                               ; preds = %1
  %35 = load i32, i32* @TLS1_AD_ACCESS_DENIED, align 4
  store i32 %35, i32* %2, align 4
  br label %70

36:                                               ; preds = %1
  %37 = load i32, i32* @TLS1_AD_DECODE_ERROR, align 4
  store i32 %37, i32* %2, align 4
  br label %70

38:                                               ; preds = %1
  %39 = load i32, i32* @TLS1_AD_DECRYPT_ERROR, align 4
  store i32 %39, i32* %2, align 4
  br label %70

40:                                               ; preds = %1
  %41 = load i32, i32* @TLS1_AD_EXPORT_RESTRICTION, align 4
  store i32 %41, i32* %2, align 4
  br label %70

42:                                               ; preds = %1
  %43 = load i32, i32* @TLS1_AD_PROTOCOL_VERSION, align 4
  store i32 %43, i32* %2, align 4
  br label %70

44:                                               ; preds = %1
  %45 = load i32, i32* @TLS1_AD_INSUFFICIENT_SECURITY, align 4
  store i32 %45, i32* %2, align 4
  br label %70

46:                                               ; preds = %1
  %47 = load i32, i32* @TLS1_AD_INTERNAL_ERROR, align 4
  store i32 %47, i32* %2, align 4
  br label %70

48:                                               ; preds = %1
  %49 = load i32, i32* @TLS1_AD_USER_CANCELLED, align 4
  store i32 %49, i32* %2, align 4
  br label %70

50:                                               ; preds = %1
  %51 = load i32, i32* @TLS1_AD_NO_RENEGOTIATION, align 4
  store i32 %51, i32* %2, align 4
  br label %70

52:                                               ; preds = %1
  %53 = load i32, i32* @TLS1_AD_UNSUPPORTED_EXTENSION, align 4
  store i32 %53, i32* %2, align 4
  br label %70

54:                                               ; preds = %1
  %55 = load i32, i32* @TLS1_AD_CERTIFICATE_UNOBTAINABLE, align 4
  store i32 %55, i32* %2, align 4
  br label %70

56:                                               ; preds = %1
  %57 = load i32, i32* @TLS1_AD_UNRECOGNIZED_NAME, align 4
  store i32 %57, i32* %2, align 4
  br label %70

58:                                               ; preds = %1
  %59 = load i32, i32* @TLS1_AD_BAD_CERTIFICATE_STATUS_RESPONSE, align 4
  store i32 %59, i32* %2, align 4
  br label %70

60:                                               ; preds = %1
  %61 = load i32, i32* @TLS1_AD_BAD_CERTIFICATE_HASH_VALUE, align 4
  store i32 %61, i32* %2, align 4
  br label %70

62:                                               ; preds = %1
  %63 = load i32, i32* @TLS1_AD_UNKNOWN_PSK_IDENTITY, align 4
  store i32 %63, i32* %2, align 4
  br label %70

64:                                               ; preds = %1
  %65 = load i32, i32* @TLS1_AD_INAPPROPRIATE_FALLBACK, align 4
  store i32 %65, i32* %2, align 4
  br label %70

66:                                               ; preds = %1
  %67 = load i32, i32* @TLS1_AD_NO_APPLICATION_PROTOCOL, align 4
  store i32 %67, i32* %2, align 4
  br label %70

68:                                               ; preds = %1
  store i32 144, i32* %2, align 4
  br label %70

69:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %68, %66, %64, %62, %60, %58, %56, %54, %52, %50, %48, %46, %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %24, %22, %20, %19, %17, %15, %13, %11, %9, %7, %5
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
