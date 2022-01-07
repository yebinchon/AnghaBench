; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_channel_intersect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_channel_intersect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_authentication = type { i32*, i32, i32, %struct.dpp_bootstrap_info* }
%struct.dpp_bootstrap_info = type { i32, i32* }
%struct.hostapd_hw_modes = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"DPP: No available channels for initiating DPP Authentication\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpp_authentication*, %struct.hostapd_hw_modes*, i32)* @dpp_channel_intersect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpp_channel_intersect(%struct.dpp_authentication* %0, %struct.hostapd_hw_modes* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpp_authentication*, align 8
  %6 = alloca %struct.hostapd_hw_modes*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dpp_bootstrap_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dpp_authentication* %0, %struct.dpp_authentication** %5, align 8
  store %struct.hostapd_hw_modes* %1, %struct.hostapd_hw_modes** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %12 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %11, i32 0, i32 3
  %13 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %12, align 8
  store %struct.dpp_bootstrap_info* %13, %struct.dpp_bootstrap_info** %8, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %56, %3
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %8, align 8
  %17 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %59

20:                                               ; preds = %14
  %21 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %8, align 8
  %22 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  %28 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %29 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %32 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i64 @freq_included(i32* %30, i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %20
  br label %56

38:                                               ; preds = %20
  %39 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i64 @dpp_channel_ok_init(%struct.hostapd_hw_modes* %39, i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %38
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %47 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %50 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %48, i64 %53
  store i32 %45, i32* %54, align 4
  br label %55

55:                                               ; preds = %44, %38
  br label %56

56:                                               ; preds = %55, %37
  %57 = load i32, i32* %9, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %14

59:                                               ; preds = %14
  %60 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %61 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @MSG_INFO, align 4
  %66 = call i32 @wpa_printf(i32 %65, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %75

67:                                               ; preds = %59
  %68 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %69 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %74 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %67, %64
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i64 @freq_included(i32*, i32, i32) #1

declare dso_local i64 @dpp_channel_ok_init(%struct.hostapd_hw_modes*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
