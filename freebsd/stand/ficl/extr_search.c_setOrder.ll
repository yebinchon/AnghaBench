; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_search.c_setOrder.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_search.c_setOrder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32* }

@FICL_DEFAULT_VOCS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"set-order error: list would be too large\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @setOrder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setOrder(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @stackPopINT(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %11 = call %struct.TYPE_9__* @vmGetDict(%struct.TYPE_8__* %10)
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @FICL_DEFAULT_VOCS, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = call i32 @vmThrowErr(%struct.TYPE_8__* %16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i32, i32* @TRUE, align 4
  %20 = call i32 @ficlLockDictionary(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %43, %23
  %30 = load i32, i32* %3, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %29
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @stackPopPtr(i32 %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %36, i32* %42, align 4
  br label %43

43:                                               ; preds = %32
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %3, align 4
  br label %29

46:                                               ; preds = %29
  br label %50

47:                                               ; preds = %18
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = call i32 @dictResetSearchOrder(%struct.TYPE_9__* %48)
  br label %50

50:                                               ; preds = %47, %46
  %51 = load i32, i32* @FALSE, align 4
  %52 = call i32 @ficlLockDictionary(i32 %51)
  ret void
}

declare dso_local i32 @stackPopINT(i32) #1

declare dso_local %struct.TYPE_9__* @vmGetDict(%struct.TYPE_8__*) #1

declare dso_local i32 @vmThrowErr(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @ficlLockDictionary(i32) #1

declare dso_local i32 @stackPopPtr(i32) #1

declare dso_local i32 @dictResetSearchOrder(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
