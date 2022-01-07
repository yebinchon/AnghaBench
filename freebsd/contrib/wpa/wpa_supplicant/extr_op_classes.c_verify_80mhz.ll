; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_op_classes.c_verify_80mhz.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_op_classes.c_verify_80mhz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_hw_modes = type { i32 }

@NOT_ALLOWED = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_VHT_10_70 = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_VHT_30_50 = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_VHT_50_30 = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_VHT_70_10 = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_NO_IR = common dso_local global i32 0, align 4
@NO_IR = common dso_local global i32 0, align 4
@ALLOWED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_hw_modes*, i32)* @verify_80mhz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_80mhz(%struct.hostapd_hw_modes* %0, i32 %1) #0 {
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
  %13 = call i32 @get_center_80mhz(%struct.hostapd_hw_modes* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @NOT_ALLOWED, align 4
  store i32 %17, i32* %3, align 4
  br label %86

18:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %76, %18
  %20 = load i32, i32* %7, align 4
  %21 = icmp ult i32 %20, 4
  br i1 %21, label %22, label %79

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = sub nsw i32 %23, 6
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
  br label %86

35:                                               ; preds = %22
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @HOSTAPD_CHAN_VHT_10_70, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %67

43:                                               ; preds = %38, %35
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @HOSTAPD_CHAN_VHT_30_50, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %46, %43
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @HOSTAPD_CHAN_VHT_50_30, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %54, %51
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, 3
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @HOSTAPD_CHAN_VHT_70_10, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %62, %54, %46, %38
  %68 = load i32, i32* @NOT_ALLOWED, align 4
  store i32 %68, i32* %3, align 4
  br label %86

69:                                               ; preds = %62, %59
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @HOSTAPD_CHAN_NO_IR, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i32 1, i32* %8, align 4
  br label %75

75:                                               ; preds = %74, %69
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %7, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %19

79:                                               ; preds = %19
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* @NO_IR, align 4
  store i32 %83, i32* %3, align 4
  br label %86

84:                                               ; preds = %79
  %85 = load i32, i32* @ALLOWED, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %82, %67, %33, %16
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @get_center_80mhz(%struct.hostapd_hw_modes*, i32) #1

declare dso_local i32 @allow_channel(%struct.hostapd_hw_modes*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
