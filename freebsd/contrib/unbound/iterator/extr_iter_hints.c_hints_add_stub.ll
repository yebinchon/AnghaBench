; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_hints.c_hints_add_stub.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_hints.c_hints_add_stub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iter_hints = type { i32 }
%struct.delegpt = type { i32, i32, i32 }
%struct.iter_hints_stub = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hints_add_stub(%struct.iter_hints* %0, i32 %1, %struct.delegpt* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iter_hints*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.delegpt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iter_hints_stub*, align 8
  store %struct.iter_hints* %0, %struct.iter_hints** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.delegpt* %2, %struct.delegpt** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.iter_hints*, %struct.iter_hints** %6, align 8
  %12 = getelementptr inbounds %struct.iter_hints, %struct.iter_hints* %11, i32 0, i32 0
  %13 = load %struct.delegpt*, %struct.delegpt** %8, align 8
  %14 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.delegpt*, %struct.delegpt** %8, align 8
  %17 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.delegpt*, %struct.delegpt** %8, align 8
  %20 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @name_tree_find(i32* %12, i32 %15, i32 %18, i32 %21, i32 %22)
  %24 = inttoptr i64 %23 to %struct.iter_hints_stub*
  store %struct.iter_hints_stub* %24, %struct.iter_hints_stub** %10, align 8
  %25 = icmp ne %struct.iter_hints_stub* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %4
  %27 = load %struct.iter_hints*, %struct.iter_hints** %6, align 8
  %28 = getelementptr inbounds %struct.iter_hints, %struct.iter_hints* %27, i32 0, i32 0
  %29 = load %struct.iter_hints_stub*, %struct.iter_hints_stub** %10, align 8
  %30 = getelementptr inbounds %struct.iter_hints_stub, %struct.iter_hints_stub* %29, i32 0, i32 0
  %31 = call i32 @rbtree_delete(i32* %28, i32* %30)
  %32 = load %struct.iter_hints_stub*, %struct.iter_hints_stub** %10, align 8
  %33 = call i32 @hints_stub_free(%struct.iter_hints_stub* %32)
  br label %34

34:                                               ; preds = %26, %4
  %35 = load %struct.iter_hints*, %struct.iter_hints** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.delegpt*, %struct.delegpt** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @hints_insert(%struct.iter_hints* %35, i32 %36, %struct.delegpt* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %46

42:                                               ; preds = %34
  %43 = load %struct.iter_hints*, %struct.iter_hints** %6, align 8
  %44 = getelementptr inbounds %struct.iter_hints, %struct.iter_hints* %43, i32 0, i32 0
  %45 = call i32 @name_tree_init_parents(i32* %44)
  store i32 1, i32* %5, align 4
  br label %46

46:                                               ; preds = %42, %41
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i64 @name_tree_find(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @rbtree_delete(i32*, i32*) #1

declare dso_local i32 @hints_stub_free(%struct.iter_hints_stub*) #1

declare dso_local i32 @hints_insert(%struct.iter_hints*, i32, %struct.delegpt*, i32) #1

declare dso_local i32 @name_tree_init_parents(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
