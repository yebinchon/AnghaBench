; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_common.c_wps_fail_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_common.c_wps_fail_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_context = type { i32, i32 (i32, i32, %union.wps_event_data*)* }
%union.wps_event_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i8*, i8* }

@ETH_ALEN = common dso_local global i32 0, align 4
@WPS_EV_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wps_fail_event(%struct.wps_context* %0, i32 %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.wps_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %union.wps_event_data, align 8
  store %struct.wps_context* %0, %struct.wps_context** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load %struct.wps_context*, %struct.wps_context** %6, align 8
  %13 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %12, i32 0, i32 1
  %14 = load i32 (i32, i32, %union.wps_event_data*)*, i32 (i32, i32, %union.wps_event_data*)** %13, align 8
  %15 = icmp eq i32 (i32, i32, %union.wps_event_data*)* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  br label %42

17:                                               ; preds = %5
  %18 = call i32 @os_memset(%union.wps_event_data* %11, i32 0, i32 24)
  %19 = load i32, i32* %7, align 4
  %20 = bitcast %union.wps_event_data* %11 to %struct.TYPE_2__*
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = bitcast %union.wps_event_data* %11 to %struct.TYPE_2__*
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = bitcast %union.wps_event_data* %11 to %struct.TYPE_2__*
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = bitcast %union.wps_event_data* %11 to %struct.TYPE_2__*
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* @ETH_ALEN, align 4
  %33 = call i32 @os_memcpy(i32 %30, i32* %31, i32 %32)
  %34 = load %struct.wps_context*, %struct.wps_context** %6, align 8
  %35 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %34, i32 0, i32 1
  %36 = load i32 (i32, i32, %union.wps_event_data*)*, i32 (i32, i32, %union.wps_event_data*)** %35, align 8
  %37 = load %struct.wps_context*, %struct.wps_context** %6, align 8
  %38 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @WPS_EV_FAIL, align 4
  %41 = call i32 %36(i32 %39, i32 %40, %union.wps_event_data* %11)
  br label %42

42:                                               ; preds = %17, %16
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
