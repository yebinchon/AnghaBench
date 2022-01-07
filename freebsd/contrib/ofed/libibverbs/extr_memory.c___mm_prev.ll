; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_memory.c___mm_prev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_memory.c___mm_prev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_mem_node = type { %struct.ibv_mem_node*, %struct.ibv_mem_node*, %struct.ibv_mem_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ibv_mem_node* (%struct.ibv_mem_node*)* @__mm_prev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ibv_mem_node* @__mm_prev(%struct.ibv_mem_node* %0) #0 {
  %2 = alloca %struct.ibv_mem_node*, align 8
  store %struct.ibv_mem_node* %0, %struct.ibv_mem_node** %2, align 8
  %3 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %4 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %3, i32 0, i32 1
  %5 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %4, align 8
  %6 = icmp ne %struct.ibv_mem_node* %5, null
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %9 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %8, i32 0, i32 1
  %10 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %9, align 8
  store %struct.ibv_mem_node* %10, %struct.ibv_mem_node** %2, align 8
  br label %11

11:                                               ; preds = %16, %7
  %12 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %13 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %12, i32 0, i32 2
  %14 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %13, align 8
  %15 = icmp ne %struct.ibv_mem_node* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %18 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %17, i32 0, i32 2
  %19 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %18, align 8
  store %struct.ibv_mem_node* %19, %struct.ibv_mem_node** %2, align 8
  br label %11

20:                                               ; preds = %11
  br label %45

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %37, %21
  %23 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %24 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %23, i32 0, i32 0
  %25 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %24, align 8
  %26 = icmp ne %struct.ibv_mem_node* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %29 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %30 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %29, i32 0, i32 0
  %31 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %30, align 8
  %32 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %31, i32 0, i32 1
  %33 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %32, align 8
  %34 = icmp eq %struct.ibv_mem_node* %28, %33
  br label %35

35:                                               ; preds = %27, %22
  %36 = phi i1 [ false, %22 ], [ %34, %27 ]
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  %38 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %39 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %38, i32 0, i32 0
  %40 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %39, align 8
  store %struct.ibv_mem_node* %40, %struct.ibv_mem_node** %2, align 8
  br label %22

41:                                               ; preds = %35
  %42 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %43 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %42, i32 0, i32 0
  %44 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %43, align 8
  store %struct.ibv_mem_node* %44, %struct.ibv_mem_node** %2, align 8
  br label %45

45:                                               ; preds = %41, %20
  %46 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  ret %struct.ibv_mem_node* %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
