; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_unpush_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_unpush_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_ops = type { %struct.target_ops* }

@target_stack = common dso_local global %struct.target_ops* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unpush_target(%struct.target_ops* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.target_ops*, align 8
  %4 = alloca %struct.target_ops**, align 8
  %5 = alloca %struct.target_ops*, align 8
  store %struct.target_ops* %0, %struct.target_ops** %3, align 8
  store %struct.target_ops** @target_stack, %struct.target_ops*** %4, align 8
  br label %6

6:                                                ; preds = %17, %1
  %7 = load %struct.target_ops**, %struct.target_ops*** %4, align 8
  %8 = load %struct.target_ops*, %struct.target_ops** %7, align 8
  %9 = icmp ne %struct.target_ops* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = load %struct.target_ops**, %struct.target_ops*** %4, align 8
  %12 = load %struct.target_ops*, %struct.target_ops** %11, align 8
  %13 = load %struct.target_ops*, %struct.target_ops** %3, align 8
  %14 = icmp eq %struct.target_ops* %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %21

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %16
  %18 = load %struct.target_ops**, %struct.target_ops*** %4, align 8
  %19 = load %struct.target_ops*, %struct.target_ops** %18, align 8
  %20 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %19, i32 0, i32 0
  store %struct.target_ops** %20, %struct.target_ops*** %4, align 8
  br label %6

21:                                               ; preds = %15, %6
  %22 = load %struct.target_ops**, %struct.target_ops*** %4, align 8
  %23 = load %struct.target_ops*, %struct.target_ops** %22, align 8
  %24 = icmp eq %struct.target_ops* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %39

26:                                               ; preds = %21
  %27 = load %struct.target_ops*, %struct.target_ops** %3, align 8
  %28 = call i32 @target_close(%struct.target_ops* %27, i32 0)
  %29 = load %struct.target_ops**, %struct.target_ops*** %4, align 8
  %30 = load %struct.target_ops*, %struct.target_ops** %29, align 8
  store %struct.target_ops* %30, %struct.target_ops** %5, align 8
  %31 = load %struct.target_ops**, %struct.target_ops*** %4, align 8
  %32 = load %struct.target_ops*, %struct.target_ops** %31, align 8
  %33 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %32, i32 0, i32 0
  %34 = load %struct.target_ops*, %struct.target_ops** %33, align 8
  %35 = load %struct.target_ops**, %struct.target_ops*** %4, align 8
  store %struct.target_ops* %34, %struct.target_ops** %35, align 8
  %36 = load %struct.target_ops*, %struct.target_ops** %5, align 8
  %37 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %36, i32 0, i32 0
  store %struct.target_ops* null, %struct.target_ops** %37, align 8
  %38 = call i32 (...) @update_current_target()
  store i32 1, i32* %2, align 4
  br label %39

39:                                               ; preds = %26, %25
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @target_close(%struct.target_ops*, i32) #1

declare dso_local i32 @update_current_target(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
