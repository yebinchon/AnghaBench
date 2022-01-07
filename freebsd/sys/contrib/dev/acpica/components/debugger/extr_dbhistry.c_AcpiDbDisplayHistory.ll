; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbhistry.c_AcpiDbDisplayHistory.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbhistry.c_AcpiDbDisplayHistory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@AcpiGbl_LoHistory = common dso_local global i64 0, align 8
@AcpiGbl_NumHistory = common dso_local global i64 0, align 8
@AcpiGbl_HistoryBuffer = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"%3u  %s\0A\00", align 1
@HISTORY_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiDbDisplayHistory() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i64, i64* @AcpiGbl_LoHistory, align 8
  store i64 %3, i64* %2, align 8
  store i64 0, i64* %1, align 8
  br label %4

4:                                                ; preds = %35, %0
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @AcpiGbl_NumHistory, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %38

8:                                                ; preds = %4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AcpiGbl_HistoryBuffer, align 8
  %10 = load i64, i64* %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AcpiGbl_HistoryBuffer, align 8
  %17 = load i64, i64* %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AcpiGbl_HistoryBuffer, align 8
  %22 = load i64, i64* %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %20, i64 %25)
  br label %27

27:                                               ; preds = %15, %8
  %28 = load i64, i64* %2, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %2, align 8
  %30 = load i64, i64* %2, align 8
  %31 = load i64, i64* @HISTORY_SIZE, align 8
  %32 = icmp uge i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i64 0, i64* %2, align 8
  br label %34

34:                                               ; preds = %33, %27
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %1, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %1, align 8
  br label %4

38:                                               ; preds = %4
  ret void
}

declare dso_local i32 @AcpiOsPrintf(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
