; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_find_default_run_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_find_default_run_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_ops = type { i64 }

@target_structs = common dso_local global %struct.target_ops** null, align 8
@target_struct_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Don't know how to %s.  Try \22help target\22.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.target_ops* (i8*)* @find_default_run_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.target_ops* @find_default_run_target(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.target_ops**, align 8
  %4 = alloca %struct.target_ops*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store %struct.target_ops* null, %struct.target_ops** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.target_ops**, %struct.target_ops*** @target_structs, align 8
  store %struct.target_ops** %6, %struct.target_ops*** %3, align 8
  br label %7

7:                                                ; preds = %31, %1
  %8 = load %struct.target_ops**, %struct.target_ops*** %3, align 8
  %9 = load %struct.target_ops**, %struct.target_ops*** @target_structs, align 8
  %10 = load i32, i32* @target_struct_size, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.target_ops*, %struct.target_ops** %9, i64 %11
  %13 = icmp ult %struct.target_ops** %8, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %7
  %15 = load %struct.target_ops**, %struct.target_ops*** %3, align 8
  %16 = load %struct.target_ops*, %struct.target_ops** %15, align 8
  %17 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %14
  %21 = load %struct.target_ops**, %struct.target_ops*** %3, align 8
  %22 = load %struct.target_ops*, %struct.target_ops** %21, align 8
  %23 = call i64 @target_can_run(%struct.target_ops* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.target_ops**, %struct.target_ops*** %3, align 8
  %27 = load %struct.target_ops*, %struct.target_ops** %26, align 8
  store %struct.target_ops* %27, %struct.target_ops** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %25, %20, %14
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.target_ops**, %struct.target_ops*** %3, align 8
  %33 = getelementptr inbounds %struct.target_ops*, %struct.target_ops** %32, i32 1
  store %struct.target_ops** %33, %struct.target_ops*** %3, align 8
  br label %7

34:                                               ; preds = %7
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i8*, i8** %2, align 8
  %39 = call i32 @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %37, %34
  %41 = load %struct.target_ops*, %struct.target_ops** %4, align 8
  ret %struct.target_ops* %41
}

declare dso_local i64 @target_can_run(%struct.target_ops*) #1

declare dso_local i32 @error(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
