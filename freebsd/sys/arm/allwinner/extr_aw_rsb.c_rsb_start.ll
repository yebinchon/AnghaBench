; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_rsb.c_rsb_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_rsb.c_rsb_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsb_softc = type { i32 }

@RSB_CTRL = common dso_local global i32 0, align 4
@GLOBAL_INT_ENB = common dso_local global i32 0, align 4
@START_TRANS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@RSB_I2C_TIMEOUT = common dso_local global i32 0, align 4
@RSB_INTS = common dso_local global i32 0, align 4
@INT_TRANS_OVER = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"transfer error, status 0x%08x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rsb_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsb_start(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rsb_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.rsb_softc* @device_get_softc(i32 %6)
  store %struct.rsb_softc* %7, %struct.rsb_softc** %3, align 8
  %8 = load %struct.rsb_softc*, %struct.rsb_softc** %3, align 8
  %9 = call i32 @RSB_ASSERT_LOCKED(%struct.rsb_softc* %8)
  %10 = load %struct.rsb_softc*, %struct.rsb_softc** %3, align 8
  %11 = load i32, i32* @RSB_CTRL, align 4
  %12 = load i32, i32* @GLOBAL_INT_ENB, align 4
  %13 = load i32, i32* @START_TRANS, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @RSB_WRITE(%struct.rsb_softc* %10, i32 %11, i32 %14)
  %16 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @RSB_I2C_TIMEOUT, align 4
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %42, %1
  %19 = load i32, i32* %5, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %18
  %22 = load %struct.rsb_softc*, %struct.rsb_softc** %3, align 8
  %23 = load i32, i32* @RSB_INTS, align 4
  %24 = call i32 @RSB_READ(%struct.rsb_softc* %22, i32 %23)
  %25 = load %struct.rsb_softc*, %struct.rsb_softc** %3, align 8
  %26 = getelementptr inbounds %struct.rsb_softc, %struct.rsb_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.rsb_softc*, %struct.rsb_softc** %3, align 8
  %30 = getelementptr inbounds %struct.rsb_softc, %struct.rsb_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @INT_TRANS_OVER, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %45

36:                                               ; preds = %21
  %37 = load i32, i32* @hz, align 4
  %38 = mul nsw i32 1000, %37
  %39 = load i32, i32* @RSB_I2C_TIMEOUT, align 4
  %40 = sdiv i32 %38, %39
  %41 = call i32 @DELAY(i32 %40)
  br label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %5, align 4
  br label %18

45:                                               ; preds = %35, %18
  %46 = load i32, i32* %4, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %45
  %49 = load %struct.rsb_softc*, %struct.rsb_softc** %3, align 8
  %50 = getelementptr inbounds %struct.rsb_softc, %struct.rsb_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @INT_TRANS_OVER, align 4
  %53 = and i32 %51, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %48
  %56 = load i32, i32* %2, align 4
  %57 = load %struct.rsb_softc*, %struct.rsb_softc** %3, align 8
  %58 = getelementptr inbounds %struct.rsb_softc, %struct.rsb_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @device_printf(i32 %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @EIO, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %55, %48, %45
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.rsb_softc* @device_get_softc(i32) #1

declare dso_local i32 @RSB_ASSERT_LOCKED(%struct.rsb_softc*) #1

declare dso_local i32 @RSB_WRITE(%struct.rsb_softc*, i32, i32) #1

declare dso_local i32 @RSB_READ(%struct.rsb_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
