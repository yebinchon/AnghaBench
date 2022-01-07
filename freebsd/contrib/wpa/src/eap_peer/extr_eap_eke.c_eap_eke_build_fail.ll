; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_eke.c_eap_eke_build_fail.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_eke.c_eap_eke_build_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_eke_data = type { i32, i32 }
%struct.eap_method_ret = type { i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"EAP-EKE: Sending EAP-EKE-Failure/Response - code=0x%x\00", align 1
@EAP_EKE_FAILURE = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@METHOD_DONE = common dso_local global i32 0, align 4
@DECISION_FAIL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_eke_data*, %struct.eap_method_ret*, i32, i32)* @eap_eke_build_fail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_eke_build_fail(%struct.eap_eke_data* %0, %struct.eap_method_ret* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.eap_eke_data*, align 8
  %6 = alloca %struct.eap_method_ret*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wpabuf*, align 8
  store %struct.eap_eke_data* %0, %struct.eap_eke_data** %5, align 8
  store %struct.eap_method_ret* %1, %struct.eap_method_ret** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @MSG_DEBUG, align 4
  %11 = load i32, i32* %8, align 4
  %12 = call i32 @wpa_printf(i32 %10, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.eap_eke_data*, %struct.eap_eke_data** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @EAP_EKE_FAILURE, align 4
  %16 = call %struct.wpabuf* @eap_eke_build_msg(%struct.eap_eke_data* %13, i32 %14, i32 4, i32 %15)
  store %struct.wpabuf* %16, %struct.wpabuf** %9, align 8
  %17 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %18 = icmp ne %struct.wpabuf* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @wpabuf_put_be32(%struct.wpabuf* %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %4
  %24 = load %struct.eap_eke_data*, %struct.eap_eke_data** %5, align 8
  %25 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @os_memset(i32 %26, i32 0, i32 4)
  %28 = load %struct.eap_eke_data*, %struct.eap_eke_data** %5, align 8
  %29 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %28, i32 0, i32 0
  %30 = call i32 @eap_eke_session_clean(i32* %29)
  %31 = load %struct.eap_eke_data*, %struct.eap_eke_data** %5, align 8
  %32 = load i32, i32* @FAILURE, align 4
  %33 = call i32 @eap_eke_state(%struct.eap_eke_data* %31, i32 %32)
  %34 = load i32, i32* @METHOD_DONE, align 4
  %35 = load %struct.eap_method_ret*, %struct.eap_method_ret** %6, align 8
  %36 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @DECISION_FAIL, align 4
  %38 = load %struct.eap_method_ret*, %struct.eap_method_ret** %6, align 8
  %39 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @FALSE, align 4
  %41 = load %struct.eap_method_ret*, %struct.eap_method_ret** %6, align 8
  %42 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  ret %struct.wpabuf* %43
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local %struct.wpabuf* @eap_eke_build_msg(%struct.eap_eke_data*, i32, i32, i32) #1

declare dso_local i32 @wpabuf_put_be32(%struct.wpabuf*, i32) #1

declare dso_local i32 @os_memset(i32, i32, i32) #1

declare dso_local i32 @eap_eke_session_clean(i32*) #1

declare dso_local i32 @eap_eke_state(%struct.eap_eke_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
