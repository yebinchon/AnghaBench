; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_common.c_wps_success_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_common.c_wps_success_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_context = type { i32, i32 (i32, i32, %union.wps_event_data*)* }
%union.wps_event_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@WPS_EV_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wps_success_event(%struct.wps_context* %0, i32* %1) #0 {
  %3 = alloca %struct.wps_context*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %union.wps_event_data, align 4
  store %struct.wps_context* %0, %struct.wps_context** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.wps_context*, %struct.wps_context** %3, align 8
  %7 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %6, i32 0, i32 1
  %8 = load i32 (i32, i32, %union.wps_event_data*)*, i32 (i32, i32, %union.wps_event_data*)** %7, align 8
  %9 = icmp eq i32 (i32, i32, %union.wps_event_data*)* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %27

11:                                               ; preds = %2
  %12 = call i32 @os_memset(%union.wps_event_data* %5, i32 0, i32 4)
  %13 = bitcast %union.wps_event_data* %5 to %struct.TYPE_2__*
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @ETH_ALEN, align 4
  %18 = call i32 @os_memcpy(i32 %15, i32* %16, i32 %17)
  %19 = load %struct.wps_context*, %struct.wps_context** %3, align 8
  %20 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %19, i32 0, i32 1
  %21 = load i32 (i32, i32, %union.wps_event_data*)*, i32 (i32, i32, %union.wps_event_data*)** %20, align 8
  %22 = load %struct.wps_context*, %struct.wps_context** %3, align 8
  %23 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @WPS_EV_SUCCESS, align 4
  %26 = call i32 %21(i32 %24, i32 %25, %union.wps_event_data* %5)
  br label %27

27:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @os_memset(%union.wps_event_data*, i32, i32) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
