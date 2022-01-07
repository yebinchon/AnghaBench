; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/HC/extr_hc.c_FmHcTxConf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/HC/extr_hc.c_FmHcTxConf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64* }
%struct.TYPE_4__ = type { i64 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Hc Conf, SeqNum %d, FD@0x%x, fd offset 0x%x\00", align 1
@MINOR = common dso_local global i32 0, align 4
@E_INVALID_FRAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Not an Host-Command frame received!\00", align 1
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FmHcTxConf(i64 %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = inttoptr i64 %8 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %5, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = call i32 @ASSERT_COND(%struct.TYPE_5__* %10)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @FmPcdLock(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @DPAA_FD_GET_ADDR(i32* %16)
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @DPAA_FD_GET_OFFSET(i32* %18)
  %20 = call i64 @PTR_MOVE(i32 %17, i32 %19)
  %21 = inttoptr i64 %20 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %6, align 8
  %22 = load i32, i32* @TRACE, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @DPAA_FD_GET_ADDR(i32* %26)
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @DPAA_FD_GET_OFFSET(i32* %28)
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @DBG(i32 %22, i8* %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i64, i64* %35, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %2
  %43 = load i32, i32* @MINOR, align 4
  %44 = load i32, i32* @E_INVALID_FRAME, align 4
  %45 = call i32 @REPORT_ERROR(i32 %43, i32 %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %55

46:                                               ; preds = %2
  %47 = load i64, i64* @FALSE, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i64, i64* %50, i64 %53
  store i64 %47, i64* %54, align 8
  br label %55

55:                                               ; preds = %46, %42
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @FmPcdUnlock(i32 %58, i32 %59)
  ret void
}

declare dso_local i32 @ASSERT_COND(%struct.TYPE_5__*) #1

declare dso_local i32 @FmPcdLock(i32) #1

declare dso_local i64 @PTR_MOVE(i32, i32) #1

declare dso_local i32 @DPAA_FD_GET_ADDR(i32*) #1

declare dso_local i32 @DPAA_FD_GET_OFFSET(i32*) #1

declare dso_local i32 @DBG(i32, i8*) #1

declare dso_local i32 @REPORT_ERROR(i32, i32, i8*) #1

declare dso_local i32 @FmPcdUnlock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
