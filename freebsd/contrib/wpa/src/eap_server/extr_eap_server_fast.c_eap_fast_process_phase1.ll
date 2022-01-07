; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_fast.c_eap_fast_process_phase1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_fast.c_eap_fast_process_phase1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_fast_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"EAP-FAST: TLS processing failed\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_fast_data*)* @eap_fast_process_phase1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_fast_process_phase1(%struct.eap_sm* %0, %struct.eap_fast_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca %struct.eap_fast_data*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store %struct.eap_fast_data* %1, %struct.eap_fast_data** %5, align 8
  %6 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %7 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %8 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %7, i32 0, i32 0
  %9 = call i64 @eap_server_tls_phase1(%struct.eap_sm* %6, %struct.TYPE_2__* %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32, i32* @MSG_INFO, align 4
  %13 = call i32 @wpa_printf(i32 %12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %15 = load i32, i32* @FAILURE, align 4
  %16 = call i32 @eap_fast_state(%struct.eap_fast_data* %14, i32 %15)
  store i32 -1, i32* %3, align 4
  br label %39

17:                                               ; preds = %2
  %18 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %19 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %22 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @tls_connection_established(i32 %20, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %17
  %28 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %29 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @wpabuf_len(i32 %31)
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27, %17
  store i32 1, i32* %3, align 4
  br label %39

35:                                               ; preds = %27
  %36 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %37 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %38 = call i32 @eap_fast_phase1_done(%struct.eap_sm* %36, %struct.eap_fast_data* %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %34, %11
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @eap_server_tls_phase1(%struct.eap_sm*, %struct.TYPE_2__*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @eap_fast_state(%struct.eap_fast_data*, i32) #1

declare dso_local i32 @tls_connection_established(i32, i32) #1

declare dso_local i64 @wpabuf_len(i32) #1

declare dso_local i32 @eap_fast_phase1_done(%struct.eap_sm*, %struct.eap_fast_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
