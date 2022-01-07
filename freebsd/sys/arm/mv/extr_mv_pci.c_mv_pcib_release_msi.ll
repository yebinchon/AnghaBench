; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_pci.c_mv_pcib_release_msi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_pci.c_mv_pcib_release_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_pcib_softc = type { i32, i32, i32 }

@ENOTSUP = common dso_local global i32 0, align 4
@MSI_IRQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @mv_pcib_release_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_pcib_release_msi(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mv_pcib_softc*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.mv_pcib_softc* @device_get_softc(i32 %12)
  store %struct.mv_pcib_softc* %13, %struct.mv_pcib_softc** %10, align 8
  %14 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %10, align 8
  %15 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOTSUP, align 4
  store i32 %19, i32* %5, align 4
  br label %47

20:                                               ; preds = %4
  %21 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %10, align 8
  %22 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %21, i32 0, i32 0
  %23 = call i32 @mtx_lock(i32* %22)
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %40, %20
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %10, align 8
  %30 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %29, i32 0, i32 1
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* @MSI_IRQ, align 8
  %38 = sub nsw i64 %36, %37
  %39 = call i32 @clrbit(i32* %30, i64 %38)
  br label %40

40:                                               ; preds = %28
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %11, align 4
  br label %24

43:                                               ; preds = %24
  %44 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %10, align 8
  %45 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %44, i32 0, i32 0
  %46 = call i32 @mtx_unlock(i32* %45)
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %43, %18
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local %struct.mv_pcib_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @clrbit(i32*, i64) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
