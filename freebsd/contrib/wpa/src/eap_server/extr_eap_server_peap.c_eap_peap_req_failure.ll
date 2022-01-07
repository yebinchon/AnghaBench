; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_peap.c_eap_peap_req_failure.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_peap.c_eap_peap_req_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_peap_data = type { i64, i64, i64 }

@FAILURE = common dso_local global i64 0, align 8
@FAILURE_REQ = common dso_local global i64 0, align 8
@SUCCESS_REQ = common dso_local global i64 0, align 8
@TLV_REQ_NONE = common dso_local global i64 0, align 8
@TLV_REQ_FAILURE = common dso_local global i64 0, align 8
@PHASE2_TLV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_peap_data*)* @eap_peap_req_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_peap_req_failure(%struct.eap_sm* %0, %struct.eap_peap_data* %1) #0 {
  %3 = alloca %struct.eap_sm*, align 8
  %4 = alloca %struct.eap_peap_data*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %3, align 8
  store %struct.eap_peap_data* %1, %struct.eap_peap_data** %4, align 8
  %5 = load %struct.eap_peap_data*, %struct.eap_peap_data** %4, align 8
  %6 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @FAILURE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %28, label %10

10:                                               ; preds = %2
  %11 = load %struct.eap_peap_data*, %struct.eap_peap_data** %4, align 8
  %12 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @FAILURE_REQ, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %28, label %16

16:                                               ; preds = %10
  %17 = load %struct.eap_peap_data*, %struct.eap_peap_data** %4, align 8
  %18 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SUCCESS_REQ, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.eap_peap_data*, %struct.eap_peap_data** %4, align 8
  %24 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TLV_REQ_NONE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22, %16, %10, %2
  %29 = load %struct.eap_peap_data*, %struct.eap_peap_data** %4, align 8
  %30 = load i64, i64* @FAILURE, align 8
  %31 = call i32 @eap_peap_state(%struct.eap_peap_data* %29, i64 %30)
  br label %48

32:                                               ; preds = %22
  %33 = load %struct.eap_peap_data*, %struct.eap_peap_data** %4, align 8
  %34 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load i64, i64* @TLV_REQ_FAILURE, align 8
  %39 = load %struct.eap_peap_data*, %struct.eap_peap_data** %4, align 8
  %40 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load %struct.eap_peap_data*, %struct.eap_peap_data** %4, align 8
  %42 = load i64, i64* @PHASE2_TLV, align 8
  %43 = call i32 @eap_peap_state(%struct.eap_peap_data* %41, i64 %42)
  br label %48

44:                                               ; preds = %32
  %45 = load %struct.eap_peap_data*, %struct.eap_peap_data** %4, align 8
  %46 = load i64, i64* @FAILURE_REQ, align 8
  %47 = call i32 @eap_peap_state(%struct.eap_peap_data* %45, i64 %46)
  br label %48

48:                                               ; preds = %28, %44, %37
  ret void
}

declare dso_local i32 @eap_peap_state(%struct.eap_peap_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
