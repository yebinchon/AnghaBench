; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_hints.c_hints_delete_stub.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_hints.c_hints_delete_stub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iter_hints = type { i32 }
%struct.iter_hints_stub = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hints_delete_stub(%struct.iter_hints* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.iter_hints*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.iter_hints_stub*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.iter_hints* %0, %struct.iter_hints** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @dname_count_size_labels(i32* %10, i64* %8)
  store i32 %11, i32* %9, align 4
  %12 = load %struct.iter_hints*, %struct.iter_hints** %4, align 8
  %13 = getelementptr inbounds %struct.iter_hints, %struct.iter_hints* %12, i32 0, i32 0
  %14 = load i32*, i32** %6, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @name_tree_find(i32* %13, i32* %14, i64 %15, i32 %16, i32 %17)
  %19 = inttoptr i64 %18 to %struct.iter_hints_stub*
  store %struct.iter_hints_stub* %19, %struct.iter_hints_stub** %7, align 8
  %20 = icmp ne %struct.iter_hints_stub* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  br label %33

22:                                               ; preds = %3
  %23 = load %struct.iter_hints*, %struct.iter_hints** %4, align 8
  %24 = getelementptr inbounds %struct.iter_hints, %struct.iter_hints* %23, i32 0, i32 0
  %25 = load %struct.iter_hints_stub*, %struct.iter_hints_stub** %7, align 8
  %26 = getelementptr inbounds %struct.iter_hints_stub, %struct.iter_hints_stub* %25, i32 0, i32 0
  %27 = call i32 @rbtree_delete(i32* %24, i32* %26)
  %28 = load %struct.iter_hints_stub*, %struct.iter_hints_stub** %7, align 8
  %29 = call i32 @hints_stub_free(%struct.iter_hints_stub* %28)
  %30 = load %struct.iter_hints*, %struct.iter_hints** %4, align 8
  %31 = getelementptr inbounds %struct.iter_hints, %struct.iter_hints* %30, i32 0, i32 0
  %32 = call i32 @name_tree_init_parents(i32* %31)
  br label %33

33:                                               ; preds = %22, %21
  ret void
}

declare dso_local i32 @dname_count_size_labels(i32*, i64*) #1

declare dso_local i64 @name_tree_find(i32*, i32*, i64, i32, i32) #1

declare dso_local i32 @rbtree_delete(i32*, i32*) #1

declare dso_local i32 @hints_stub_free(%struct.iter_hints_stub*) #1

declare dso_local i32 @name_tree_init_parents(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
