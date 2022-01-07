; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_ex.c_v_ecl_exec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_ex.c_v_ecl_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }

@VIM_EMPTY = common dso_local global i32 0, align 4
@M_BERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"307|No ex command to execute\00", align 1
@SC_EXIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v_ecl_exec(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @db_get(%struct.TYPE_8__* %6, i32 %9, i32 0, i32** %5, i64* %4)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = load i32, i32* @VIM_EMPTY, align 4
  %20 = call i32 @v_emsg(%struct.TYPE_8__* %18, i32* null, i32 %19)
  store i32 1, i32* %2, align 4
  br label %44

21:                                               ; preds = %12, %1
  %22 = load i64, i64* %4, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = load i32, i32* @M_BERR, align 4
  %27 = call i32 @msgq(%struct.TYPE_8__* %25, i32 %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %44

28:                                               ; preds = %21
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i64 @ex_run_str(%struct.TYPE_8__* %29, i32* null, i32* %30, i64 %31, i32 0, i32 0)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %44

35:                                               ; preds = %28
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = load i32, i32* @SC_EXIT, align 4
  %43 = call i32 @F_SET(%struct.TYPE_8__* %41, i32 %42)
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %35, %34, %24, %17
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i64 @db_get(%struct.TYPE_8__*, i32, i32, i32**, i64*) #1

declare dso_local i32 @v_emsg(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @msgq(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i64 @ex_run_str(%struct.TYPE_8__*, i32*, i32*, i64, i32, i32) #1

declare dso_local i32 @F_SET(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
