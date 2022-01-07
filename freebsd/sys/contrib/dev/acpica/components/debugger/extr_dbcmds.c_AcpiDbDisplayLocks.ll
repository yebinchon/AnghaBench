; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbcmds.c_AcpiDbDisplayLocks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbcmds.c_AcpiDbDisplayLocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@ACPI_MAX_MUTEX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"%26s : %s\0A\00", align 1
@AcpiGbl_MutexInfo = common dso_local global %struct.TYPE_2__* null, align 8
@ACPI_MUTEX_NOT_ACQUIRED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"Locked\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Unlocked\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiDbDisplayLocks() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %2

2:                                                ; preds = %19, %0
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @ACPI_MAX_MUTEX, align 8
  %5 = icmp ult i64 %3, %4
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  %7 = load i64, i64* %1, align 8
  %8 = call i32 @AcpiUtGetMutexName(i64 %7)
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AcpiGbl_MutexInfo, align 8
  %10 = load i64, i64* %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ACPI_MUTEX_NOT_ACQUIRED, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %18 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %8, i8* %17)
  br label %19

19:                                               ; preds = %6
  %20 = load i64, i64* %1, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %1, align 8
  br label %2

22:                                               ; preds = %2
  ret void
}

declare dso_local i32 @AcpiOsPrintf(i8*, i32, i8*) #1

declare dso_local i32 @AcpiUtGetMutexName(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
