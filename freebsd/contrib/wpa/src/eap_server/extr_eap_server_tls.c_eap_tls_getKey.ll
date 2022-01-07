; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_tls.c_eap_tls_getKey.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_tls.c_eap_tls_getKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_tls_data = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EAP_TYPE_TLS = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"EXPORTER_EAP_TLS_Key_Material\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"client EAP encryption\00", align 1
@EAP_TLS_KEY_LEN = common dso_local global i64 0, align 8
@EAP_EMSK_LEN = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"EAP-TLS: Derived key\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"EAP-TLS: Failed to derive key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.eap_sm*, i8*, i64*)* @eap_tls_getKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @eap_tls_getKey(%struct.eap_sm* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.eap_tls_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [1 x i32], align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.eap_tls_data*
  store %struct.eap_tls_data* %15, %struct.eap_tls_data** %8, align 8
  %16 = getelementptr inbounds [1 x i32], [1 x i32]* %11, i64 0, i64 0
  %17 = load i32, i32* @EAP_TYPE_TLS, align 4
  store i32 %17, i32* %16, align 4
  store i32* null, i32** %12, align 8
  store i64 0, i64* %13, align 8
  %18 = load %struct.eap_tls_data*, %struct.eap_tls_data** %8, align 8
  %19 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SUCCESS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %63

24:                                               ; preds = %3
  %25 = load %struct.eap_tls_data*, %struct.eap_tls_data** %8, align 8
  %26 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %31 = getelementptr inbounds [1 x i32], [1 x i32]* %11, i64 0, i64 0
  store i32* %31, i32** %12, align 8
  store i64 1, i64* %13, align 8
  br label %33

32:                                               ; preds = %24
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %33

33:                                               ; preds = %32, %30
  %34 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %35 = load %struct.eap_tls_data*, %struct.eap_tls_data** %8, align 8
  %36 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %35, i32 0, i32 1
  %37 = load i8*, i8** %10, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = load i64, i64* %13, align 8
  %40 = load i64, i64* @EAP_TLS_KEY_LEN, align 8
  %41 = load i64, i64* @EAP_EMSK_LEN, align 8
  %42 = add i64 %40, %41
  %43 = call i32* @eap_server_tls_derive_key(%struct.eap_sm* %34, %struct.TYPE_2__* %36, i8* %37, i32* %38, i64 %39, i64 %42)
  store i32* %43, i32** %9, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %58

46:                                               ; preds = %33
  %47 = load i64, i64* @EAP_TLS_KEY_LEN, align 8
  %48 = load i64*, i64** %7, align 8
  store i64 %47, i64* %48, align 8
  %49 = load i32, i32* @MSG_DEBUG, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = load i64, i64* @EAP_TLS_KEY_LEN, align 8
  %52 = call i32 @wpa_hexdump(i32 %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32* %50, i64 %51)
  %53 = load i32*, i32** %9, align 8
  %54 = load i64, i64* @EAP_TLS_KEY_LEN, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i64, i64* @EAP_EMSK_LEN, align 8
  %57 = call i32 @os_memset(i32* %55, i32 0, i64 %56)
  br label %61

58:                                               ; preds = %33
  %59 = load i32, i32* @MSG_DEBUG, align 4
  %60 = call i32 @wpa_printf(i32 %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %46
  %62 = load i32*, i32** %9, align 8
  store i32* %62, i32** %4, align 8
  br label %63

63:                                               ; preds = %61, %23
  %64 = load i32*, i32** %4, align 8
  ret i32* %64
}

declare dso_local i32* @eap_server_tls_derive_key(%struct.eap_sm*, %struct.TYPE_2__*, i8*, i32*, i64, i64) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32 @os_memset(i32*, i32, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
