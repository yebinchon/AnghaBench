; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_softc = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.cpswp_softc = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CPSW_PORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cpsw_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_suspend(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpsw_softc*, align 8
  %4 = alloca %struct.cpswp_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i8* @device_get_softc(i32 %6)
  %8 = bitcast i8* %7 to %struct.cpsw_softc*
  store %struct.cpsw_softc* %8, %struct.cpsw_softc** %3, align 8
  %9 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %10 = call i32 @CPSW_DEBUGF(%struct.cpsw_softc* %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %44, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @CPSW_PORTS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %47

15:                                               ; preds = %11
  %16 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %17 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %23 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %44

27:                                               ; preds = %20, %15
  %28 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %29 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @device_get_softc(i32 %35)
  %37 = bitcast i8* %36 to %struct.cpswp_softc*
  store %struct.cpswp_softc* %37, %struct.cpswp_softc** %4, align 8
  %38 = load %struct.cpswp_softc*, %struct.cpswp_softc** %4, align 8
  %39 = call i32 @CPSW_PORT_LOCK(%struct.cpswp_softc* %38)
  %40 = load %struct.cpswp_softc*, %struct.cpswp_softc** %4, align 8
  %41 = call i32 @cpswp_stop_locked(%struct.cpswp_softc* %40)
  %42 = load %struct.cpswp_softc*, %struct.cpswp_softc** %4, align 8
  %43 = call i32 @CPSW_PORT_UNLOCK(%struct.cpswp_softc* %42)
  br label %44

44:                                               ; preds = %27, %26
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %11

47:                                               ; preds = %11
  ret i32 0
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @CPSW_DEBUGF(%struct.cpsw_softc*, i8*) #1

declare dso_local i32 @CPSW_PORT_LOCK(%struct.cpswp_softc*) #1

declare dso_local i32 @cpswp_stop_locked(%struct.cpswp_softc*) #1

declare dso_local i32 @CPSW_PORT_UNLOCK(%struct.cpswp_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
