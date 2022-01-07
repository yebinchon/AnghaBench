; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_tncc.c_tncc_notify_recommendation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_tncc.c_tncc_notify_recommendation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tncc_data = type { %struct.tnc_if_imc* }
%struct.tnc_if_imc = type { %struct.tnc_if_imc* }

@TNC_CONNECTION_STATE_ACCESS_ALLOWED = common dso_local global i32 0, align 4
@TNC_CONNECTION_STATE_ACCESS_NONE = common dso_local global i32 0, align 4
@TNC_CONNECTION_STATE_ACCESS_ISOLATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tncc_data*, i32)* @tncc_notify_recommendation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tncc_notify_recommendation(%struct.tncc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.tncc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tnc_if_imc*, align 8
  store %struct.tncc_data* %0, %struct.tncc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %14 [
    i32 130, label %8
    i32 128, label %10
    i32 129, label %12
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @TNC_CONNECTION_STATE_ACCESS_ALLOWED, align 4
  store i32 %9, i32* %5, align 4
  br label %16

10:                                               ; preds = %2
  %11 = load i32, i32* @TNC_CONNECTION_STATE_ACCESS_NONE, align 4
  store i32 %11, i32* %5, align 4
  br label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @TNC_CONNECTION_STATE_ACCESS_ISOLATED, align 4
  store i32 %13, i32* %5, align 4
  br label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @TNC_CONNECTION_STATE_ACCESS_NONE, align 4
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %14, %12, %10, %8
  %17 = load %struct.tncc_data*, %struct.tncc_data** %3, align 8
  %18 = getelementptr inbounds %struct.tncc_data, %struct.tncc_data* %17, i32 0, i32 0
  %19 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %18, align 8
  store %struct.tnc_if_imc* %19, %struct.tnc_if_imc** %6, align 8
  br label %20

20:                                               ; preds = %27, %16
  %21 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %6, align 8
  %22 = icmp ne %struct.tnc_if_imc* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %6, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @tncc_imc_notify_connection_change(%struct.tnc_if_imc* %24, i32 %25)
  br label %27

27:                                               ; preds = %23
  %28 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %6, align 8
  %29 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %28, i32 0, i32 0
  %30 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %29, align 8
  store %struct.tnc_if_imc* %30, %struct.tnc_if_imc** %6, align 8
  br label %20

31:                                               ; preds = %20
  ret void
}

declare dso_local i32 @tncc_imc_notify_connection_change(%struct.tnc_if_imc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
