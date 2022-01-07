; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_dpp_supplicant.c_dpp_start_listen_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_dpp_supplicant.c_dpp_start_listen_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_radio_work = type { i64, %struct.wpas_dpp_listen_work*, %struct.wpa_supplicant* }
%struct.wpas_dpp_listen_work = type { i64 }
%struct.wpa_supplicant = type { i64, i64, i64, i64, i32, %struct.wpa_radio_work* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"DPP: Failed to request the driver to remain on channel (%u MHz) for listen\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_radio_work*, i32)* @dpp_start_listen_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpp_start_listen_cb(%struct.wpa_radio_work* %0, i32 %1) #0 {
  %3 = alloca %struct.wpa_radio_work*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca %struct.wpas_dpp_listen_work*, align 8
  store %struct.wpa_radio_work* %0, %struct.wpa_radio_work** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %3, align 8
  %8 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %7, i32 0, i32 2
  %9 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  store %struct.wpa_supplicant* %9, %struct.wpa_supplicant** %5, align 8
  %10 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %3, align 8
  %11 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %10, i32 0, i32 1
  %12 = load %struct.wpas_dpp_listen_work*, %struct.wpas_dpp_listen_work** %11, align 8
  store %struct.wpas_dpp_listen_work* %12, %struct.wpas_dpp_listen_work** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %3, align 8
  %17 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %22 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %21, i32 0, i32 5
  store %struct.wpa_radio_work* null, %struct.wpa_radio_work** %22, align 8
  %23 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %24 = call i32 @wpas_dpp_listen_stop(%struct.wpa_supplicant* %23)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.wpas_dpp_listen_work*, %struct.wpas_dpp_listen_work** %6, align 8
  %27 = call i32 @wpas_dpp_listen_work_free(%struct.wpas_dpp_listen_work* %26)
  br label %66

28:                                               ; preds = %2
  %29 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %3, align 8
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %31 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %30, i32 0, i32 5
  store %struct.wpa_radio_work* %29, %struct.wpa_radio_work** %31, align 8
  %32 = load %struct.wpas_dpp_listen_work*, %struct.wpas_dpp_listen_work** %6, align 8
  %33 = getelementptr inbounds %struct.wpas_dpp_listen_work, %struct.wpas_dpp_listen_work* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %36 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %35, i32 0, i32 2
  store i64 %34, i64* %36, align 8
  %37 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %38 = load %struct.wpas_dpp_listen_work*, %struct.wpas_dpp_listen_work** %6, align 8
  %39 = getelementptr inbounds %struct.wpas_dpp_listen_work, %struct.wpas_dpp_listen_work* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %42 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @wpa_drv_remain_on_channel(%struct.wpa_supplicant* %37, i64 %40, i32 %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %28
  %47 = load i32, i32* @MSG_DEBUG, align 4
  %48 = load %struct.wpas_dpp_listen_work*, %struct.wpas_dpp_listen_work** %6, align 8
  %49 = getelementptr inbounds %struct.wpas_dpp_listen_work, %struct.wpas_dpp_listen_work* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @wpa_printf(i32 %47, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i64 %50)
  %52 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %53 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  %54 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %55 = call i32 @wpas_dpp_listen_work_done(%struct.wpa_supplicant* %54)
  %56 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %57 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  br label %66

58:                                               ; preds = %28
  %59 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %60 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load %struct.wpas_dpp_listen_work*, %struct.wpas_dpp_listen_work** %6, align 8
  %62 = getelementptr inbounds %struct.wpas_dpp_listen_work, %struct.wpas_dpp_listen_work* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %65 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %58, %46, %25
  ret void
}

declare dso_local i32 @wpas_dpp_listen_stop(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpas_dpp_listen_work_free(%struct.wpas_dpp_listen_work*) #1

declare dso_local i64 @wpa_drv_remain_on_channel(%struct.wpa_supplicant*, i64, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i64) #1

declare dso_local i32 @wpas_dpp_listen_work_done(%struct.wpa_supplicant*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
