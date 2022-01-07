; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_lcd.c_am335x_mode_vrefresh.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_lcd.c_am335x_mode_vrefresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videomode = type { i32, i32, i32, i32 }

@VID_INTERLACE = common dso_local global i32 0, align 4
@VID_DBLSCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videomode*)* @am335x_mode_vrefresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am335x_mode_vrefresh(%struct.videomode* %0) #0 {
  %2 = alloca %struct.videomode*, align 8
  %3 = alloca i32, align 4
  store %struct.videomode* %0, %struct.videomode** %2, align 8
  %4 = load %struct.videomode*, %struct.videomode** %2, align 8
  %5 = getelementptr inbounds %struct.videomode, %struct.videomode* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = mul nsw i32 %6, 1000
  %8 = load %struct.videomode*, %struct.videomode** %2, align 8
  %9 = getelementptr inbounds %struct.videomode, %struct.videomode* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = sdiv i32 %7, %10
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.videomode*, %struct.videomode** %2, align 8
  %14 = getelementptr inbounds %struct.videomode, %struct.videomode* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = sdiv i32 %15, 2
  %17 = add nsw i32 %12, %16
  %18 = load %struct.videomode*, %struct.videomode** %2, align 8
  %19 = getelementptr inbounds %struct.videomode, %struct.videomode* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 %17, %20
  store i32 %21, i32* %3, align 4
  %22 = load %struct.videomode*, %struct.videomode** %2, align 8
  %23 = getelementptr inbounds %struct.videomode, %struct.videomode* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @VID_INTERLACE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  %30 = mul nsw i32 %29, 2
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %28, %1
  %32 = load %struct.videomode*, %struct.videomode** %2, align 8
  %33 = getelementptr inbounds %struct.videomode, %struct.videomode* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @VID_DBLSCAN, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* %3, align 4
  %40 = sdiv i32 %39, 2
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %31
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
