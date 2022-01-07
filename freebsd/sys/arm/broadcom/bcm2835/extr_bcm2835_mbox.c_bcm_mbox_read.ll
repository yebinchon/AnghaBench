; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_mbox.c_bcm_mbox_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_mbox.c_bcm_mbox_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_mbox_softc = type { i64*, i64*, i32 }

@.str = private unnamed_addr constant [24 x i8] c"bcm_mbox_read: chan %d\0A\00", align 1
@cold = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"mbox\00", align 1
@hz = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"timeout waiting for message on chan %d\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@REG_STATUS = common dso_local global i32 0, align 4
@STATUS_EMPTY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"bcm_mbox_read: chan %d, data %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @bcm_mbox_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_mbox_read(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bcm_mbox_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.bcm_mbox_softc* @device_get_softc(i32 %10)
  store %struct.bcm_mbox_softc* %11, %struct.bcm_mbox_softc** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 (i8*, i32, ...) @dprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32 0, i32* %8, align 4
  %14 = load %struct.bcm_mbox_softc*, %struct.bcm_mbox_softc** %7, align 8
  %15 = call i32 @MBOX_LOCK(%struct.bcm_mbox_softc* %14)
  %16 = load i32, i32* @cold, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %47, label %18

18:                                               ; preds = %3
  %19 = load %struct.bcm_mbox_softc*, %struct.bcm_mbox_softc** %7, align 8
  %20 = getelementptr inbounds %struct.bcm_mbox_softc, %struct.bcm_mbox_softc* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %18
  %28 = load %struct.bcm_mbox_softc*, %struct.bcm_mbox_softc** %7, align 8
  %29 = getelementptr inbounds %struct.bcm_mbox_softc, %struct.bcm_mbox_softc* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load %struct.bcm_mbox_softc*, %struct.bcm_mbox_softc** %7, align 8
  %35 = getelementptr inbounds %struct.bcm_mbox_softc, %struct.bcm_mbox_softc* %34, i32 0, i32 2
  %36 = load i32, i32* @hz, align 4
  %37 = mul nsw i32 10, %36
  %38 = call i64 @mtx_sleep(i64* %33, i32* %35, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %27
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %40, %27
  br label %46

46:                                               ; preds = %45, %18
  br label %69

47:                                               ; preds = %3
  br label %48

48:                                               ; preds = %64, %47
  br label %49

49:                                               ; preds = %56, %48
  %50 = load %struct.bcm_mbox_softc*, %struct.bcm_mbox_softc** %7, align 8
  %51 = load i32, i32* @REG_STATUS, align 4
  %52 = call i32 @mbox_read_4(%struct.bcm_mbox_softc* %50, i32 %51)
  %53 = load i32, i32* @STATUS_EMPTY, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %49

57:                                               ; preds = %49
  %58 = load %struct.bcm_mbox_softc*, %struct.bcm_mbox_softc** %7, align 8
  %59 = call i64 @bcm_mbox_read_msg(%struct.bcm_mbox_softc* %58, i32* %9)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @EINVAL, align 4
  store i32 %62, i32* %8, align 4
  br label %91

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %48, label %68

68:                                               ; preds = %64
  br label %69

69:                                               ; preds = %68, %46
  %70 = load %struct.bcm_mbox_softc*, %struct.bcm_mbox_softc** %7, align 8
  %71 = getelementptr inbounds %struct.bcm_mbox_softc, %struct.bcm_mbox_softc* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @MBOX_DATA(i64 %76)
  %78 = load i32*, i32** %6, align 8
  store i32 %77, i32* %78, align 4
  %79 = load %struct.bcm_mbox_softc*, %struct.bcm_mbox_softc** %7, align 8
  %80 = getelementptr inbounds %struct.bcm_mbox_softc, %struct.bcm_mbox_softc* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  store i64 0, i64* %84, align 8
  %85 = load %struct.bcm_mbox_softc*, %struct.bcm_mbox_softc** %7, align 8
  %86 = getelementptr inbounds %struct.bcm_mbox_softc, %struct.bcm_mbox_softc* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  store i64 0, i64* %90, align 8
  br label %91

91:                                               ; preds = %69, %61
  %92 = load %struct.bcm_mbox_softc*, %struct.bcm_mbox_softc** %7, align 8
  %93 = call i32 @MBOX_UNLOCK(%struct.bcm_mbox_softc* %92)
  %94 = load i32, i32* %5, align 4
  %95 = load i32*, i32** %6, align 8
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i8*, i32, ...) @dprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %94, i32 %96)
  %98 = load i32, i32* %8, align 4
  ret i32 %98
}

declare dso_local %struct.bcm_mbox_softc* @device_get_softc(i32) #1

declare dso_local i32 @dprintf(i8*, i32, ...) #1

declare dso_local i32 @MBOX_LOCK(%struct.bcm_mbox_softc*) #1

declare dso_local i64 @mtx_sleep(i64*, i32*, i32, i8*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @mbox_read_4(%struct.bcm_mbox_softc*, i32) #1

declare dso_local i64 @bcm_mbox_read_msg(%struct.bcm_mbox_softc*, i32*) #1

declare dso_local i32 @MBOX_DATA(i64) #1

declare dso_local i32 @MBOX_UNLOCK(%struct.bcm_mbox_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
