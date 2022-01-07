; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_mbox.c_bcm_mbox_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_mbox.c_bcm_mbox_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_mbox_softc = type { i64* }

@.str = private unnamed_addr constant [36 x i8] c"bcm_mbox_write: chan %d, data %08x\0A\00", align 1
@REG_STATUS = common dso_local global i32 0, align 4
@STATUS_FULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"bcm_mbox_write: STATUS_FULL stuck\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@REG_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @bcm_mbox_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_mbox_write(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bcm_mbox_softc*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 1000, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.bcm_mbox_softc* @device_get_softc(i32 %10)
  store %struct.bcm_mbox_softc* %11, %struct.bcm_mbox_softc** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @dprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  %15 = load %struct.bcm_mbox_softc*, %struct.bcm_mbox_softc** %9, align 8
  %16 = call i32 @MBOX_LOCK(%struct.bcm_mbox_softc* %15)
  %17 = load %struct.bcm_mbox_softc*, %struct.bcm_mbox_softc** %9, align 8
  %18 = getelementptr inbounds %struct.bcm_mbox_softc, %struct.bcm_mbox_softc* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %36, %3
  %24 = load %struct.bcm_mbox_softc*, %struct.bcm_mbox_softc** %9, align 8
  %25 = load i32, i32* @REG_STATUS, align 4
  %26 = call i32 @mbox_read_4(%struct.bcm_mbox_softc* %24, i32 %25)
  %27 = load i32, i32* @STATUS_FULL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %30, %23
  %35 = phi i1 [ false, %23 ], [ %33, %30 ]
  br i1 %35, label %36, label %38

36:                                               ; preds = %34
  %37 = call i32 @DELAY(i32 5)
  br label %23

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.bcm_mbox_softc*, %struct.bcm_mbox_softc** %9, align 8
  %44 = call i32 @MBOX_UNLOCK(%struct.bcm_mbox_softc* %43)
  %45 = load i32, i32* @EAGAIN, align 4
  store i32 %45, i32* %4, align 4
  br label %55

46:                                               ; preds = %38
  %47 = load %struct.bcm_mbox_softc*, %struct.bcm_mbox_softc** %9, align 8
  %48 = load i32, i32* @REG_WRITE, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @MBOX_MSG(i32 %49, i32 %50)
  %52 = call i32 @mbox_write_4(%struct.bcm_mbox_softc* %47, i32 %48, i32 %51)
  %53 = load %struct.bcm_mbox_softc*, %struct.bcm_mbox_softc** %9, align 8
  %54 = call i32 @MBOX_UNLOCK(%struct.bcm_mbox_softc* %53)
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %46, %41
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.bcm_mbox_softc* @device_get_softc(i32) #1

declare dso_local i32 @dprintf(i8*, i32, i32) #1

declare dso_local i32 @MBOX_LOCK(%struct.bcm_mbox_softc*) #1

declare dso_local i32 @mbox_read_4(%struct.bcm_mbox_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @MBOX_UNLOCK(%struct.bcm_mbox_softc*) #1

declare dso_local i32 @mbox_write_4(%struct.bcm_mbox_softc*, i32, i32) #1

declare dso_local i32 @MBOX_MSG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
