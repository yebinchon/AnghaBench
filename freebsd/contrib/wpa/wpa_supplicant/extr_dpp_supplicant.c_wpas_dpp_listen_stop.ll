; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_dpp_supplicant.c_wpas_dpp_listen_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_dpp_supplicant.c_wpas_dpp_listen_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"DPP: Stop listen on %u MHz\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpas_dpp_listen_stop(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %2, align 8
  %3 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %4 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %3, i32 0, i32 1
  store i64 0, i64* %4, align 8
  %5 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %6 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %22

10:                                               ; preds = %1
  %11 = load i32, i32* @MSG_DEBUG, align 4
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %13 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @wpa_printf(i32 %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %17 = call i32 @wpa_drv_cancel_remain_on_channel(%struct.wpa_supplicant* %16)
  %18 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %19 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %21 = call i32 @wpas_dpp_listen_work_done(%struct.wpa_supplicant* %20)
  br label %22

22:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, i64) #1

declare dso_local i32 @wpa_drv_cancel_remain_on_channel(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpas_dpp_listen_work_done(%struct.wpa_supplicant*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
