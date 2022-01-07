; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_fast.c_eap_fast_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_fast.c_eap_fast_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.wpabuf = type { i32 }
%struct.eap_fast_data = type { i32 }

@EAP_TYPE_FAST = common dso_local global i32 0, align 4
@eap_fast_process_version = common dso_local global i32 0, align 4
@eap_fast_process_msg = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, i8*, %struct.wpabuf*)* @eap_fast_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_fast_process(%struct.eap_sm* %0, i8* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_fast_data*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.eap_fast_data*
  store %struct.eap_fast_data* %9, %struct.eap_fast_data** %7, align 8
  %10 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %11 = load %struct.eap_fast_data*, %struct.eap_fast_data** %7, align 8
  %12 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %11, i32 0, i32 0
  %13 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %14 = load %struct.eap_fast_data*, %struct.eap_fast_data** %7, align 8
  %15 = load i32, i32* @EAP_TYPE_FAST, align 4
  %16 = load i32, i32* @eap_fast_process_version, align 4
  %17 = load i32, i32* @eap_fast_process_msg, align 4
  %18 = call i64 @eap_server_tls_process(%struct.eap_sm* %10, i32* %12, %struct.wpabuf* %13, %struct.eap_fast_data* %14, i32 %15, i32 %16, i32 %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.eap_fast_data*, %struct.eap_fast_data** %7, align 8
  %22 = load i32, i32* @FAILURE, align 4
  %23 = call i32 @eap_fast_state(%struct.eap_fast_data* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %3
  ret void
}

declare dso_local i64 @eap_server_tls_process(%struct.eap_sm*, i32*, %struct.wpabuf*, %struct.eap_fast_data*, i32, i32, i32) #1

declare dso_local i32 @eap_fast_state(%struct.eap_fast_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
