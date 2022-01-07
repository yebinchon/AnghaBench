; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bgscan_learn.c_bgscan_learn_get_supp_freqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bgscan_learn.c_bgscan_learn_get_supp_freqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.hostapd_hw_modes* }
%struct.hostapd_hw_modes = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@HOSTAPD_CHAN_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.wpa_supplicant*)* @bgscan_learn_get_supp_freqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @bgscan_learn_get_supp_freqs(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.hostapd_hw_modes*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store i32* null, i32** %7, align 8
  store i64 0, i64* %9, align 8
  %10 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %11 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %12, align 8
  store %struct.hostapd_hw_modes* %13, %struct.hostapd_hw_modes** %4, align 8
  %14 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %4, align 8
  %15 = icmp eq %struct.hostapd_hw_modes* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %105

17:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %100, %17
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %21 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %19, %23
  br i1 %24, label %25, label %103

25:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %96, %25
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %28, i64 %30
  %32 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %27, %33
  br i1 %34, label %35, label %99

35:                                               ; preds = %26
  %36 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %36, i64 %38
  %40 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @HOSTAPD_CHAN_DISABLED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %35
  br label %96

51:                                               ; preds = %35
  %52 = load i32*, i32** %7, align 8
  %53 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %53, i64 %55
  %57 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @in_array(i32* %52, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %51
  br label %96

67:                                               ; preds = %51
  %68 = load i32*, i32** %7, align 8
  %69 = load i64, i64* %9, align 8
  %70 = add i64 %69, 2
  %71 = call i32* @os_realloc_array(i32* %68, i64 %70, i32 4)
  store i32* %71, i32** %8, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %96

75:                                               ; preds = %67
  %76 = load i32*, i32** %8, align 8
  store i32* %76, i32** %7, align 8
  %77 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %4, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %77, i64 %79
  %81 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %7, align 8
  %89 = load i64, i64* %9, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32 %87, i32* %90, align 4
  %91 = load i64, i64* %9, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %9, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = load i64, i64* %9, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32 0, i32* %95, align 4
  br label %96

96:                                               ; preds = %75, %74, %66, %50
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %6, align 4
  br label %26

99:                                               ; preds = %26
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %5, align 4
  br label %18

103:                                              ; preds = %18
  %104 = load i32*, i32** %7, align 8
  store i32* %104, i32** %2, align 8
  br label %105

105:                                              ; preds = %103, %16
  %106 = load i32*, i32** %2, align 8
  ret i32* %106
}

declare dso_local i64 @in_array(i32*, i32) #1

declare dso_local i32* @os_realloc_array(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
