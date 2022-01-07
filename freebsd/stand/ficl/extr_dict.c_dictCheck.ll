; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_dict.c_dictCheck.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_dict.c_dictCheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"Error: dictionary full\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Error: dictionary underflow\00", align 1
@FICL_DEFAULT_VOCS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"Error: search order overflow\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Error: search order underflow\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dictCheck(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = call i32 @dictCellsAvail(%struct.TYPE_6__* %10)
  %12 = mul nsw i32 %11, 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @vmThrowErr(i32* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %9, %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = call i32 @dictCellsUsed(%struct.TYPE_6__* %22)
  %24 = mul nsw i32 %23, 4
  %25 = load i32, i32* %6, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @vmThrowErr(i32* %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %21, %18
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @FICL_DEFAULT_VOCS, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = call i32 @dictResetSearchOrder(%struct.TYPE_6__* %38)
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @vmThrowErr(i32* %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %53

42:                                               ; preds = %31
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = call i32 @dictResetSearchOrder(%struct.TYPE_6__* %48)
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @vmThrowErr(i32* %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %52

52:                                               ; preds = %47, %42
  br label %53

53:                                               ; preds = %52, %37
  ret void
}

declare dso_local i32 @dictCellsAvail(%struct.TYPE_6__*) #1

declare dso_local i32 @vmThrowErr(i32*, i8*) #1

declare dso_local i32 @dictCellsUsed(%struct.TYPE_6__*) #1

declare dso_local i32 @dictResetSearchOrder(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
