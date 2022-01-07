; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslcompile.c_CmDumpAllEvents.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslcompile.c_CmDumpAllEvents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64, i64, i64 }

@AslGbl_Events = common dso_local global %struct.TYPE_3__* null, align 8
@ASL_DEBUG_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"\0A\0AElapsed time for major events\0A\0A\00", align 1
@AslGbl_CompileTimesFlag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"\0AElapsed time for major events\0A\0A\00", align 1
@AslGbl_NextEvent = common dso_local global i64 0, align 8
@ACPI_100NSEC_PER_USEC = common dso_local global i64 0, align 8
@ACPI_100NSEC_PER_MSEC = common dso_local global i64 0, align 8
@ACPI_USEC_PER_MSEC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"%8u usec %8u msec - %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CmDumpAllEvents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CmDumpAllEvents() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @AslGbl_Events, align 8
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %1, align 8
  %7 = load i32, i32* @ASL_DEBUG_OUTPUT, align 4
  %8 = call i32 (i32, i8*, ...) @DbgPrint(i32 %7, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %9 = load i64, i64* @AslGbl_CompileTimesFlag, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %0
  store i64 0, i64* %5, align 8
  br label %14

14:                                               ; preds = %67, %13
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @AslGbl_NextEvent, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %70

18:                                               ; preds = %14
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %64

23:                                               ; preds = %18
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  store i64 %30, i64* %2, align 8
  %31 = load i64, i64* %2, align 8
  %32 = load i64, i64* @ACPI_100NSEC_PER_USEC, align 8
  %33 = sdiv i64 %31, %32
  store i64 %33, i64* %3, align 8
  %34 = load i64, i64* %2, align 8
  %35 = load i64, i64* @ACPI_100NSEC_PER_MSEC, align 8
  %36 = sdiv i64 %34, %35
  store i64 %36, i64* %4, align 8
  %37 = load i64, i64* %3, align 8
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @ACPI_USEC_PER_MSEC, align 8
  %40 = mul nsw i64 %38, %39
  %41 = sub nsw i64 %37, %40
  %42 = icmp sge i64 %41, 500
  br i1 %42, label %43, label %46

43:                                               ; preds = %23
  %44 = load i64, i64* %4, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %4, align 8
  br label %46

46:                                               ; preds = %43, %23
  %47 = load i32, i32* @ASL_DEBUG_OUTPUT, align 4
  %48 = load i64, i64* %3, align 8
  %49 = load i64, i64* %4, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 (i32, i8*, ...) @DbgPrint(i32 %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %48, i64 %49, i8* %52)
  %54 = load i64, i64* @AslGbl_CompileTimesFlag, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %46
  %57 = load i64, i64* %3, align 8
  %58 = load i64, i64* %4, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %57, i64 %58, i8* %61)
  br label %63

63:                                               ; preds = %56, %46
  br label %64

64:                                               ; preds = %63, %18
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 1
  store %struct.TYPE_3__* %66, %struct.TYPE_3__** %1, align 8
  br label %67

67:                                               ; preds = %64
  %68 = load i64, i64* %5, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %5, align 8
  br label %14

70:                                               ; preds = %14
  ret void
}

declare dso_local i32 @DbgPrint(i32, i8*, ...) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
