; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_lcd_syscons.c_am335x_lcd_syscons_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_lcd_syscons.c_am335x_lcd_syscons_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_adapter_softc = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.panel_info = type { i32, i32, i32 }

@va_softc = common dso_local global %struct.video_adapter_softc zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @am335x_lcd_syscons_setup(i32 %0, i32 %1, %struct.panel_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.panel_info*, align 8
  %7 = alloca %struct.video_adapter_softc*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.panel_info* %2, %struct.panel_info** %6, align 8
  store %struct.video_adapter_softc* @va_softc, %struct.video_adapter_softc** %7, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %7, align 8
  %10 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %9, i32 0, i32 7
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %7, align 8
  %13 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %12, i32 0, i32 6
  store i32 %11, i32* %13, align 4
  %14 = load %struct.panel_info*, %struct.panel_info** %6, align 8
  %15 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %7, align 8
  %18 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.panel_info*, %struct.panel_info** %6, align 8
  %20 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.panel_info*, %struct.panel_info** %6, align 8
  %23 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %21, %24
  %26 = sdiv i32 %25, 8
  %27 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %7, align 8
  %28 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.panel_info*, %struct.panel_info** %6, align 8
  %30 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %7, align 8
  %33 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.panel_info*, %struct.panel_info** %6, align 8
  %35 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %7, align 8
  %38 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %7, align 8
  %40 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %7, align 8
  %43 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %41, %44
  %46 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %7, align 8
  %47 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %45, %48
  %50 = sdiv i32 %49, 8
  %51 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %7, align 8
  %52 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  %53 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %7, align 8
  %54 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %53, i32 0, i32 5
  %55 = call i32 @am335x_syscons_update_margins(i32* %54)
  ret i32 0
}

declare dso_local i32 @am335x_syscons_update_margins(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
