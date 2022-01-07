; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_teap_common.c_eap_teap_tls_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_teap_common.c_eap_teap_tls_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"EAP-TEAP: MAC algorithm: HMAC-SHA1\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"EAP-TEAP: MAC algorithm: HMAC-SHA256\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"EAP-TEAP: MAC algorithm: HMAC-SHA384\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"EAP-TEAP: Unsupported TLS cipher suite 0x%04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i64, i32*, i64, i32*, i64)* @eap_teap_tls_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_teap_tls_mac(i32 %0, i32* %1, i64 %2, i32* %3, i64 %4, i32* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca [48 x i32], align 16
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32* %3, i32** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  %18 = getelementptr inbounds [48 x i32], [48 x i32]* %17, i64 0, i64 0
  %19 = call i32 @os_memset(i32* %18, i32 0, i64 192)
  %20 = load i32*, i32** %14, align 8
  %21 = load i64, i64* %15, align 8
  %22 = call i32 @os_memset(i32* %20, i32 0, i64 %21)
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @tls_cipher_suite_mac_sha1(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %7
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = call i32 (i32, i8*, ...) @wpa_printf(i32 %27, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %29 = load i32*, i32** %10, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = load i64, i64* %13, align 8
  %33 = getelementptr inbounds [48 x i32], [48 x i32]* %17, i64 0, i64 0
  %34 = call i32 @hmac_sha1(i32* %29, i64 %30, i32* %31, i64 %32, i32* %33)
  store i32 %34, i32* %16, align 4
  br label %67

35:                                               ; preds = %7
  %36 = load i32, i32* %9, align 4
  %37 = call i64 @tls_cipher_suite_mac_sha256(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load i32, i32* @MSG_DEBUG, align 4
  %41 = call i32 (i32, i8*, ...) @wpa_printf(i32 %40, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32*, i32** %10, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = load i64, i64* %13, align 8
  %46 = getelementptr inbounds [48 x i32], [48 x i32]* %17, i64 0, i64 0
  %47 = call i32 @hmac_sha256(i32* %42, i64 %43, i32* %44, i64 %45, i32* %46)
  store i32 %47, i32* %16, align 4
  br label %66

48:                                               ; preds = %35
  %49 = load i32, i32* %9, align 4
  %50 = call i64 @tls_cipher_suite_mac_sha384(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load i32, i32* @MSG_DEBUG, align 4
  %54 = call i32 (i32, i8*, ...) @wpa_printf(i32 %53, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32*, i32** %10, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = load i64, i64* %13, align 8
  %59 = getelementptr inbounds [48 x i32], [48 x i32]* %17, i64 0, i64 0
  %60 = call i32 @hmac_sha384(i32* %55, i64 %56, i32* %57, i64 %58, i32* %59)
  store i32 %60, i32* %16, align 4
  br label %65

61:                                               ; preds = %48
  %62 = load i32, i32* @MSG_INFO, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 (i32, i8*, ...) @wpa_printf(i32 %62, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  store i32 -1, i32* %16, align 4
  br label %65

65:                                               ; preds = %61, %52
  br label %66

66:                                               ; preds = %65, %39
  br label %67

67:                                               ; preds = %66, %26
  %68 = load i32, i32* %16, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* %16, align 4
  store i32 %71, i32* %8, align 4
  br label %81

72:                                               ; preds = %67
  %73 = load i64, i64* %15, align 8
  %74 = icmp ugt i64 %73, 192
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i64 192, i64* %15, align 8
  br label %76

76:                                               ; preds = %75, %72
  %77 = load i32*, i32** %14, align 8
  %78 = getelementptr inbounds [48 x i32], [48 x i32]* %17, i64 0, i64 0
  %79 = load i64, i64* %15, align 8
  %80 = call i32 @os_memcpy(i32* %77, i32* %78, i64 %79)
  store i32 0, i32* %8, align 4
  br label %81

81:                                               ; preds = %76, %70
  %82 = load i32, i32* %8, align 4
  ret i32 %82
}

declare dso_local i32 @os_memset(i32*, i32, i64) #1

declare dso_local i64 @tls_cipher_suite_mac_sha1(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @hmac_sha1(i32*, i64, i32*, i64, i32*) #1

declare dso_local i64 @tls_cipher_suite_mac_sha256(i32) #1

declare dso_local i32 @hmac_sha256(i32*, i64, i32*, i64, i32*) #1

declare dso_local i64 @tls_cipher_suite_mac_sha384(i32) #1

declare dso_local i32 @hmac_sha384(i32*, i64, i32*, i64, i32*) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
