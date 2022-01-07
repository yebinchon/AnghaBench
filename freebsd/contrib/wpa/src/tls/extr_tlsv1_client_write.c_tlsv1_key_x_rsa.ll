; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_write.c_tlsv1_key_x_rsa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_write.c_tlsv1_key_x_rsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { i32* }

@TLS_PRE_MASTER_SECRET_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"TLSv1: Failed to derive keys\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"TLSv1: No server RSA key to use for encrypting pre-master secret\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"TLSv1: RSA encryption failed\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"TLSv1: Encrypted pre_master_secret\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_client*, i32**, i32*)* @tlsv1_key_x_rsa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlsv1_key_x_rsa(%struct.tlsv1_client* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tlsv1_client*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* @TLS_PRE_MASTER_SECRET_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = call i64 @tls_derive_pre_master_secret(i32* %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %21 = load i32, i32* @TLS_PRE_MASTER_SECRET_LEN, align 4
  %22 = call i64 @tls_derive_keys(%struct.tlsv1_client* %20, i32* %16, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19, %3
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = call i32 @wpa_printf(i32 %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %28 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %29 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %30 = call i32 @tls_alert(%struct.tlsv1_client* %27, i32 %28, i32 %29)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %87

31:                                               ; preds = %19
  %32 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %33 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i32, i32* @MSG_DEBUG, align 4
  %38 = call i32 @wpa_printf(i32 %37, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %40 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %41 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %42 = call i32 @tls_alert(%struct.tlsv1_client* %39, i32 %40, i32 %41)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %87

43:                                               ; preds = %31
  %44 = load i32**, i32*** %6, align 8
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  store i32* %46, i32** %44, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i32**, i32*** %6, align 8
  %49 = load i32*, i32** %48, align 8
  %50 = ptrtoint i32* %47 to i64
  %51 = ptrtoint i32* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 4
  store i64 %53, i64* %10, align 8
  %54 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %55 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* @TLS_PRE_MASTER_SECRET_LEN, align 4
  %58 = load i32**, i32*** %6, align 8
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @crypto_public_key_encrypt_pkcs1_v15(i32* %56, i32* %16, i32 %57, i32* %59, i64* %10)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* @TLS_PRE_MASTER_SECRET_LEN, align 4
  %62 = call i32 @os_memset(i32* %16, i32 0, i32 %61)
  %63 = load i32, i32* %11, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %43
  %66 = load i32, i32* @MSG_DEBUG, align 4
  %67 = call i32 @wpa_printf(i32 %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %68 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %69 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %70 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %71 = call i32 @tls_alert(%struct.tlsv1_client* %68, i32 %69, i32 %70)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %87

72:                                               ; preds = %43
  %73 = load i32**, i32*** %6, align 8
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 -2
  %76 = load i64, i64* %10, align 8
  %77 = call i32 @WPA_PUT_BE16(i32* %75, i64 %76)
  %78 = load i32, i32* @MSG_MSGDUMP, align 4
  %79 = load i32**, i32*** %6, align 8
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* %10, align 8
  %82 = call i32 @wpa_hexdump(i32 %78, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32* %80, i64 %81)
  %83 = load i64, i64* %10, align 8
  %84 = load i32**, i32*** %6, align 8
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 %83
  store i32* %86, i32** %84, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %87

87:                                               ; preds = %72, %65, %36, %24
  %88 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %88)
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @tls_derive_pre_master_secret(i32*) #2

declare dso_local i64 @tls_derive_keys(%struct.tlsv1_client*, i32*, i32) #2

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i32 @tls_alert(%struct.tlsv1_client*, i32, i32) #2

declare dso_local i32 @crypto_public_key_encrypt_pkcs1_v15(i32*, i32*, i32, i32*, i64*) #2

declare dso_local i32 @os_memset(i32*, i32, i32) #2

declare dso_local i32 @WPA_PUT_BE16(i32*, i64) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
