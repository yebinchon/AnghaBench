; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_iapp.c_iapp_new_station.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_iapp.c_iapp_new_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iapp_data = type { i32 }
%struct.sta_info = type { i32 }

@HOSTAPD_MODULE_IAPP = common dso_local global i32 0, align 4
@HOSTAPD_LEVEL_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"IAPP-ADD.request(seq=%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iapp_new_station(%struct.iapp_data* %0, %struct.sta_info* %1) #0 {
  %3 = alloca %struct.iapp_data*, align 8
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca i32, align 4
  store %struct.iapp_data* %0, %struct.iapp_data** %3, align 8
  store %struct.sta_info* %1, %struct.sta_info** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.iapp_data*, %struct.iapp_data** %3, align 8
  %7 = icmp eq %struct.iapp_data* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %31

9:                                                ; preds = %2
  %10 = load %struct.iapp_data*, %struct.iapp_data** %3, align 8
  %11 = getelementptr inbounds %struct.iapp_data, %struct.iapp_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %14 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @HOSTAPD_MODULE_IAPP, align 4
  %17 = load i32, i32* @HOSTAPD_LEVEL_DEBUG, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @hostapd_logger(i32 %12, i32 %15, i32 %16, i32 %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.iapp_data*, %struct.iapp_data** %3, align 8
  %21 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %22 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @iapp_send_layer2_update(%struct.iapp_data* %20, i32 %23)
  %25 = load %struct.iapp_data*, %struct.iapp_data** %3, align 8
  %26 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %27 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @iapp_send_add(%struct.iapp_data* %25, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @hostapd_logger(i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @iapp_send_layer2_update(%struct.iapp_data*, i32) #1

declare dso_local i32 @iapp_send_add(%struct.iapp_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
