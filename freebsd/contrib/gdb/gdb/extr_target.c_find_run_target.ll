; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_find_run_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_find_run_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_ops = type { i64 }

@target_structs = common dso_local global %struct.target_ops** null, align 8
@target_struct_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.target_ops* @find_run_target() #0 {
  %1 = alloca %struct.target_ops**, align 8
  %2 = alloca %struct.target_ops*, align 8
  %3 = alloca i32, align 4
  store %struct.target_ops* null, %struct.target_ops** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.target_ops**, %struct.target_ops*** @target_structs, align 8
  store %struct.target_ops** %4, %struct.target_ops*** %1, align 8
  br label %5

5:                                                ; preds = %29, %0
  %6 = load %struct.target_ops**, %struct.target_ops*** %1, align 8
  %7 = load %struct.target_ops**, %struct.target_ops*** @target_structs, align 8
  %8 = load i32, i32* @target_struct_size, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.target_ops*, %struct.target_ops** %7, i64 %9
  %11 = icmp ult %struct.target_ops** %6, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %5
  %13 = load %struct.target_ops**, %struct.target_ops*** %1, align 8
  %14 = load %struct.target_ops*, %struct.target_ops** %13, align 8
  %15 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %12
  %19 = load %struct.target_ops**, %struct.target_ops*** %1, align 8
  %20 = load %struct.target_ops*, %struct.target_ops** %19, align 8
  %21 = call i64 @target_can_run(%struct.target_ops* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.target_ops**, %struct.target_ops*** %1, align 8
  %25 = load %struct.target_ops*, %struct.target_ops** %24, align 8
  store %struct.target_ops* %25, %struct.target_ops** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %23, %18, %12
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.target_ops**, %struct.target_ops*** %1, align 8
  %31 = getelementptr inbounds %struct.target_ops*, %struct.target_ops** %30, i32 1
  store %struct.target_ops** %31, %struct.target_ops*** %1, align 8
  br label %5

32:                                               ; preds = %5
  %33 = load i32, i32* %3, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load %struct.target_ops*, %struct.target_ops** %2, align 8
  br label %38

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi %struct.target_ops* [ %36, %35 ], [ null, %37 ]
  ret %struct.target_ops* %39
}

declare dso_local i64 @target_can_run(%struct.target_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
