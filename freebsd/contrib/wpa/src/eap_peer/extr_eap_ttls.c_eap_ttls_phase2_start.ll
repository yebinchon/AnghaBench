; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_phase2_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_phase2_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_ttls_data = type { i32, i32, %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.eap_method_ret = type { i32, i32 }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"EAP-TTLS: Session resumption - skip phase 2\00", align 1
@EAP_TYPE_TTLS = common dso_local global i32 0, align 4
@METHOD_DONE = common dso_local global i32 0, align 4
@DECISION_UNCOND_SUCC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_ttls_data*, %struct.eap_method_ret*, i32, %struct.wpabuf**)* @eap_ttls_phase2_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_ttls_phase2_start(%struct.eap_sm* %0, %struct.eap_ttls_data* %1, %struct.eap_method_ret* %2, i32 %3, %struct.wpabuf** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.eap_sm*, align 8
  %8 = alloca %struct.eap_ttls_data*, align 8
  %9 = alloca %struct.eap_method_ret*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.wpabuf**, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %7, align 8
  store %struct.eap_ttls_data* %1, %struct.eap_ttls_data** %8, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.wpabuf** %4, %struct.wpabuf*** %11, align 8
  %12 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %13 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %12, i32 0, i32 4
  store i64 0, i64* %13, align 8
  %14 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %15 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %5
  %19 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %20 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %23 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @tls_connection_resumed(i32 %21, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %18
  %29 = load i32, i32* @MSG_DEBUG, align 4
  %30 = call i32 @wpa_printf(i32 %29, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @EAP_TYPE_TTLS, align 4
  %33 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %34 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.wpabuf* @eap_peer_tls_build_ack(i32 %31, i32 %32, i32 %35)
  %37 = load %struct.wpabuf**, %struct.wpabuf*** %11, align 8
  store %struct.wpabuf* %36, %struct.wpabuf** %37, align 8
  %38 = load i32, i32* @METHOD_DONE, align 4
  %39 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %40 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @DECISION_UNCOND_SUCC, align 4
  %42 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %43 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %45 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  store i32 0, i32* %6, align 4
  br label %53

46:                                               ; preds = %18, %5
  %47 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %48 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %49 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.wpabuf**, %struct.wpabuf*** %11, align 8
  %52 = call i32 @eap_ttls_implicit_identity_request(%struct.eap_sm* %47, %struct.eap_ttls_data* %48, %struct.eap_method_ret* %49, i32 %50, %struct.wpabuf** %51)
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %46, %28
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i64 @tls_connection_resumed(i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @eap_peer_tls_build_ack(i32, i32, i32) #1

declare dso_local i32 @eap_ttls_implicit_identity_request(%struct.eap_sm*, %struct.eap_ttls_data*, %struct.eap_method_ret*, i32, %struct.wpabuf**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
