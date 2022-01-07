; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_peap.c_eap_peap_getKey.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_peap.c_eap_peap_getKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_peap_data = type { i64, i32, i32, i32, i64 }

@SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Session Key Generating Function\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"EAP-PEAP: CSK\00", align 1
@EAP_TLS_KEY_LEN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"EAP-PEAP: Derived key\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"EAP-PEAP: Failed to derive key\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"client EAP encryption\00", align 1
@EAP_EMSK_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.eap_sm*, i8*, i64*)* @eap_peap_getKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @eap_peap_getKey(%struct.eap_sm* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.eap_peap_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [128 x i32], align 16
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.eap_peap_data*
  store %struct.eap_peap_data* %12, %struct.eap_peap_data** %8, align 8
  %13 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %14 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SUCCESS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %88

19:                                               ; preds = %3
  %20 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %21 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %61

24:                                               ; preds = %19
  %25 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %26 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %29 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [128 x i32], [128 x i32]* %10, i64 0, i64 0
  %32 = call i64 @peap_prfplus(i32 %27, i32 %30, i32 40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32* bitcast ([2 x i8]* @.str.1 to i32*), i32 1, i32* %31, i32 512)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  store i32* null, i32** %4, align 8
  br label %88

35:                                               ; preds = %24
  %36 = load i32, i32* @MSG_DEBUG, align 4
  %37 = getelementptr inbounds [128 x i32], [128 x i32]* %10, i64 0, i64 0
  %38 = call i32 @wpa_hexdump_key(i32 %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %37, i32 512)
  %39 = load i64, i64* @EAP_TLS_KEY_LEN, align 8
  %40 = call i32* @os_malloc(i64 %39)
  store i32* %40, i32** %9, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %54

43:                                               ; preds = %35
  %44 = load i32*, i32** %9, align 8
  %45 = getelementptr inbounds [128 x i32], [128 x i32]* %10, i64 0, i64 0
  %46 = load i64, i64* @EAP_TLS_KEY_LEN, align 8
  %47 = call i32 @os_memcpy(i32* %44, i32* %45, i64 %46)
  %48 = load i64, i64* @EAP_TLS_KEY_LEN, align 8
  %49 = load i64*, i64** %7, align 8
  store i64 %48, i64* %49, align 8
  %50 = load i32, i32* @MSG_DEBUG, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = load i64, i64* @EAP_TLS_KEY_LEN, align 8
  %53 = call i32 @wpa_hexdump(i32 %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32* %51, i64 %52)
  br label %57

54:                                               ; preds = %35
  %55 = load i32, i32* @MSG_DEBUG, align 4
  %56 = call i32 @wpa_printf(i32 %55, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %43
  %58 = getelementptr inbounds [128 x i32], [128 x i32]* %10, i64 0, i64 0
  %59 = call i32 @forced_memzero(i32* %58, i32 512)
  %60 = load i32*, i32** %9, align 8
  store i32* %60, i32** %4, align 8
  br label %88

61:                                               ; preds = %19
  %62 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %63 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %64 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %63, i32 0, i32 1
  %65 = load i64, i64* @EAP_TLS_KEY_LEN, align 8
  %66 = load i64, i64* @EAP_EMSK_LEN, align 8
  %67 = add i64 %65, %66
  %68 = call i32* @eap_server_tls_derive_key(%struct.eap_sm* %62, i32* %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32* null, i32 0, i64 %67)
  store i32* %68, i32** %9, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %83

71:                                               ; preds = %61
  %72 = load i32*, i32** %9, align 8
  %73 = load i64, i64* @EAP_TLS_KEY_LEN, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i64, i64* @EAP_EMSK_LEN, align 8
  %76 = call i32 @os_memset(i32* %74, i32 0, i64 %75)
  %77 = load i64, i64* @EAP_TLS_KEY_LEN, align 8
  %78 = load i64*, i64** %7, align 8
  store i64 %77, i64* %78, align 8
  %79 = load i32, i32* @MSG_DEBUG, align 4
  %80 = load i32*, i32** %9, align 8
  %81 = load i64, i64* @EAP_TLS_KEY_LEN, align 8
  %82 = call i32 @wpa_hexdump(i32 %79, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32* %80, i64 %81)
  br label %86

83:                                               ; preds = %61
  %84 = load i32, i32* @MSG_DEBUG, align 4
  %85 = call i32 @wpa_printf(i32 %84, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %71
  %87 = load i32*, i32** %9, align 8
  store i32* %87, i32** %4, align 8
  br label %88

88:                                               ; preds = %86, %57, %34, %18
  %89 = load i32*, i32** %4, align 8
  ret i32* %89
}

declare dso_local i64 @peap_prfplus(i32, i32, i32, i8*, i32*, i32, i32*, i32) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #1

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @forced_memzero(i32*, i32) #1

declare dso_local i32* @eap_server_tls_derive_key(%struct.eap_sm*, i32*, i8*, i32*, i32, i64) #1

declare dso_local i32 @os_memset(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
