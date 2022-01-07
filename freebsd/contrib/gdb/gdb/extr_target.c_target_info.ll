; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_target_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_target_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.target_ops = type { i32, i32 (%struct.target_ops*)*, i32, i64, i32, %struct.target_ops* }

@symfile_objfile = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"Symbols from \22%s\22.\0A\00", align 1
@target_stack = common dso_local global %struct.target_ops* null, align 8
@dummy_stratum = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"\09While running this, GDB does not access memory from...\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @target_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @target_info(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.target_ops*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @symfile_objfile, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @symfile_objfile, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %14

14:                                               ; preds = %9, %2
  %15 = load %struct.target_ops*, %struct.target_ops** @target_stack, align 8
  store %struct.target_ops* %15, %struct.target_ops** %5, align 8
  br label %16

16:                                               ; preds = %52, %14
  %17 = load %struct.target_ops*, %struct.target_ops** %5, align 8
  %18 = icmp ne %struct.target_ops* %17, null
  br i1 %18, label %19, label %56

19:                                               ; preds = %16
  %20 = load %struct.target_ops*, %struct.target_ops** %5, align 8
  %21 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %52

25:                                               ; preds = %19
  %26 = load %struct.target_ops*, %struct.target_ops** %5, align 8
  %27 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i64, i64* @dummy_stratum, align 8
  %31 = trunc i64 %30 to i32
  %32 = icmp sle i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %52

34:                                               ; preds = %25
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %34
  %40 = load %struct.target_ops*, %struct.target_ops** %5, align 8
  %41 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load %struct.target_ops*, %struct.target_ops** %5, align 8
  %45 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %44, i32 0, i32 1
  %46 = load i32 (%struct.target_ops*)*, i32 (%struct.target_ops*)** %45, align 8
  %47 = load %struct.target_ops*, %struct.target_ops** %5, align 8
  %48 = call i32 %46(%struct.target_ops* %47)
  %49 = load %struct.target_ops*, %struct.target_ops** %5, align 8
  %50 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %39, %33, %24
  %53 = load %struct.target_ops*, %struct.target_ops** %5, align 8
  %54 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %53, i32 0, i32 5
  %55 = load %struct.target_ops*, %struct.target_ops** %54, align 8
  store %struct.target_ops* %55, %struct.target_ops** %5, align 8
  br label %16

56:                                               ; preds = %16
  ret void
}

declare dso_local i32 @printf_unfiltered(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
