; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_ex.c_v_exmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_ex.c_v_exmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_10__*, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_10__*, i32, i32)*, i64 (%struct.TYPE_10__*, i32)* }

@SC_EX = common dso_local global i32 0, align 4
@M_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"207|The Q command requires the ex terminal interface\00", align 1
@SA_ALTERNATE = common dso_local global i32 0, align 4
@FR_CURSORSET = common dso_local global i32 0, align 4
@SC_VI = common dso_local global i32 0, align 4
@SC_SCR_VI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v_exmode(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 3
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %6, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %12 = load i64 (%struct.TYPE_10__*, i32)*, i64 (%struct.TYPE_10__*, i32)** %11, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = load i32, i32* @SC_EX, align 4
  %15 = call i64 %12(%struct.TYPE_10__* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = load i32, i32* @M_ERR, align 4
  %20 = call i32 @msgq(%struct.TYPE_10__* %18, i32 %19, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %57

21:                                               ; preds = %2
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_10__*, i32, i32)*, i32 (%struct.TYPE_10__*, i32, i32)** %23, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = load i32, i32* @SA_ALTERNATE, align 4
  %27 = call i32 %24(%struct.TYPE_10__* %25, i32 %26, i32 0)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  store i32 %30, i32* %34, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  store i32 %37, i32* %41, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = load i32, i32* @FR_CURSORSET, align 4
  %46 = call i32 @F_SET(%struct.TYPE_10__* %44, i32 %45)
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %48 = load i32, i32* @SC_VI, align 4
  %49 = load i32, i32* @SC_SCR_VI, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @F_CLR(%struct.TYPE_10__* %47, i32 %50)
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = load i32, i32* @SC_EX, align 4
  %54 = call i32 @F_SET(%struct.TYPE_10__* %52, i32 %53)
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = call i32 @ex_puts(%struct.TYPE_10__* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %21, %17
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @msgq(%struct.TYPE_10__*, i32, i8*) #1

declare dso_local i32 @F_SET(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @F_CLR(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @ex_puts(%struct.TYPE_10__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
