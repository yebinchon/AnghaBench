; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tls.c_eap_tls_success.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tls.c_eap_tls_success.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_tls_data = type { i32, i64, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.eap_method_ret = type { i32, i32 }

@EAP_TYPE_TLS = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"EAP-TLS: Done\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"EAP-TLS: Fragment(s) remaining\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"EXPORTER_EAP_TLS_Key_Material\00", align 1
@METHOD_MAY_CONT = common dso_local global i32 0, align 4
@DECISION_COND_SUCC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"client EAP encryption\00", align 1
@METHOD_DONE = common dso_local global i32 0, align 4
@DECISION_UNCOND_SUCC = common dso_local global i32 0, align 4
@EAP_TLS_KEY_LEN = common dso_local global i64 0, align 8
@EAP_EMSK_LEN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"EAP-TLS: Derived key\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"EAP-TLS: Derived EMSK\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"EAP-TLS: Failed to derive key\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"EAP-TLS: Derived Session-Id\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"EAP-TLS: Failed to derive Session-Id\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_tls_data*, %struct.eap_method_ret*)* @eap_tls_success to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_tls_success(%struct.eap_sm* %0, %struct.eap_tls_data* %1, %struct.eap_method_ret* %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca %struct.eap_tls_data*, align 8
  %6 = alloca %struct.eap_method_ret*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [1 x i32], align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store %struct.eap_tls_data* %1, %struct.eap_tls_data** %5, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %6, align 8
  %11 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %12 = load i32, i32* @EAP_TYPE_TLS, align 4
  store i32 %12, i32* %11, align 4
  store i32* null, i32** %9, align 8
  store i64 0, i64* %10, align 8
  %13 = load i32, i32* @MSG_DEBUG, align 4
  %14 = call i32 @wpa_printf(i32 %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.eap_tls_data*, %struct.eap_tls_data** %5, align 8
  %16 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @MSG_DEBUG, align 4
  %22 = call i32 @wpa_printf(i32 %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %111

23:                                               ; preds = %3
  %24 = load %struct.eap_tls_data*, %struct.eap_tls_data** %5, align 8
  %25 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  %30 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  store i32* %30, i32** %9, align 8
  store i64 1, i64* %10, align 8
  %31 = load i32, i32* @METHOD_MAY_CONT, align 4
  %32 = load %struct.eap_method_ret*, %struct.eap_method_ret** %6, align 8
  %33 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @DECISION_COND_SUCC, align 4
  %35 = load %struct.eap_method_ret*, %struct.eap_method_ret** %6, align 8
  %36 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %44

37:                                               ; preds = %23
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  %38 = load i32, i32* @METHOD_DONE, align 4
  %39 = load %struct.eap_method_ret*, %struct.eap_method_ret** %6, align 8
  %40 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @DECISION_UNCOND_SUCC, align 4
  %42 = load %struct.eap_method_ret*, %struct.eap_method_ret** %6, align 8
  %43 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %37, %29
  %45 = load %struct.eap_tls_data*, %struct.eap_tls_data** %5, align 8
  %46 = call i32 @eap_tls_free_key(%struct.eap_tls_data* %45)
  %47 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %48 = load %struct.eap_tls_data*, %struct.eap_tls_data** %5, align 8
  %49 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %48, i32 0, i32 2
  %50 = load i8*, i8** %7, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* @EAP_TLS_KEY_LEN, align 8
  %54 = load i64, i64* @EAP_EMSK_LEN, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i64 @eap_peer_tls_derive_key(%struct.eap_sm* %47, %struct.TYPE_3__* %49, i8* %50, i32* %51, i64 %52, i64 %55)
  %57 = load %struct.eap_tls_data*, %struct.eap_tls_data** %5, align 8
  %58 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %57, i32 0, i32 3
  store i64 %56, i64* %58, align 8
  %59 = load %struct.eap_tls_data*, %struct.eap_tls_data** %5, align 8
  %60 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %44
  %64 = load i32, i32* @MSG_DEBUG, align 4
  %65 = load %struct.eap_tls_data*, %struct.eap_tls_data** %5, align 8
  %66 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @EAP_TLS_KEY_LEN, align 8
  %69 = call i32 @wpa_hexdump_key(i32 %64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 %67, i64 %68)
  %70 = load i32, i32* @MSG_DEBUG, align 4
  %71 = load %struct.eap_tls_data*, %struct.eap_tls_data** %5, align 8
  %72 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @EAP_TLS_KEY_LEN, align 8
  %75 = add nsw i64 %73, %74
  %76 = load i64, i64* @EAP_EMSK_LEN, align 8
  %77 = call i32 @wpa_hexdump_key(i32 %70, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i64 %75, i64 %76)
  br label %81

78:                                               ; preds = %44
  %79 = load i32, i32* @MSG_INFO, align 4
  %80 = call i32 @wpa_printf(i32 %79, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %63
  %82 = load %struct.eap_tls_data*, %struct.eap_tls_data** %5, align 8
  %83 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @os_free(i64 %84)
  %86 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %87 = load %struct.eap_tls_data*, %struct.eap_tls_data** %5, align 8
  %88 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %87, i32 0, i32 2
  %89 = load i32, i32* @EAP_TYPE_TLS, align 4
  %90 = load %struct.eap_tls_data*, %struct.eap_tls_data** %5, align 8
  %91 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %90, i32 0, i32 0
  %92 = call i64 @eap_peer_tls_derive_session_id(%struct.eap_sm* %86, %struct.TYPE_3__* %88, i32 %89, i32* %91)
  %93 = load %struct.eap_tls_data*, %struct.eap_tls_data** %5, align 8
  %94 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  %95 = load %struct.eap_tls_data*, %struct.eap_tls_data** %5, align 8
  %96 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %81
  %100 = load i32, i32* @MSG_DEBUG, align 4
  %101 = load %struct.eap_tls_data*, %struct.eap_tls_data** %5, align 8
  %102 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.eap_tls_data*, %struct.eap_tls_data** %5, align 8
  %105 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @wpa_hexdump(i32 %100, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i64 %103, i32 %106)
  br label %111

108:                                              ; preds = %81
  %109 = load i32, i32* @MSG_ERROR, align 4
  %110 = call i32 @wpa_printf(i32 %109, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  br label %111

111:                                              ; preds = %20, %108, %99
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @eap_tls_free_key(%struct.eap_tls_data*) #1

declare dso_local i64 @eap_peer_tls_derive_key(%struct.eap_sm*, %struct.TYPE_3__*, i8*, i32*, i64, i64) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i64, i64) #1

declare dso_local i32 @os_free(i64) #1

declare dso_local i64 @eap_peer_tls_derive_session_id(%struct.eap_sm*, %struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
