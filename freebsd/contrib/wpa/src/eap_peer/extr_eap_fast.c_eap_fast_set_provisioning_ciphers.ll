; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_set_provisioning_ciphers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_set_provisioning_ciphers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_fast_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EAP_FAST_PROV_UNAUTH = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"EAP-FAST: Enabling unauthenticated provisioning TLS cipher suites\00", align 1
@TLS_CIPHER_ANON_DH_AES128_SHA = common dso_local global i32 0, align 4
@EAP_FAST_PROV_AUTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"EAP-FAST: Enabling authenticated provisioning TLS cipher suites\00", align 1
@TLS_CIPHER_RSA_DHE_AES256_SHA = common dso_local global i32 0, align 4
@TLS_CIPHER_RSA_DHE_AES128_SHA = common dso_local global i32 0, align 4
@TLS_CIPHER_AES256_SHA = common dso_local global i32 0, align 4
@TLS_CIPHER_AES128_SHA = common dso_local global i32 0, align 4
@TLS_CIPHER_RC4_SHA = common dso_local global i32 0, align 4
@TLS_CIPHER_NONE = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"EAP-FAST: Could not configure TLS cipher suites for provisioning\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_fast_data*)* @eap_fast_set_provisioning_ciphers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_fast_set_provisioning_ciphers(%struct.eap_sm* %0, %struct.eap_fast_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca %struct.eap_fast_data*, align 8
  %6 = alloca [7 x i32], align 16
  %7 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store %struct.eap_fast_data* %1, %struct.eap_fast_data** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %9 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @EAP_FAST_PROV_UNAUTH, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load i32, i32* @MSG_DEBUG, align 4
  %16 = call i32 @wpa_printf(i32 %15, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @TLS_CIPHER_ANON_DH_AES128_SHA, align 4
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %7, align 4
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 %20
  store i32 %17, i32* %21, align 4
  br label %22

22:                                               ; preds = %14, %2
  %23 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %24 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @EAP_FAST_PROV_AUTH, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %57

29:                                               ; preds = %22
  %30 = load i32, i32* @MSG_DEBUG, align 4
  %31 = call i32 @wpa_printf(i32 %30, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @TLS_CIPHER_RSA_DHE_AES256_SHA, align 4
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 %35
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* @TLS_CIPHER_RSA_DHE_AES128_SHA, align 4
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 %40
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* @TLS_CIPHER_AES256_SHA, align 4
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 %45
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* @TLS_CIPHER_AES128_SHA, align 4
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 %50
  store i32 %47, i32* %51, align 4
  %52 = load i32, i32* @TLS_CIPHER_RC4_SHA, align 4
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 %55
  store i32 %52, i32* %56, align 4
  br label %57

57:                                               ; preds = %29, %22
  %58 = load i32, i32* @TLS_CIPHER_NONE, align 4
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 %61
  store i32 %58, i32* %62, align 4
  %63 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %64 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %67 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  %71 = call i64 @tls_connection_set_cipher_list(i32 %65, i32 %69, i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %57
  %74 = load i32, i32* @MSG_INFO, align 4
  %75 = call i32 @wpa_printf(i32 %74, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %77

76:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %73
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @tls_connection_set_cipher_list(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
