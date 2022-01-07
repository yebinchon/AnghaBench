; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_memory.c___mm_rotate_right.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_memory.c___mm_rotate_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_mem_node = type { %struct.ibv_mem_node*, %struct.ibv_mem_node*, %struct.ibv_mem_node* }

@mm_root = common dso_local global %struct.ibv_mem_node* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibv_mem_node*)* @__mm_rotate_right to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mm_rotate_right(%struct.ibv_mem_node* %0) #0 {
  %2 = alloca %struct.ibv_mem_node*, align 8
  %3 = alloca %struct.ibv_mem_node*, align 8
  store %struct.ibv_mem_node* %0, %struct.ibv_mem_node** %2, align 8
  %4 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %5 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %4, i32 0, i32 2
  %6 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %5, align 8
  store %struct.ibv_mem_node* %6, %struct.ibv_mem_node** %3, align 8
  %7 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %3, align 8
  %8 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %7, i32 0, i32 1
  %9 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %8, align 8
  %10 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %11 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %10, i32 0, i32 2
  store %struct.ibv_mem_node* %9, %struct.ibv_mem_node** %11, align 8
  %12 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %13 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %12, i32 0, i32 2
  %14 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %13, align 8
  %15 = icmp ne %struct.ibv_mem_node* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %18 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %19 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %18, i32 0, i32 2
  %20 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %19, align 8
  %21 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %20, i32 0, i32 0
  store %struct.ibv_mem_node* %17, %struct.ibv_mem_node** %21, align 8
  br label %22

22:                                               ; preds = %16, %1
  %23 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %24 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %23, i32 0, i32 0
  %25 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %24, align 8
  %26 = icmp ne %struct.ibv_mem_node* %25, null
  br i1 %26, label %27, label %48

27:                                               ; preds = %22
  %28 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %29 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %28, i32 0, i32 0
  %30 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %29, align 8
  %31 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %30, i32 0, i32 1
  %32 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %31, align 8
  %33 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %34 = icmp eq %struct.ibv_mem_node* %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %3, align 8
  %37 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %38 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %37, i32 0, i32 0
  %39 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %38, align 8
  %40 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %39, i32 0, i32 1
  store %struct.ibv_mem_node* %36, %struct.ibv_mem_node** %40, align 8
  br label %47

41:                                               ; preds = %27
  %42 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %3, align 8
  %43 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %44 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %43, i32 0, i32 0
  %45 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %44, align 8
  %46 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %45, i32 0, i32 2
  store %struct.ibv_mem_node* %42, %struct.ibv_mem_node** %46, align 8
  br label %47

47:                                               ; preds = %41, %35
  br label %50

48:                                               ; preds = %22
  %49 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %3, align 8
  store %struct.ibv_mem_node* %49, %struct.ibv_mem_node** @mm_root, align 8
  br label %50

50:                                               ; preds = %48, %47
  %51 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %52 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %51, i32 0, i32 0
  %53 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %52, align 8
  %54 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %3, align 8
  %55 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %54, i32 0, i32 0
  store %struct.ibv_mem_node* %53, %struct.ibv_mem_node** %55, align 8
  %56 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %57 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %3, align 8
  %58 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %57, i32 0, i32 1
  store %struct.ibv_mem_node* %56, %struct.ibv_mem_node** %58, align 8
  %59 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %3, align 8
  %60 = load %struct.ibv_mem_node*, %struct.ibv_mem_node** %2, align 8
  %61 = getelementptr inbounds %struct.ibv_mem_node, %struct.ibv_mem_node* %60, i32 0, i32 0
  store %struct.ibv_mem_node* %59, %struct.ibv_mem_node** %61, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
