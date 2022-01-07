; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_peap.c_eap_peap_req_success.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_peap.c_eap_peap_req_success.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_peap_data = type { i64, i64, i32 }

@FAILURE = common dso_local global i64 0, align 8
@FAILURE_REQ = common dso_local global i64 0, align 8
@TLV_REQ_SUCCESS = common dso_local global i32 0, align 4
@PHASE2_TLV = common dso_local global i64 0, align 8
@SUCCESS_REQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_peap_data*)* @eap_peap_req_success to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_peap_req_success(%struct.eap_sm* %0, %struct.eap_peap_data* %1) #0 {
  %3 = alloca %struct.eap_sm*, align 8
  %4 = alloca %struct.eap_peap_data*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %3, align 8
  store %struct.eap_peap_data* %1, %struct.eap_peap_data** %4, align 8
  %5 = load %struct.eap_peap_data*, %struct.eap_peap_data** %4, align 8
  %6 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @FAILURE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load %struct.eap_peap_data*, %struct.eap_peap_data** %4, align 8
  %12 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @FAILURE_REQ, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %10, %2
  %17 = load %struct.eap_peap_data*, %struct.eap_peap_data** %4, align 8
  %18 = load i64, i64* @FAILURE, align 8
  %19 = call i32 @eap_peap_state(%struct.eap_peap_data* %17, i64 %18)
  br label %36

20:                                               ; preds = %10
  %21 = load %struct.eap_peap_data*, %struct.eap_peap_data** %4, align 8
  %22 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load i32, i32* @TLV_REQ_SUCCESS, align 4
  %27 = load %struct.eap_peap_data*, %struct.eap_peap_data** %4, align 8
  %28 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.eap_peap_data*, %struct.eap_peap_data** %4, align 8
  %30 = load i64, i64* @PHASE2_TLV, align 8
  %31 = call i32 @eap_peap_state(%struct.eap_peap_data* %29, i64 %30)
  br label %36

32:                                               ; preds = %20
  %33 = load %struct.eap_peap_data*, %struct.eap_peap_data** %4, align 8
  %34 = load i64, i64* @SUCCESS_REQ, align 8
  %35 = call i32 @eap_peap_state(%struct.eap_peap_data* %33, i64 %34)
  br label %36

36:                                               ; preds = %16, %32, %25
  ret void
}

declare dso_local i32 @eap_peap_state(%struct.eap_peap_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
