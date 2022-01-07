; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_hpet.c_hpet_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_hpet.c_hpet_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpet_softc = type { i32, i32, i32*, i32 }

@HPET_ISR = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@FILTER_STRAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @hpet_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpet_intr(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hpet_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.hpet_softc*
  store %struct.hpet_softc* %8, %struct.hpet_softc** %4, align 8
  %9 = load %struct.hpet_softc*, %struct.hpet_softc** %4, align 8
  %10 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @HPET_ISR, align 4
  %13 = call i32 @bus_read_4(i32 %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %54

16:                                               ; preds = %1
  %17 = load %struct.hpet_softc*, %struct.hpet_softc** %4, align 8
  %18 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @HPET_ISR, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @bus_write_4(i32 %19, i32 %20, i32 %21)
  %23 = load %struct.hpet_softc*, %struct.hpet_softc** %4, align 8
  %24 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %49, %16
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.hpet_softc*, %struct.hpet_softc** %4, align 8
  %31 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = shl i32 1, %36
  %38 = and i32 %35, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %49

41:                                               ; preds = %34
  %42 = load %struct.hpet_softc*, %struct.hpet_softc** %4, align 8
  %43 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i32 @hpet_intr_single(i32* %47)
  br label %49

49:                                               ; preds = %41, %40
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %28

52:                                               ; preds = %28
  %53 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %53, i32* %2, align 4
  br label %56

54:                                               ; preds = %1
  %55 = load i32, i32* @FILTER_STRAY, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i32 @hpet_intr_single(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
