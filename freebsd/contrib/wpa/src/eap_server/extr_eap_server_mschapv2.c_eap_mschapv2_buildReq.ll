; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_mschapv2.c_eap_mschapv2_buildReq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_mschapv2.c_eap_mschapv2_buildReq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_mschapv2_data = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"EAP-MSCHAPV2: Unknown state %d in buildReq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, i8*, i32)* @eap_mschapv2_buildReq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_mschapv2_buildReq(%struct.eap_sm* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.eap_mschapv2_data*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.eap_mschapv2_data*
  store %struct.eap_mschapv2_data* %10, %struct.eap_mschapv2_data** %8, align 8
  %11 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %8, align 8
  %12 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %29 [
    i32 130, label %14
    i32 128, label %19
    i32 129, label %24
  ]

14:                                               ; preds = %3
  %15 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %16 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %8, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.wpabuf* @eap_mschapv2_build_challenge(%struct.eap_sm* %15, %struct.eap_mschapv2_data* %16, i32 %17)
  store %struct.wpabuf* %18, %struct.wpabuf** %4, align 8
  br label %36

19:                                               ; preds = %3
  %20 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %21 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %8, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.wpabuf* @eap_mschapv2_build_success_req(%struct.eap_sm* %20, %struct.eap_mschapv2_data* %21, i32 %22)
  store %struct.wpabuf* %23, %struct.wpabuf** %4, align 8
  br label %36

24:                                               ; preds = %3
  %25 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %26 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %8, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.wpabuf* @eap_mschapv2_build_failure_req(%struct.eap_sm* %25, %struct.eap_mschapv2_data* %26, i32 %27)
  store %struct.wpabuf* %28, %struct.wpabuf** %4, align 8
  br label %36

29:                                               ; preds = %3
  %30 = load i32, i32* @MSG_DEBUG, align 4
  %31 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %8, align 8
  %32 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @wpa_printf(i32 %30, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %29
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %36

36:                                               ; preds = %35, %24, %19, %14
  %37 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %37
}

declare dso_local %struct.wpabuf* @eap_mschapv2_build_challenge(%struct.eap_sm*, %struct.eap_mschapv2_data*, i32) #1

declare dso_local %struct.wpabuf* @eap_mschapv2_build_success_req(%struct.eap_sm*, %struct.eap_mschapv2_data*, i32) #1

declare dso_local %struct.wpabuf* @eap_mschapv2_build_failure_req(%struct.eap_sm*, %struct.eap_mschapv2_data*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
