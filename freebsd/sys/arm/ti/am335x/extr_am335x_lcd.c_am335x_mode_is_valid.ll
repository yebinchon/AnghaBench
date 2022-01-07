; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_lcd.c_am335x_mode_is_valid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_lcd.c_am335x_mode_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videomode = type { i64, i32, i32 }

@MAX_PIXEL_CLOCK = common dso_local global i64 0, align 8
@MAX_BANDWIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videomode*)* @am335x_mode_is_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am335x_mode_is_valid(%struct.videomode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.videomode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.videomode* %0, %struct.videomode** %3, align 8
  %10 = load %struct.videomode*, %struct.videomode** %3, align 8
  %11 = getelementptr inbounds %struct.videomode, %struct.videomode* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MAX_PIXEL_CLOCK, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %84

16:                                               ; preds = %1
  %17 = load %struct.videomode*, %struct.videomode** %3, align 8
  %18 = getelementptr inbounds %struct.videomode, %struct.videomode* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 15
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %84

23:                                               ; preds = %16
  %24 = load %struct.videomode*, %struct.videomode** %3, align 8
  %25 = getelementptr inbounds %struct.videomode, %struct.videomode* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 2048
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %84

29:                                               ; preds = %23
  %30 = load %struct.videomode*, %struct.videomode** %3, align 8
  %31 = call i32 @MODE_HBP(%struct.videomode* %30)
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  %33 = load %struct.videomode*, %struct.videomode** %3, align 8
  %34 = call i32 @MODE_HFP(%struct.videomode* %33)
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  %36 = load %struct.videomode*, %struct.videomode** %3, align 8
  %37 = call i32 @MODE_HSW(%struct.videomode* %36)
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  %39 = load %struct.videomode*, %struct.videomode** %3, align 8
  %40 = call i32 @MODE_VBP(%struct.videomode* %39)
  store i32 %40, i32* %7, align 4
  %41 = load %struct.videomode*, %struct.videomode** %3, align 8
  %42 = call i32 @MODE_VFP(%struct.videomode* %41)
  store i32 %42, i32* %8, align 4
  %43 = load %struct.videomode*, %struct.videomode** %3, align 8
  %44 = call i32 @MODE_VSW(%struct.videomode* %43)
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp sgt i32 %46, 1023
  br i1 %47, label %48, label %49

48:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %84

49:                                               ; preds = %29
  %50 = load i32, i32* %5, align 4
  %51 = icmp sgt i32 %50, 1023
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %84

53:                                               ; preds = %49
  %54 = load i32, i32* %6, align 4
  %55 = icmp sgt i32 %54, 1023
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %84

57:                                               ; preds = %53
  %58 = load i32, i32* %7, align 4
  %59 = icmp sgt i32 %58, 255
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %84

61:                                               ; preds = %57
  %62 = load i32, i32* %8, align 4
  %63 = icmp sgt i32 %62, 255
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %84

65:                                               ; preds = %61
  %66 = load i32, i32* %9, align 4
  %67 = icmp sgt i32 %66, 63
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %84

69:                                               ; preds = %65
  %70 = load %struct.videomode*, %struct.videomode** %3, align 8
  %71 = getelementptr inbounds %struct.videomode, %struct.videomode* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.videomode*, %struct.videomode** %3, align 8
  %74 = getelementptr inbounds %struct.videomode, %struct.videomode* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = mul nsw i32 %72, %75
  %77 = load %struct.videomode*, %struct.videomode** %3, align 8
  %78 = call i32 @am335x_mode_vrefresh(%struct.videomode* %77)
  %79 = mul nsw i32 %76, %78
  %80 = load i32, i32* @MAX_BANDWIDTH, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %69
  store i32 0, i32* %2, align 4
  br label %84

83:                                               ; preds = %69
  store i32 1, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %82, %68, %64, %60, %56, %52, %48, %28, %22, %15
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @MODE_HBP(%struct.videomode*) #1

declare dso_local i32 @MODE_HFP(%struct.videomode*) #1

declare dso_local i32 @MODE_HSW(%struct.videomode*) #1

declare dso_local i32 @MODE_VBP(%struct.videomode*) #1

declare dso_local i32 @MODE_VFP(%struct.videomode*) #1

declare dso_local i32 @MODE_VSW(%struct.videomode*) #1

declare dso_local i32 @am335x_mode_vrefresh(%struct.videomode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
