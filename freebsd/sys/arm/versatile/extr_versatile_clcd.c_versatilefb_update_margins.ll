; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/versatile/extr_versatile_clcd.c_versatilefb_update_margins.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/versatile/extr_versatile_clcd.c_versatilefb_update_margins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.video_adapter_softc = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @versatilefb_update_margins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @versatilefb_update_margins(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.video_adapter_softc*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = bitcast %struct.TYPE_5__* %5 to %struct.video_adapter_softc*
  store %struct.video_adapter_softc* %6, %struct.video_adapter_softc** %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %4, align 8
  %9 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %3, align 8
  %10 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %14, %17
  %19 = sub nsw i32 %11, %18
  %20 = sdiv i32 %19, 2
  %21 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %3, align 8
  %22 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %3, align 8
  %24 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %28, %31
  %33 = sub nsw i32 %25, %32
  %34 = sdiv i32 %33, 2
  %35 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %3, align 8
  %36 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
