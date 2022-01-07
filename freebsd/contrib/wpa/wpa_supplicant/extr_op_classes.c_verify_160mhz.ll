; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_op_classes.c_verify_160mhz.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_op_classes.c_verify_160mhz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_hw_modes = type { i32 }

@NOT_ALLOWED = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_VHT_10_150 = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_VHT_30_130 = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_VHT_50_110 = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_VHT_70_90 = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_VHT_90_70 = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_VHT_110_50 = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_VHT_130_30 = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_VHT_150_10 = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_NO_IR = common dso_local global i32 0, align 4
@NO_IR = common dso_local global i32 0, align 4
@ALLOWED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_hw_modes*, i32)* @verify_160mhz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_160mhz(%struct.hostapd_hw_modes* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostapd_hw_modes*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hostapd_hw_modes* %0, %struct.hostapd_hw_modes** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @get_center_160mhz(%struct.hostapd_hw_modes* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @NOT_ALLOWED, align 4
  store i32 %17, i32* %3, align 4
  br label %118

18:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %108, %18
  %20 = load i32, i32* %7, align 4
  %21 = icmp ult i32 %20, 8
  br i1 %21, label %22, label %111

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = sub nsw i32 %23, 14
  %25 = load i32, i32* %7, align 4
  %26 = mul i32 %25, 4
  %27 = add i32 %24, %26
  store i32 %27, i32* %10, align 4
  %28 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %4, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @allow_channel(%struct.hostapd_hw_modes* %28, i32 %29, i32* %9)
  %31 = load i32, i32* @NOT_ALLOWED, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i32, i32* @NOT_ALLOWED, align 4
  store i32 %34, i32* %3, align 4
  br label %118

35:                                               ; preds = %22
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @HOSTAPD_CHAN_VHT_10_150, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %99

43:                                               ; preds = %38, %35
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @HOSTAPD_CHAN_VHT_30_130, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %99

51:                                               ; preds = %46, %43
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @HOSTAPD_CHAN_VHT_50_110, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %99

59:                                               ; preds = %54, %51
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, 3
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @HOSTAPD_CHAN_VHT_70_90, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %99

67:                                               ; preds = %62, %59
  %68 = load i32, i32* %7, align 4
  %69 = icmp eq i32 %68, 4
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @HOSTAPD_CHAN_VHT_90_70, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %99

75:                                               ; preds = %70, %67
  %76 = load i32, i32* %7, align 4
  %77 = icmp eq i32 %76, 5
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @HOSTAPD_CHAN_VHT_110_50, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %78, %75
  %84 = load i32, i32* %7, align 4
  %85 = icmp eq i32 %84, 6
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @HOSTAPD_CHAN_VHT_130_30, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %86, %83
  %92 = load i32, i32* %7, align 4
  %93 = icmp eq i32 %92, 7
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @HOSTAPD_CHAN_VHT_150_10, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %94, %86, %78, %70, %62, %54, %46, %38
  %100 = load i32, i32* @NOT_ALLOWED, align 4
  store i32 %100, i32* %3, align 4
  br label %118

101:                                              ; preds = %94, %91
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @HOSTAPD_CHAN_NO_IR, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  store i32 1, i32* %8, align 4
  br label %107

107:                                              ; preds = %106, %101
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %7, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %7, align 4
  br label %19

111:                                              ; preds = %19
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = load i32, i32* @NO_IR, align 4
  store i32 %115, i32* %3, align 4
  br label %118

116:                                              ; preds = %111
  %117 = load i32, i32* @ALLOWED, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %116, %114, %99, %33, %16
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @get_center_160mhz(%struct.hostapd_hw_modes*, i32) #1

declare dso_local i32 @allow_channel(%struct.hostapd_hw_modes*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
