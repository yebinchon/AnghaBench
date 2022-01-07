; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_nmi.c_aw_nmi_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_nmi.c_aw_nmi_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.aw_nmi_softc = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Spurious interrupt\0A\00", align 1
@FILTER_HANDLED = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_6__* null, align 8
@NMI_IRQ_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Stray interrupt, NMI disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @aw_nmi_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_nmi_intr(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.aw_nmi_softc*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.aw_nmi_softc*
  store %struct.aw_nmi_softc* %6, %struct.aw_nmi_softc** %4, align 8
  %7 = load %struct.aw_nmi_softc*, %struct.aw_nmi_softc** %4, align 8
  %8 = load %struct.aw_nmi_softc*, %struct.aw_nmi_softc** %4, align 8
  %9 = getelementptr inbounds %struct.aw_nmi_softc, %struct.aw_nmi_softc* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @SC_NMI_READ(%struct.aw_nmi_softc* %7, i32 %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.aw_nmi_softc*, %struct.aw_nmi_softc** %4, align 8
  %17 = getelementptr inbounds %struct.aw_nmi_softc, %struct.aw_nmi_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %20, i32* %2, align 4
  br label %48

21:                                               ; preds = %1
  %22 = load %struct.aw_nmi_softc*, %struct.aw_nmi_softc** %4, align 8
  %23 = getelementptr inbounds %struct.aw_nmi_softc, %struct.aw_nmi_softc* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curthread, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @intr_isrc_dispatch(i32* %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %21
  %31 = load %struct.aw_nmi_softc*, %struct.aw_nmi_softc** %4, align 8
  %32 = load %struct.aw_nmi_softc*, %struct.aw_nmi_softc** %4, align 8
  %33 = getelementptr inbounds %struct.aw_nmi_softc, %struct.aw_nmi_softc* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @NMI_IRQ_ENABLE, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 @SC_NMI_WRITE(%struct.aw_nmi_softc* %31, i32 %36, i32 %40)
  %42 = load %struct.aw_nmi_softc*, %struct.aw_nmi_softc** %4, align 8
  %43 = getelementptr inbounds %struct.aw_nmi_softc, %struct.aw_nmi_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @device_printf(i32 %44, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %30, %21
  %47 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %15
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i64 @SC_NMI_READ(%struct.aw_nmi_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @intr_isrc_dispatch(i32*, i32) #1

declare dso_local i32 @SC_NMI_WRITE(%struct.aw_nmi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
