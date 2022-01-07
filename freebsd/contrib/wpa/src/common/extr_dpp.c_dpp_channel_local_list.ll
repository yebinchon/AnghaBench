; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_channel_local_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_channel_local_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_authentication = type { i32, i32* }
%struct.hostapd_hw_modes = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@HOSTAPD_CHAN_DISABLED = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_NO_IR = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_RADAR = common dso_local global i32 0, align 4
@DPP_BOOTSTRAP_MAX_FREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpp_authentication*, %struct.hostapd_hw_modes*, i64)* @dpp_channel_local_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpp_channel_local_list(%struct.dpp_authentication* %0, %struct.hostapd_hw_modes* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpp_authentication*, align 8
  %6 = alloca %struct.hostapd_hw_modes*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dpp_authentication* %0, %struct.dpp_authentication** %5, align 8
  store %struct.hostapd_hw_modes* %1, %struct.hostapd_hw_modes** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %13 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %6, align 8
  %15 = icmp ne %struct.hostapd_hw_modes* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %16, %3
  %20 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %21 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 2412, i32* %23, align 4
  %24 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %25 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 2437, i32* %27, align 4
  %28 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %29 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  store i32 2462, i32* %31, align 4
  %32 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %33 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %32, i32 0, i32 0
  store i32 3, i32* %33, align 8
  store i32 0, i32* %4, align 4
  br label %122

34:                                               ; preds = %16
  store i64 0, i64* %8, align 8
  br label %35

35:                                               ; preds = %112, %34
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %115

39:                                               ; preds = %35
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %108, %39
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %6, align 8
  %43 = load i64, i64* %8, align 8
  %44 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %42, i64 %43
  %45 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %41, %46
  br i1 %47, label %48, label %111

48:                                               ; preds = %40
  %49 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %6, align 8
  %50 = load i64, i64* %8, align 8
  %51 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %49, i64 %50
  %52 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %11, align 4
  %59 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %6, align 8
  %60 = load i64, i64* %8, align 8
  %61 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %59, i64 %60
  %62 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @HOSTAPD_CHAN_DISABLED, align 4
  %71 = load i32, i32* @HOSTAPD_CHAN_NO_IR, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @HOSTAPD_CHAN_RADAR, align 4
  %74 = or i32 %72, %73
  %75 = and i32 %69, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %48
  br label %108

78:                                               ; preds = %48
  %79 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %80 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %83 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i64 @freq_included(i32* %81, i32 %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  br label %108

89:                                               ; preds = %78
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %92 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %95 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i32, i32* %93, i64 %98
  store i32 %90, i32* %99, align 4
  %100 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %101 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @DPP_BOOTSTRAP_MAX_FREQ, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %89
  %106 = load i64, i64* %7, align 8
  store i64 %106, i64* %8, align 8
  br label %111

107:                                              ; preds = %89
  br label %108

108:                                              ; preds = %107, %88, %77
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %40

111:                                              ; preds = %105, %40
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %8, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %8, align 8
  br label %35

115:                                              ; preds = %35
  %116 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %117 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp eq i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 -1, i32 0
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %115, %19
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i64 @freq_included(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
