; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_chrome_kb.c_ckb_ec_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_chrome_kb.c_ckb_ec_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ckb_softc = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 (%struct.TYPE_4__*, i32, i32)* }

@CKB_FLAG_POLLING = common dso_local global i32 0, align 4
@EC_CMD_MKBP_STATE = common dso_local global i32 0, align 4
@KBDIO_KEYINPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ckb_ec_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ckb_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.ckb_softc*
  store %struct.ckb_softc* %5, %struct.ckb_softc** %3, align 8
  %6 = load %struct.ckb_softc*, %struct.ckb_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @CKB_FLAG_POLLING, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %42

13:                                               ; preds = %1
  %14 = load i32, i32* @EC_CMD_MKBP_STATE, align 4
  %15 = load %struct.ckb_softc*, %struct.ckb_softc** %3, align 8
  %16 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ckb_softc*, %struct.ckb_softc** %3, align 8
  %19 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ckb_softc*, %struct.ckb_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ckb_softc*, %struct.ckb_softc** %3, align 8
  %25 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ec_command(i32 %14, i32 %17, i32 %20, i32 %23, i32 %26)
  %28 = load %struct.ckb_softc*, %struct.ckb_softc** %3, align 8
  %29 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32 (%struct.TYPE_4__*, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i32)** %31, align 8
  %33 = load %struct.ckb_softc*, %struct.ckb_softc** %3, align 8
  %34 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %33, i32 0, i32 1
  %35 = load i32, i32* @KBDIO_KEYINPUT, align 4
  %36 = load %struct.ckb_softc*, %struct.ckb_softc** %3, align 8
  %37 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 %32(%struct.TYPE_4__* %34, i32 %35, i32 %40)
  br label %42

42:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @ec_command(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
