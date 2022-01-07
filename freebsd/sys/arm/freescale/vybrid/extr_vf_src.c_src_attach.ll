; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_src.c_src_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_src.c_src_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.src_softc = type { i32*, i32, i32 }

@src_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@src_sc = common dso_local global %struct.src_softc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @src_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @src_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.src_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.src_softc* @device_get_softc(i32 %5)
  store %struct.src_softc* %6, %struct.src_softc** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @src_spec, align 4
  %9 = load %struct.src_softc*, %struct.src_softc** %4, align 8
  %10 = getelementptr inbounds %struct.src_softc, %struct.src_softc* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = call i64 @bus_alloc_resources(i32 %7, i32 %8, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @device_printf(i32 %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %2, align 4
  br label %36

18:                                               ; preds = %1
  %19 = load %struct.src_softc*, %struct.src_softc** %4, align 8
  %20 = getelementptr inbounds %struct.src_softc, %struct.src_softc* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @rman_get_bustag(i32 %23)
  %25 = load %struct.src_softc*, %struct.src_softc** %4, align 8
  %26 = getelementptr inbounds %struct.src_softc, %struct.src_softc* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.src_softc*, %struct.src_softc** %4, align 8
  %28 = getelementptr inbounds %struct.src_softc, %struct.src_softc* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @rman_get_bushandle(i32 %31)
  %33 = load %struct.src_softc*, %struct.src_softc** %4, align 8
  %34 = getelementptr inbounds %struct.src_softc, %struct.src_softc* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.src_softc*, %struct.src_softc** %4, align 8
  store %struct.src_softc* %35, %struct.src_softc** @src_sc, align 8
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %18, %14
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.src_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
