; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslutils.c_UtBeginEvent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslutils.c_UtBeginEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32 }

@AslGbl_NextEvent = common dso_local global i64 0, align 8
@ASL_NUM_EVENTS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Ran out of compiler event structs!\0A\00", align 1
@AslGbl_Events = common dso_local global %struct.TYPE_2__* null, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @UtBeginEvent(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i64, i64* @AslGbl_NextEvent, align 8
  %5 = load i64, i64* @ASL_NUM_EVENTS, align 8
  %6 = icmp uge i64 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %9 = load i64, i64* @AslGbl_NextEvent, align 8
  store i64 %9, i64* %2, align 8
  br label %28

10:                                               ; preds = %1
  %11 = call i32 (...) @AcpiOsGetTimer()
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AslGbl_Events, align 8
  %13 = load i64, i64* @AslGbl_NextEvent, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store i32 %11, i32* %15, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AslGbl_Events, align 8
  %18 = load i64, i64* @AslGbl_NextEvent, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i8* %16, i8** %20, align 8
  %21 = load i32, i32* @TRUE, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AslGbl_Events, align 8
  %23 = load i64, i64* @AslGbl_NextEvent, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 %21, i32* %25, align 8
  %26 = load i64, i64* @AslGbl_NextEvent, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* @AslGbl_NextEvent, align 8
  store i64 %26, i64* %2, align 8
  br label %28

28:                                               ; preds = %10, %7
  %29 = load i64, i64* %2, align 8
  ret i64 %29
}

declare dso_local i32 @AcpiOsPrintf(i8*) #1

declare dso_local i32 @AcpiOsGetTimer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
