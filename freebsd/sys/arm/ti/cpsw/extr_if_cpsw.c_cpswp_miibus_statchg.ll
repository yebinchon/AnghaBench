; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpswp_miibus_statchg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpswp_miibus_statchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpswp_softc = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CPSW_SL_MACTL_GIG = common dso_local global i32 0, align 4
@CPSW_SL_MACTL_IFCTL_A = common dso_local global i32 0, align 4
@CPSW_SL_MACTL_IFCTL_B = common dso_local global i32 0, align 4
@CPSW_SL_MACTL_FULLDUPLEX = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @cpswp_miibus_statchg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpswp_miibus_statchg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpswp_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.cpswp_softc* @device_get_softc(i32 %6)
  store %struct.cpswp_softc* %7, %struct.cpswp_softc** %3, align 8
  %8 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %9 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @CPSW_DEBUGF(i32 %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %13 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @CPSW_SL_MACCONTROL(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %17 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @cpsw_read_4(i32 %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @CPSW_SL_MACTL_GIG, align 4
  %22 = load i32, i32* @CPSW_SL_MACTL_IFCTL_A, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @CPSW_SL_MACTL_IFCTL_B, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @CPSW_SL_MACTL_FULLDUPLEX, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %32 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @IFM_SUBTYPE(i32 %35)
  switch i32 %36, label %45 [
    i32 130, label %37
    i32 131, label %37
    i32 132, label %37
    i32 129, label %37
    i32 128, label %41
  ]

37:                                               ; preds = %1, %1, %1, %1
  %38 = load i32, i32* @CPSW_SL_MACTL_GIG, align 4
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  br label %45

41:                                               ; preds = %1
  %42 = load i32, i32* @CPSW_SL_MACTL_IFCTL_A, align 4
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %1, %41, %37
  %46 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %47 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IFM_FDX, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %45
  %55 = load i32, i32* @CPSW_SL_MACTL_FULLDUPLEX, align 4
  %56 = load i32, i32* %4, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %54, %45
  %59 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %60 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @cpsw_write_4(i32 %61, i32 %62, i32 %63)
  ret void
}

declare dso_local %struct.cpswp_softc* @device_get_softc(i32) #1

declare dso_local i32 @CPSW_DEBUGF(i32, i8*) #1

declare dso_local i32 @CPSW_SL_MACCONTROL(i32) #1

declare dso_local i32 @cpsw_read_4(i32, i32) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @cpsw_write_4(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
