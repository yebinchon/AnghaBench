; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbhistry.c_AcpiDbAddToHistory.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbhistry.c_AcpiDbAddToHistory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@AcpiGbl_HistoryBuffer = common dso_local global %struct.TYPE_2__* null, align 8
@AcpiGbl_NextHistoryIndex = common dso_local global i64 0, align 8
@AcpiGbl_NextCmdNum = common dso_local global i32 0, align 4
@AcpiGbl_NumHistory = common dso_local global i64 0, align 8
@HISTORY_SIZE = common dso_local global i64 0, align 8
@AcpiGbl_LoHistory = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiDbAddToHistory(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i64 @strlen(i8* %5)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %94

10:                                               ; preds = %1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AcpiGbl_HistoryBuffer, align 8
  %12 = load i64, i64* @AcpiGbl_NextHistoryIndex, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %42

17:                                               ; preds = %10
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AcpiGbl_HistoryBuffer, align 8
  %19 = load i64, i64* @AcpiGbl_NextHistoryIndex, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @strlen(i8* %22)
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %17
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AcpiGbl_HistoryBuffer, align 8
  %29 = load i64, i64* @AcpiGbl_NextHistoryIndex, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @AcpiOsFree(i8* %32)
  %34 = load i64, i64* %3, align 8
  %35 = add nsw i64 %34, 1
  %36 = call i8* @AcpiOsAllocate(i64 %35)
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AcpiGbl_HistoryBuffer, align 8
  %38 = load i64, i64* @AcpiGbl_NextHistoryIndex, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i8* %36, i8** %40, align 8
  br label %41

41:                                               ; preds = %27, %17
  br label %50

42:                                               ; preds = %10
  %43 = load i64, i64* %3, align 8
  %44 = add nsw i64 %43, 1
  %45 = call i8* @AcpiOsAllocate(i64 %44)
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AcpiGbl_HistoryBuffer, align 8
  %47 = load i64, i64* @AcpiGbl_NextHistoryIndex, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i8* %45, i8** %49, align 8
  br label %50

50:                                               ; preds = %42, %41
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AcpiGbl_HistoryBuffer, align 8
  %52 = load i64, i64* @AcpiGbl_NextHistoryIndex, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i8*, i8** %2, align 8
  %57 = call i32 @strcpy(i8* %55, i8* %56)
  %58 = load i32, i32* @AcpiGbl_NextCmdNum, align 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AcpiGbl_HistoryBuffer, align 8
  %60 = load i64, i64* @AcpiGbl_NextHistoryIndex, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store i32 %58, i32* %62, align 8
  %63 = load i64, i64* @AcpiGbl_NumHistory, align 8
  %64 = load i64, i64* @HISTORY_SIZE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %50
  %67 = load i64, i64* @AcpiGbl_NextHistoryIndex, align 8
  %68 = load i64, i64* @AcpiGbl_LoHistory, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load i64, i64* @AcpiGbl_LoHistory, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* @AcpiGbl_LoHistory, align 8
  %73 = load i64, i64* @AcpiGbl_LoHistory, align 8
  %74 = load i64, i64* @HISTORY_SIZE, align 8
  %75 = icmp uge i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i64 0, i64* @AcpiGbl_LoHistory, align 8
  br label %77

77:                                               ; preds = %76, %70
  br label %78

78:                                               ; preds = %77, %66, %50
  %79 = load i64, i64* @AcpiGbl_NextHistoryIndex, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* @AcpiGbl_NextHistoryIndex, align 8
  %81 = load i64, i64* @AcpiGbl_NextHistoryIndex, align 8
  %82 = load i64, i64* @HISTORY_SIZE, align 8
  %83 = icmp uge i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store i64 0, i64* @AcpiGbl_NextHistoryIndex, align 8
  br label %85

85:                                               ; preds = %84, %78
  %86 = load i32, i32* @AcpiGbl_NextCmdNum, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* @AcpiGbl_NextCmdNum, align 4
  %88 = load i64, i64* @AcpiGbl_NumHistory, align 8
  %89 = load i64, i64* @HISTORY_SIZE, align 8
  %90 = icmp ult i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i64, i64* @AcpiGbl_NumHistory, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* @AcpiGbl_NumHistory, align 8
  br label %94

94:                                               ; preds = %9, %91, %85
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @AcpiOsFree(i8*) #1

declare dso_local i8* @AcpiOsAllocate(i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
