; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_wiphy_info_tdls.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_wiphy_info_tdls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_capa = type { i32 }
%struct.nlattr = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"nl80211: TDLS supported\00", align 1
@WPA_DRIVER_FLAGS_TDLS_SUPPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"nl80211: TDLS external setup\00", align 1
@WPA_DRIVER_FLAGS_TDLS_EXTERNAL_SETUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_driver_capa*, %struct.nlattr*, %struct.nlattr*)* @wiphy_info_tdls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiphy_info_tdls(%struct.wpa_driver_capa* %0, %struct.nlattr* %1, %struct.nlattr* %2) #0 {
  %4 = alloca %struct.wpa_driver_capa*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.nlattr*, align 8
  store %struct.wpa_driver_capa* %0, %struct.wpa_driver_capa** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  store %struct.nlattr* %2, %struct.nlattr** %6, align 8
  %7 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %8 = icmp eq %struct.nlattr* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %28

10:                                               ; preds = %3
  %11 = load i32, i32* @MSG_DEBUG, align 4
  %12 = call i32 @wpa_printf(i32 %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @WPA_DRIVER_FLAGS_TDLS_SUPPORT, align 4
  %14 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %4, align 8
  %15 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %19 = icmp ne %struct.nlattr* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %10
  %21 = load i32, i32* @MSG_DEBUG, align 4
  %22 = call i32 @wpa_printf(i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @WPA_DRIVER_FLAGS_TDLS_EXTERNAL_SETUP, align 4
  %24 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %4, align 8
  %25 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %9, %20, %10
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
