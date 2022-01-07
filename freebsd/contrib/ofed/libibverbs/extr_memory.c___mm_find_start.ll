; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_memory.c___mm_find_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_memory.c___mm_find_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_mem_node = type { i64, i64, %struct.ibv_mem_node*, %struct.ibv_mem_node* }

@mm_root = common dso_local global %struct.ibv_mem_node* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ibv_mem_node* (i64, i64)* @__mm_find_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ibv_mem_node* @__mm_find_start(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ibv_mem_node*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** @mm_root, align 8
  store %struct.ibv_mem_node* %6, %struct.ibv_mem_node** %5, align 8
  br label %7

7:                                                ; preds = %37, %2
  %8 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %9 = icmp ne %struct.ibv_mem_node* %8, null
  br i1 %9, label %10, label %38

10:                                               ; preds = %7
  %11 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %12 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %3, align 8
  %15 = icmp ule i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %18 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %3, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %38

23:                                               ; preds = %16, %10
  %24 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %25 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %3, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %31 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %30, i32 0, i32 3
  %32 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %31, align 8
  store %struct.ibv_mem_node* %32, %struct.ibv_mem_node** %5, align 8
  br label %37

33:                                               ; preds = %23
  %34 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  %35 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %34, i32 0, i32 2
  %36 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %35, align 8
  store %struct.ibv_mem_node* %36, %struct.ibv_mem_node** %5, align 8
  br label %37

37:                                               ; preds = %33, %29
  br label %7

38:                                               ; preds = %22, %7
  %39 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  ret %struct.ibv_mem_node* %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
