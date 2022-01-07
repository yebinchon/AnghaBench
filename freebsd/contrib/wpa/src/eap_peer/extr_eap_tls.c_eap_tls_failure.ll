; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tls.c_eap_tls_failure.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tls.c_eap_tls_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_tls_data = type { i32 }
%struct.eap_method_ret = type { i32, i32 }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"EAP-TLS: TLS processing failed\00", align 1
@METHOD_DONE = common dso_local global i32 0, align 4
@DECISION_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_tls_data*, %struct.eap_method_ret*, i32, %struct.wpabuf*, i32)* @eap_tls_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_tls_failure(%struct.eap_sm* %0, %struct.eap_tls_data* %1, %struct.eap_method_ret* %2, i32 %3, %struct.wpabuf* %4, i32 %5) #0 {
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca %struct.eap_sm*, align 8
  %9 = alloca %struct.eap_tls_data*, align 8
  %10 = alloca %struct.eap_method_ret*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.wpabuf*, align 8
  %13 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %8, align 8
  store %struct.eap_tls_data* %1, %struct.eap_tls_data** %9, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.wpabuf* %4, %struct.wpabuf** %12, align 8
  store i32 %5, i32* %13, align 4
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = call i32 @wpa_printf(i32 %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @METHOD_DONE, align 4
  %17 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %18 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @DECISION_FAIL, align 4
  %20 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %21 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %23 = icmp ne %struct.wpabuf* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  store %struct.wpabuf* %25, %struct.wpabuf** %7, align 8
  br label %32

26:                                               ; preds = %6
  %27 = load i32, i32* %13, align 4
  %28 = load %struct.eap_tls_data*, %struct.eap_tls_data** %9, align 8
  %29 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.wpabuf* @eap_peer_tls_build_ack(i32 %27, i32 %30, i32 0)
  store %struct.wpabuf* %31, %struct.wpabuf** %7, align 8
  br label %32

32:                                               ; preds = %26, %24
  %33 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  ret %struct.wpabuf* %33
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @eap_peer_tls_build_ack(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
