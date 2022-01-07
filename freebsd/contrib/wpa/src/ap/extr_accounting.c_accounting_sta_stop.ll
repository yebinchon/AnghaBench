; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_accounting.c_accounting_sta_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_accounting.c_accounting_sta_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.sta_info = type { i64, i64, i32 }

@accounting_interim_update = common dso_local global i32 0, align 4
@HOSTAPD_MODULE_RADIUS = common dso_local global i32 0, align 4
@HOSTAPD_LEVEL_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"stopped accounting session %016llX\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @accounting_sta_stop(%struct.hostapd_data* %0, %struct.sta_info* %1) #0 {
  %3 = alloca %struct.hostapd_data*, align 8
  %4 = alloca %struct.sta_info*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %3, align 8
  store %struct.sta_info* %1, %struct.sta_info** %4, align 8
  %5 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %6 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %2
  %10 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %11 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %12 = call i32 @accounting_sta_report(%struct.hostapd_data* %10, %struct.sta_info* %11, i32 1)
  %13 = load i32, i32* @accounting_interim_update, align 4
  %14 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %15 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %16 = call i32 @eloop_cancel_timeout(i32 %13, %struct.hostapd_data* %14, %struct.sta_info* %15)
  %17 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %18 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %19 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @HOSTAPD_MODULE_RADIUS, align 4
  %22 = load i32, i32* @HOSTAPD_LEVEL_INFO, align 4
  %23 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %24 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @hostapd_logger(%struct.hostapd_data* %17, i32 %20, i32 %21, i32 %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %28 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %9, %2
  ret void
}

declare dso_local i32 @accounting_sta_report(%struct.hostapd_data*, %struct.sta_info*, i32) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.hostapd_data*, %struct.sta_info*) #1

declare dso_local i32 @hostapd_logger(%struct.hostapd_data*, i32, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
