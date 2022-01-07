; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_tls_common.c_eap_server_tls_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_tls_common.c_eap_server_tls_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_ssl_data = type { i32 }
%struct.wpabuf = type opaque

@EAP_UNAUTH_TLS_TYPE = common dso_local global i32 0, align 4
@EAP_VENDOR_UNAUTH_TLS = common dso_local global i32 0, align 4
@EAP_VENDOR_TYPE_UNAUTH_TLS = common dso_local global i32 0, align 4
@EAP_WFA_UNAUTH_TLS_TYPE = common dso_local global i32 0, align 4
@EAP_VENDOR_WFA_NEW = common dso_local global i32 0, align 4
@EAP_VENDOR_WFA_UNAUTH_TLS = common dso_local global i32 0, align 4
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"SSL: Received packet(len=%lu) - Flags 0x%02x\00", align 1
@EAP_TLS_VERSION_MASK = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"SSL: Locally detected fatal error in TLS processing\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_server_tls_process(%struct.eap_sm* %0, %struct.eap_ssl_data* %1, %struct.wpabuf* %2, i8* %3, i32 %4, i32 (%struct.eap_sm*, i8*, i32)* %5, void (%struct.eap_sm*, i8*, %struct.wpabuf*)* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.eap_sm*, align 8
  %10 = alloca %struct.eap_ssl_data*, align 8
  %11 = alloca %struct.wpabuf*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32 (%struct.eap_sm*, i8*, i32)*, align 8
  %15 = alloca void (%struct.eap_sm*, i8*, %struct.wpabuf*)*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %9, align 8
  store %struct.eap_ssl_data* %1, %struct.eap_ssl_data** %10, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 (%struct.eap_sm*, i8*, i32)* %5, i32 (%struct.eap_sm*, i8*, i32)** %14, align 8
  store void (%struct.eap_sm*, i8*, %struct.wpabuf*)* %6, void (%struct.eap_sm*, i8*, %struct.wpabuf*)** %15, align 8
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* @EAP_UNAUTH_TLS_TYPE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %7
  %25 = load i32, i32* @EAP_VENDOR_UNAUTH_TLS, align 4
  %26 = load i32, i32* @EAP_VENDOR_TYPE_UNAUTH_TLS, align 4
  %27 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %28 = call i32* @eap_hdr_validate(i32 %25, i32 %26, %struct.wpabuf* %27, i64* %18)
  store i32* %28, i32** %16, align 8
  br label %44

29:                                               ; preds = %7
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* @EAP_WFA_UNAUTH_TLS_TYPE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32, i32* @EAP_VENDOR_WFA_NEW, align 4
  %35 = load i32, i32* @EAP_VENDOR_WFA_UNAUTH_TLS, align 4
  %36 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %37 = call i32* @eap_hdr_validate(i32 %34, i32 %35, %struct.wpabuf* %36, i64* %18)
  store i32* %37, i32** %16, align 8
  br label %43

38:                                               ; preds = %29
  %39 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %42 = call i32* @eap_hdr_validate(i32 %39, i32 %40, %struct.wpabuf* %41, i64* %18)
  store i32* %42, i32** %16, align 8
  br label %43

43:                                               ; preds = %38, %33
  br label %44

44:                                               ; preds = %43, %24
  %45 = load i32*, i32** %16, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i64, i64* %18, align 8
  %49 = icmp ult i64 %48, 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %44
  store i32 0, i32* %8, align 4
  br label %111

51:                                               ; preds = %47
  %52 = load i32*, i32** %16, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %16, align 8
  %54 = load i32, i32* %52, align 4
  store i32 %54, i32* %17, align 4
  %55 = load i64, i64* %18, align 8
  %56 = add i64 %55, -1
  store i64 %56, i64* %18, align 8
  %57 = load i32, i32* @MSG_DEBUG, align 4
  %58 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %59 = call i64 @wpabuf_len(%struct.wpabuf* %58)
  %60 = load i32, i32* %17, align 4
  %61 = call i32 (i32, i8*, ...) @wpa_printf(i32 %57, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %59, i32 %60)
  %62 = load i32 (%struct.eap_sm*, i8*, i32)*, i32 (%struct.eap_sm*, i8*, i32)** %14, align 8
  %63 = icmp ne i32 (%struct.eap_sm*, i8*, i32)* %62, null
  br i1 %63, label %64, label %74

64:                                               ; preds = %51
  %65 = load i32 (%struct.eap_sm*, i8*, i32)*, i32 (%struct.eap_sm*, i8*, i32)** %14, align 8
  %66 = load %struct.eap_sm*, %struct.eap_sm** %9, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = load i32, i32* %17, align 4
  %69 = load i32, i32* @EAP_TLS_VERSION_MASK, align 4
  %70 = and i32 %68, %69
  %71 = call i32 %65(%struct.eap_sm* %66, i8* %67, i32 %70)
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  store i32 -1, i32* %8, align 4
  br label %111

74:                                               ; preds = %64, %51
  %75 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %76 = load i32, i32* %17, align 4
  %77 = call i32 @eap_server_tls_reassemble(%struct.eap_ssl_data* %75, i32 %76, i32** %16, i64* %18)
  store i32 %77, i32* %19, align 4
  %78 = load i32, i32* %19, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 -1, i32* %20, align 4
  br label %107

81:                                               ; preds = %74
  %82 = load i32, i32* %19, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 0, i32* %8, align 4
  br label %111

85:                                               ; preds = %81
  br label %86

86:                                               ; preds = %85
  %87 = load void (%struct.eap_sm*, i8*, %struct.wpabuf*)*, void (%struct.eap_sm*, i8*, %struct.wpabuf*)** %15, align 8
  %88 = icmp ne void (%struct.eap_sm*, i8*, %struct.wpabuf*)* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load void (%struct.eap_sm*, i8*, %struct.wpabuf*)*, void (%struct.eap_sm*, i8*, %struct.wpabuf*)** %15, align 8
  %91 = load %struct.eap_sm*, %struct.eap_sm** %9, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  call void %90(%struct.eap_sm* %91, i8* %92, %struct.wpabuf* %93)
  br label %94

94:                                               ; preds = %89, %86
  %95 = load %struct.eap_sm*, %struct.eap_sm** %9, align 8
  %96 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %99 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @tls_connection_get_write_alerts(i32 %97, i32 %100)
  %102 = icmp sgt i32 %101, 1
  br i1 %102, label %103, label %106

103:                                              ; preds = %94
  %104 = load i32, i32* @MSG_INFO, align 4
  %105 = call i32 (i32, i8*, ...) @wpa_printf(i32 %104, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %20, align 4
  br label %106

106:                                              ; preds = %103, %94
  br label %107

107:                                              ; preds = %106, %80
  %108 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %109 = call i32 @eap_server_tls_free_in_buf(%struct.eap_ssl_data* %108)
  %110 = load i32, i32* %20, align 4
  store i32 %110, i32* %8, align 4
  br label %111

111:                                              ; preds = %107, %84, %73, %50
  %112 = load i32, i32* %8, align 4
  ret i32 %112
}

declare dso_local i32* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @eap_server_tls_reassemble(%struct.eap_ssl_data*, i32, i32**, i64*) #1

declare dso_local i32 @tls_connection_get_write_alerts(i32, i32) #1

declare dso_local i32 @eap_server_tls_free_in_buf(%struct.eap_ssl_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
