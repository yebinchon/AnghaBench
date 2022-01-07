; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_ttls.c_eap_ttls_get_emsk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_ttls.c_eap_ttls_get_emsk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_ttls_data = type { i64, i32 }

@SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"ttls keying material\00", align 1
@EAP_TLS_KEY_LEN = common dso_local global i32 0, align 4
@EAP_EMSK_LEN = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"EAP-TTLS: Derived EMSK\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"EAP-TTLS: Failed to derive EMSK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.eap_sm*, i8*, i64*)* @eap_ttls_get_emsk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @eap_ttls_get_emsk(%struct.eap_sm* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.eap_ttls_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.eap_ttls_data*
  store %struct.eap_ttls_data* %12, %struct.eap_ttls_data** %8, align 8
  %13 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %14 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SUCCESS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %68

19:                                               ; preds = %3
  %20 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %21 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %22 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %21, i32 0, i32 1
  %23 = load i32, i32* @EAP_TLS_KEY_LEN, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* @EAP_EMSK_LEN, align 8
  %26 = add i64 %24, %25
  %27 = trunc i64 %26 to i32
  %28 = call i32* @eap_server_tls_derive_key(%struct.eap_sm* %20, i32* %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* null, i32 0, i32 %27)
  store i32* %28, i32** %9, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %52

31:                                               ; preds = %19
  %32 = load i64, i64* @EAP_EMSK_LEN, align 8
  %33 = call i32* @os_malloc(i64 %32)
  store i32* %33, i32** %10, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load i32*, i32** %10, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* @EAP_TLS_KEY_LEN, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i64, i64* @EAP_EMSK_LEN, align 8
  %43 = call i32 @os_memcpy(i32* %37, i32* %41, i64 %42)
  br label %44

44:                                               ; preds = %36, %31
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* @EAP_TLS_KEY_LEN, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* @EAP_EMSK_LEN, align 8
  %49 = add i64 %47, %48
  %50 = trunc i64 %49 to i32
  %51 = call i32 @bin_clear_free(i32* %45, i32 %50)
  br label %53

52:                                               ; preds = %19
  store i32* null, i32** %10, align 8
  br label %53

53:                                               ; preds = %52, %44
  %54 = load i32*, i32** %10, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load i64, i64* @EAP_EMSK_LEN, align 8
  %58 = load i64*, i64** %7, align 8
  store i64 %57, i64* %58, align 8
  %59 = load i32, i32* @MSG_DEBUG, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = load i64, i64* @EAP_EMSK_LEN, align 8
  %62 = call i32 @wpa_hexdump(i32 %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32* %60, i64 %61)
  br label %66

63:                                               ; preds = %53
  %64 = load i32, i32* @MSG_DEBUG, align 4
  %65 = call i32 @wpa_printf(i32 %64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %56
  %67 = load i32*, i32** %10, align 8
  store i32* %67, i32** %4, align 8
  br label %68

68:                                               ; preds = %66, %18
  %69 = load i32*, i32** %4, align 8
  ret i32* %69
}

declare dso_local i32* @eap_server_tls_derive_key(%struct.eap_sm*, i32*, i8*, i32*, i32, i32) #1

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

declare dso_local i32 @bin_clear_free(i32*, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
