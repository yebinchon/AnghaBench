; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_funcs.c_cl_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_funcs.c_cl_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@stdscr = common dso_local global i32* null, align 8
@ERR = common dso_local global i64 0, align 8
@M_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Error: move: l(%zu + %zu) c(%zu + %zu)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cl_move(%struct.TYPE_7__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %10 = call i32* @CLSP(%struct.TYPE_7__* %9)
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = call i32* @CLSP(%struct.TYPE_7__* %13)
  br label %17

15:                                               ; preds = %3
  %16 = load i32*, i32** @stdscr, align 8
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi i32* [ %14, %12 ], [ %16, %15 ]
  store i32* %18, i32** %8, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @RLNO(%struct.TYPE_7__* %20, i64 %21)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @RCNO(%struct.TYPE_7__* %23, i64 %24)
  %26 = call i64 @wmove(i32* %19, i32 %22, i32 %25)
  %27 = load i64, i64* @ERR, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %17
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = load i32, i32* @M_ERR, align 4
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @msgq(%struct.TYPE_7__* %30, i32 %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %32, i32 %35, i64 %36, i32 %39)
  store i32 1, i32* %4, align 4
  br label %42

41:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %29
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32* @CLSP(%struct.TYPE_7__*) #1

declare dso_local i64 @wmove(i32*, i32, i32) #1

declare dso_local i32 @RLNO(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @RCNO(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @msgq(%struct.TYPE_7__*, i32, i8*, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
