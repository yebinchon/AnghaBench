; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_peap.c_eap_peap_get_emsk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_peap.c_eap_peap_get_emsk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_peap_data = type { i64, i32, i64 }

@SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"client EAP encryption\00", align 1
@EAP_TLS_KEY_LEN = common dso_local global i32 0, align 4
@EAP_EMSK_LEN = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"EAP-PEAP: Derived EMSK\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"EAP-PEAP: Failed to derive EMSK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.eap_sm*, i8*, i64*)* @eap_peap_get_emsk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @eap_peap_get_emsk(%struct.eap_sm* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.eap_peap_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
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
  br label %66

19:                                               ; preds = %3
  %20 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %21 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32* null, i32** %4, align 8
  br label %66

25:                                               ; preds = %19
  %26 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %27 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %28 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %27, i32 0, i32 1
  %29 = load i32, i32* @EAP_TLS_KEY_LEN, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* @EAP_EMSK_LEN, align 8
  %32 = add i64 %30, %31
  %33 = trunc i64 %32 to i32
  %34 = call i32* @eap_server_tls_derive_key(%struct.eap_sm* %26, i32* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* null, i32 0, i32 %33)
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %61

37:                                               ; preds = %25
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* @EAP_TLS_KEY_LEN, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i64, i64* @EAP_EMSK_LEN, align 8
  %43 = call i32* @os_memdup(i32* %41, i64 %42)
  store i32* %43, i32** %10, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* @EAP_TLS_KEY_LEN, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* @EAP_EMSK_LEN, align 8
  %48 = add i64 %46, %47
  %49 = trunc i64 %48 to i32
  %50 = call i32 @bin_clear_free(i32* %44, i32 %49)
  %51 = load i32*, i32** %10, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %37
  store i32* null, i32** %4, align 8
  br label %66

54:                                               ; preds = %37
  %55 = load i64, i64* @EAP_EMSK_LEN, align 8
  %56 = load i64*, i64** %7, align 8
  store i64 %55, i64* %56, align 8
  %57 = load i32, i32* @MSG_DEBUG, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = load i64, i64* @EAP_EMSK_LEN, align 8
  %60 = call i32 @wpa_hexdump(i32 %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32* %58, i64 %59)
  br label %64

61:                                               ; preds = %25
  %62 = load i32, i32* @MSG_DEBUG, align 4
  %63 = call i32 @wpa_printf(i32 %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32* null, i32** %10, align 8
  br label %64

64:                                               ; preds = %61, %54
  %65 = load i32*, i32** %10, align 8
  store i32* %65, i32** %4, align 8
  br label %66

66:                                               ; preds = %64, %53, %24, %18
  %67 = load i32*, i32** %4, align 8
  ret i32* %67
}

declare dso_local i32* @eap_server_tls_derive_key(%struct.eap_sm*, i32*, i8*, i32*, i32, i32) #1

declare dso_local i32* @os_memdup(i32*, i64) #1

declare dso_local i32 @bin_clear_free(i32*, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
