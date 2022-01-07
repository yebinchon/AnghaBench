; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/libgdb/extr_fbsd-threads.c_fbsd_thread_xfer_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/libgdb/extr_fbsd-threads.c_fbsd_thread_xfer_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32, i8*, i32, i32, %struct.mem_attrib*, %struct.target_ops*)* }
%struct.mem_attrib = type { i32 }
%struct.target_ops = type { i32 }
%struct.TYPE_3__ = type { i32 (i32, i8*, i32, i32, %struct.mem_attrib*, %struct.target_ops*)* }

@target_has_execution = common dso_local global i64 0, align 8
@child_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@orig_core_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32, %struct.mem_attrib*, %struct.target_ops*)* @fbsd_thread_xfer_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fbsd_thread_xfer_memory(i32 %0, i8* %1, i32 %2, i32 %3, %struct.mem_attrib* %4, %struct.target_ops* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mem_attrib*, align 8
  %12 = alloca %struct.target_ops*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.mem_attrib* %4, %struct.mem_attrib** %11, align 8
  store %struct.target_ops* %5, %struct.target_ops** %12, align 8
  %14 = load i64, i64* @target_has_execution, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %6
  %17 = load i32 (i32, i8*, i32, i32, %struct.mem_attrib*, %struct.target_ops*)*, i32 (i32, i8*, i32, i32, %struct.mem_attrib*, %struct.target_ops*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @child_ops, i32 0, i32 0), align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.mem_attrib*, %struct.mem_attrib** %11, align 8
  %23 = load %struct.target_ops*, %struct.target_ops** %12, align 8
  %24 = call i32 %17(i32 %18, i8* %19, i32 %20, i32 %21, %struct.mem_attrib* %22, %struct.target_ops* %23)
  store i32 %24, i32* %13, align 4
  br label %34

25:                                               ; preds = %6
  %26 = load i32 (i32, i8*, i32, i32, %struct.mem_attrib*, %struct.target_ops*)*, i32 (i32, i8*, i32, i32, %struct.mem_attrib*, %struct.target_ops*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @orig_core_ops, i32 0, i32 0), align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.mem_attrib*, %struct.mem_attrib** %11, align 8
  %32 = load %struct.target_ops*, %struct.target_ops** %12, align 8
  %33 = call i32 %26(i32 %27, i8* %28, i32 %29, i32 %30, %struct.mem_attrib* %31, %struct.target_ops* %32)
  store i32 %33, i32* %13, align 4
  br label %34

34:                                               ; preds = %25, %16
  %35 = load i32, i32* %13, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
