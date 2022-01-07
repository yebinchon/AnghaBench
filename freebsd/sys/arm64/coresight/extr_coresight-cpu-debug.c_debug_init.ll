; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/coresight/extr_coresight-cpu-debug.c_debug_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/coresight/extr_coresight-cpu-debug.c_debug_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_softc = type { i32 }

@CORESIGHT_LAR = common dso_local global i32 0, align 4
@CORESIGHT_UNLOCK = common dso_local global i32 0, align 4
@EDOSLAR = common dso_local global i32 0, align 4
@EDPRCR = common dso_local global i32 0, align 4
@EDPRCR_CORENPDRQ = common dso_local global i32 0, align 4
@EDPRCR_COREPURQ = common dso_local global i32 0, align 4
@EDPRSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @debug_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debug_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.debug_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.debug_softc* @device_get_softc(i32 %6)
  store %struct.debug_softc* %7, %struct.debug_softc** %4, align 8
  %8 = load %struct.debug_softc*, %struct.debug_softc** %4, align 8
  %9 = getelementptr inbounds %struct.debug_softc, %struct.debug_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @CORESIGHT_LAR, align 4
  %12 = load i32, i32* @CORESIGHT_UNLOCK, align 4
  %13 = call i32 @bus_write_4(i32 %10, i32 %11, i32 %12)
  %14 = load %struct.debug_softc*, %struct.debug_softc** %4, align 8
  %15 = getelementptr inbounds %struct.debug_softc, %struct.debug_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @EDOSLAR, align 4
  %18 = call i32 @bus_write_4(i32 %16, i32 %17, i32 0)
  %19 = load %struct.debug_softc*, %struct.debug_softc** %4, align 8
  %20 = getelementptr inbounds %struct.debug_softc, %struct.debug_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @EDPRCR, align 4
  %23 = call i32 @bus_read_4(i32 %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @EDPRCR_CORENPDRQ, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

29:                                               ; preds = %1
  %30 = load i32, i32* @EDPRCR_COREPURQ, align 4
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load %struct.debug_softc*, %struct.debug_softc** %4, align 8
  %34 = getelementptr inbounds %struct.debug_softc, %struct.debug_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @EDPRCR, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @bus_write_4(i32 %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %45, %29
  %40 = load %struct.debug_softc*, %struct.debug_softc** %4, align 8
  %41 = getelementptr inbounds %struct.debug_softc, %struct.debug_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @EDPRSR, align 4
  %44 = call i32 @bus_read_4(i32 %42, i32 %43)
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @EDPRCR_CORENPDRQ, align 4
  %48 = and i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %39, label %50

50:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %28
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.debug_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i32 @bus_read_4(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
