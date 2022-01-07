; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_common.c_wps_pwd_auth_fail_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_common.c_wps_pwd_auth_fail_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_context = type { i32, i32 (i32, i32, %union.wps_event_data*)* }
%union.wps_event_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@WPS_EV_PWD_AUTH_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wps_pwd_auth_fail_event(%struct.wps_context* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.wps_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %union.wps_event_data, align 4
  store %struct.wps_context* %0, %struct.wps_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load %struct.wps_context*, %struct.wps_context** %5, align 8
  %11 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %10, i32 0, i32 1
  %12 = load i32 (i32, i32, %union.wps_event_data*)*, i32 (i32, i32, %union.wps_event_data*)** %11, align 8
  %13 = icmp eq i32 (i32, i32, %union.wps_event_data*)* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %37

15:                                               ; preds = %4
  %16 = call i32 @os_memset(%union.wps_event_data* %9, i32 0, i32 12)
  %17 = load i32, i32* %6, align 4
  %18 = bitcast %union.wps_event_data* %9 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %7, align 4
  %21 = bitcast %union.wps_event_data* %9 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = bitcast %union.wps_event_data* %9 to %struct.TYPE_2__*
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* @ETH_ALEN, align 4
  %28 = call i32 @os_memcpy(i32 %25, i32* %26, i32 %27)
  %29 = load %struct.wps_context*, %struct.wps_context** %5, align 8
  %30 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %29, i32 0, i32 1
  %31 = load i32 (i32, i32, %union.wps_event_data*)*, i32 (i32, i32, %union.wps_event_data*)** %30, align 8
  %32 = load %struct.wps_context*, %struct.wps_context** %5, align 8
  %33 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @WPS_EV_PWD_AUTH_FAIL, align 4
  %36 = call i32 %31(i32 %34, i32 %35, %union.wps_event_data* %9)
  br label %37

37:                                               ; preds = %15, %14
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
