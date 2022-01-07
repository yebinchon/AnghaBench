; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sol-thread.c_sol_thread_xfer_partial.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sol-thread.c_sol_thread_xfer_partial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (%struct.target_ops*, i32, i8*, i8*, i8*, i32, i32)* }
%struct.target_ops = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.target_ops*, i32, i8*, i8*, i8*, i32, i32)* }
%struct.cleanup = type { i32 }

@inferior_ptid = common dso_local global i32 0, align 4
@target_has_execution = common dso_local global i64 0, align 8
@procfs_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@orig_core_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.target_ops*, i32, i8*, i8*, i8*, i32, i32)* @sol_thread_xfer_partial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sol_thread_xfer_partial(%struct.target_ops* %0, i32 %1, i8* %2, i8* %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.target_ops*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.cleanup*, align 8
  store %struct.target_ops* %0, %struct.target_ops** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = call %struct.cleanup* (...) @save_inferior_ptid()
  store %struct.cleanup* %17, %struct.cleanup** %16, align 8
  %18 = load i32, i32* @inferior_ptid, align 4
  %19 = call i64 @is_thread(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %7
  %22 = load i32, i32* @inferior_ptid, align 4
  %23 = call i32 @target_thread_alive(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21, %7
  %26 = call i32 (...) @procfs_first_available()
  store i32 %26, i32* @inferior_ptid, align 4
  br label %27

27:                                               ; preds = %25, %21
  %28 = load i64, i64* @target_has_execution, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load i32 (%struct.target_ops*, i32, i8*, i8*, i8*, i32, i32)*, i32 (%struct.target_ops*, i32, i8*, i8*, i8*, i32, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @procfs_ops, i32 0, i32 0), align 8
  %32 = load %struct.target_ops*, %struct.target_ops** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i8*, i8** %10, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %14, align 4
  %39 = call i32 %31(%struct.target_ops* %32, i32 %33, i8* %34, i8* %35, i8* %36, i32 %37, i32 %38)
  store i32 %39, i32* %15, align 4
  br label %50

40:                                               ; preds = %27
  %41 = load i32 (%struct.target_ops*, i32, i8*, i8*, i8*, i32, i32)*, i32 (%struct.target_ops*, i32, i8*, i8*, i8*, i32, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @orig_core_ops, i32 0, i32 0), align 8
  %42 = load %struct.target_ops*, %struct.target_ops** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i8*, i8** %10, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %14, align 4
  %49 = call i32 %41(%struct.target_ops* %42, i32 %43, i8* %44, i8* %45, i8* %46, i32 %47, i32 %48)
  store i32 %49, i32* %15, align 4
  br label %50

50:                                               ; preds = %40, %30
  %51 = load %struct.cleanup*, %struct.cleanup** %16, align 8
  %52 = call i32 @do_cleanups(%struct.cleanup* %51)
  %53 = load i32, i32* %15, align 4
  ret i32 %53
}

declare dso_local %struct.cleanup* @save_inferior_ptid(...) #1

declare dso_local i64 @is_thread(i32) #1

declare dso_local i32 @target_thread_alive(i32) #1

declare dso_local i32 @procfs_first_available(...) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
