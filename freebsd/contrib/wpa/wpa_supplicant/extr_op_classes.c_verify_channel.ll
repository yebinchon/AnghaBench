; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_op_classes.c_verify_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_op_classes.c_verify_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_hw_modes = type { i32 }

@BW40MINUS = common dso_local global i64 0, align 8
@HOSTAPD_CHAN_HT40MINUS = common dso_local global i32 0, align 4
@NOT_ALLOWED = common dso_local global i32 0, align 4
@BW40PLUS = common dso_local global i64 0, align 8
@HOSTAPD_CHAN_HT40PLUS = common dso_local global i32 0, align 4
@BW80 = common dso_local global i64 0, align 8
@BW160 = common dso_local global i64 0, align 8
@BW80P80 = common dso_local global i64 0, align 8
@NO_IR = common dso_local global i32 0, align 4
@ALLOWED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @verify_channel(%struct.hostapd_hw_modes* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostapd_hw_modes*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hostapd_hw_modes* %0, %struct.hostapd_hw_modes** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @allow_channel(%struct.hostapd_hw_modes* %11, i64 %12, i32* %8)
  store i32 %13, i32* %9, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @BW40MINUS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @HOSTAPD_CHAN_HT40MINUS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @NOT_ALLOWED, align 4
  store i32 %23, i32* %4, align 4
  br label %95

24:                                               ; preds = %17
  %25 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = sub nsw i64 %26, 4
  %28 = call i32 @allow_channel(%struct.hostapd_hw_modes* %25, i64 %27, i32* null)
  store i32 %28, i32* %10, align 4
  br label %73

29:                                               ; preds = %3
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @BW40PLUS, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @HOSTAPD_CHAN_HT40PLUS, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @NOT_ALLOWED, align 4
  store i32 %39, i32* %4, align 4
  br label %95

40:                                               ; preds = %33
  %41 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = add nsw i64 %42, 4
  %44 = call i32 @allow_channel(%struct.hostapd_hw_modes* %41, i64 %43, i32* null)
  store i32 %44, i32* %10, align 4
  br label %72

45:                                               ; preds = %29
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @BW80, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @verify_80mhz(%struct.hostapd_hw_modes* %50, i64 %51)
  store i32 %52, i32* %9, align 4
  store i32 %52, i32* %10, align 4
  br label %71

53:                                               ; preds = %45
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* @BW160, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %5, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @verify_160mhz(%struct.hostapd_hw_modes* %58, i64 %59)
  store i32 %60, i32* %9, align 4
  store i32 %60, i32* %10, align 4
  br label %70

61:                                               ; preds = %53
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* @BW80P80, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %5, align 8
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @verify_80mhz(%struct.hostapd_hw_modes* %66, i64 %67)
  store i32 %68, i32* %9, align 4
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %65, %61
  br label %70

70:                                               ; preds = %69, %57
  br label %71

71:                                               ; preds = %70, %49
  br label %72

72:                                               ; preds = %71, %40
  br label %73

73:                                               ; preds = %72, %24
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @NOT_ALLOWED, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @NOT_ALLOWED, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77, %73
  %82 = load i32, i32* @NOT_ALLOWED, align 4
  store i32 %82, i32* %4, align 4
  br label %95

83:                                               ; preds = %77
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @NO_IR, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @NO_IR, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %87, %83
  %92 = load i32, i32* @NO_IR, align 4
  store i32 %92, i32* %4, align 4
  br label %95

93:                                               ; preds = %87
  %94 = load i32, i32* @ALLOWED, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %93, %91, %81, %38, %22
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @allow_channel(%struct.hostapd_hw_modes*, i64, i32*) #1

declare dso_local i32 @verify_80mhz(%struct.hostapd_hw_modes*, i64) #1

declare dso_local i32 @verify_160mhz(%struct.hostapd_hw_modes*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
