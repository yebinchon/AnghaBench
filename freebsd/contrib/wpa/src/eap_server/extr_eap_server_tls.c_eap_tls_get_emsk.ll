; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_tls.c_eap_tls_get_emsk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_tls.c_eap_tls_get_emsk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_tls_data = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EAP_TYPE_TLS = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"EXPORTER_EAP_TLS_Key_Material\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"client EAP encryption\00", align 1
@EAP_TLS_KEY_LEN = common dso_local global i32 0, align 4
@EAP_EMSK_LEN = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"EAP-TLS: Derived EMSK\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"EAP-TLS: Failed to derive EMSK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.eap_sm*, i8*, i64*)* @eap_tls_get_emsk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @eap_tls_get_emsk(%struct.eap_sm* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.eap_tls_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [1 x i32], align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.eap_tls_data*
  store %struct.eap_tls_data* %16, %struct.eap_tls_data** %8, align 8
  %17 = getelementptr inbounds [1 x i32], [1 x i32]* %12, i64 0, i64 0
  %18 = load i32, i32* @EAP_TYPE_TLS, align 4
  store i32 %18, i32* %17, align 4
  store i32* null, i32** %13, align 8
  store i64 0, i64* %14, align 8
  %19 = load %struct.eap_tls_data*, %struct.eap_tls_data** %8, align 8
  %20 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SUCCESS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %86

25:                                               ; preds = %3
  %26 = load %struct.eap_tls_data*, %struct.eap_tls_data** %8, align 8
  %27 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %32 = getelementptr inbounds [1 x i32], [1 x i32]* %12, i64 0, i64 0
  store i32* %32, i32** %13, align 8
  store i64 1, i64* %14, align 8
  br label %34

33:                                               ; preds = %25
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %34

34:                                               ; preds = %33, %31
  %35 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %36 = load %struct.eap_tls_data*, %struct.eap_tls_data** %8, align 8
  %37 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %36, i32 0, i32 1
  %38 = load i8*, i8** %11, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = load i64, i64* %14, align 8
  %41 = load i32, i32* @EAP_TLS_KEY_LEN, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* @EAP_EMSK_LEN, align 8
  %44 = add i64 %42, %43
  %45 = trunc i64 %44 to i32
  %46 = call i32* @eap_server_tls_derive_key(%struct.eap_sm* %35, %struct.TYPE_2__* %37, i8* %38, i32* %39, i64 %40, i32 %45)
  store i32* %46, i32** %9, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %70

49:                                               ; preds = %34
  %50 = load i64, i64* @EAP_EMSK_LEN, align 8
  %51 = call i32* @os_malloc(i64 %50)
  store i32* %51, i32** %10, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load i32*, i32** %10, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* @EAP_TLS_KEY_LEN, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i64, i64* @EAP_EMSK_LEN, align 8
  %61 = call i32 @os_memcpy(i32* %55, i32* %59, i64 %60)
  br label %62

62:                                               ; preds = %54, %49
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* @EAP_TLS_KEY_LEN, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* @EAP_EMSK_LEN, align 8
  %67 = add i64 %65, %66
  %68 = trunc i64 %67 to i32
  %69 = call i32 @bin_clear_free(i32* %63, i32 %68)
  br label %71

70:                                               ; preds = %34
  store i32* null, i32** %10, align 8
  br label %71

71:                                               ; preds = %70, %62
  %72 = load i32*, i32** %10, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load i64, i64* @EAP_EMSK_LEN, align 8
  %76 = load i64*, i64** %7, align 8
  store i64 %75, i64* %76, align 8
  %77 = load i32, i32* @MSG_DEBUG, align 4
  %78 = load i32*, i32** %10, align 8
  %79 = load i64, i64* @EAP_EMSK_LEN, align 8
  %80 = call i32 @wpa_hexdump(i32 %77, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32* %78, i64 %79)
  br label %84

81:                                               ; preds = %71
  %82 = load i32, i32* @MSG_DEBUG, align 4
  %83 = call i32 @wpa_printf(i32 %82, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %74
  %85 = load i32*, i32** %10, align 8
  store i32* %85, i32** %4, align 8
  br label %86

86:                                               ; preds = %84, %24
  %87 = load i32*, i32** %4, align 8
  ret i32* %87
}

declare dso_local i32* @eap_server_tls_derive_key(%struct.eap_sm*, %struct.TYPE_2__*, i8*, i32*, i64, i32) #1

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
