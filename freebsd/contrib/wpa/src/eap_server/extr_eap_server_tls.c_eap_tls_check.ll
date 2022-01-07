; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_tls.c_eap_tls_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_tls.c_eap_tls_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.wpabuf = type { i32 }
%struct.eap_tls_data = type { i64 }

@EAP_UNAUTH_TLS_TYPE = common dso_local global i64 0, align 8
@EAP_VENDOR_UNAUTH_TLS = common dso_local global i32 0, align 4
@EAP_VENDOR_TYPE_UNAUTH_TLS = common dso_local global i64 0, align 8
@EAP_WFA_UNAUTH_TLS_TYPE = common dso_local global i64 0, align 8
@EAP_VENDOR_WFA_NEW = common dso_local global i32 0, align 4
@EAP_VENDOR_WFA_UNAUTH_TLS = common dso_local global i64 0, align 8
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"EAP-TLS: Invalid frame\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, i8*, %struct.wpabuf*)* @eap_tls_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_tls_check(%struct.eap_sm* %0, i8* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca %struct.eap_tls_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.eap_tls_data*
  store %struct.eap_tls_data* %12, %struct.eap_tls_data** %8, align 8
  %13 = load %struct.eap_tls_data*, %struct.eap_tls_data** %8, align 8
  %14 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @EAP_UNAUTH_TLS_TYPE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i32, i32* @EAP_VENDOR_UNAUTH_TLS, align 4
  %20 = load i64, i64* @EAP_VENDOR_TYPE_UNAUTH_TLS, align 8
  %21 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %22 = call i32* @eap_hdr_validate(i32 %19, i64 %20, %struct.wpabuf* %21, i64* %10)
  store i32* %22, i32** %9, align 8
  br label %42

23:                                               ; preds = %3
  %24 = load %struct.eap_tls_data*, %struct.eap_tls_data** %8, align 8
  %25 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @EAP_WFA_UNAUTH_TLS_TYPE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load i32, i32* @EAP_VENDOR_WFA_NEW, align 4
  %31 = load i64, i64* @EAP_VENDOR_WFA_UNAUTH_TLS, align 8
  %32 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %33 = call i32* @eap_hdr_validate(i32 %30, i64 %31, %struct.wpabuf* %32, i64* %10)
  store i32* %33, i32** %9, align 8
  br label %41

34:                                               ; preds = %23
  %35 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %36 = load %struct.eap_tls_data*, %struct.eap_tls_data** %8, align 8
  %37 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %40 = call i32* @eap_hdr_validate(i32 %35, i64 %38, %struct.wpabuf* %39, i64* %10)
  store i32* %40, i32** %9, align 8
  br label %41

41:                                               ; preds = %34, %29
  br label %42

42:                                               ; preds = %41, %18
  %43 = load i32*, i32** %9, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i64, i64* %10, align 8
  %47 = icmp ult i64 %46, 1
  br i1 %47, label %48, label %52

48:                                               ; preds = %45, %42
  %49 = load i32, i32* @MSG_INFO, align 4
  %50 = call i32 @wpa_printf(i32 %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @TRUE, align 4
  store i32 %51, i32* %4, align 4
  br label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @FALSE, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %48
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32* @eap_hdr_validate(i32, i64, %struct.wpabuf*, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
