; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_hints.c_hints_lookup_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_hints.c_hints_lookup_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delegpt = type { i32 }
%struct.iter_hints = type { i32 }
%struct.iter_hints_stub = type { %struct.delegpt* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.delegpt* @hints_lookup_root(%struct.iter_hints* %0, i32 %1) #0 {
  %3 = alloca %struct.delegpt*, align 8
  %4 = alloca %struct.iter_hints*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iter_hints_stub*, align 8
  store %struct.iter_hints* %0, %struct.iter_hints** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.iter_hints*, %struct.iter_hints** %4, align 8
  %9 = getelementptr inbounds %struct.iter_hints, %struct.iter_hints* %8, i32 0, i32 0
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @name_tree_find(i32* %9, i32* %6, i32 1, i32 1, i32 %10)
  %12 = inttoptr i64 %11 to %struct.iter_hints_stub*
  store %struct.iter_hints_stub* %12, %struct.iter_hints_stub** %7, align 8
  %13 = load %struct.iter_hints_stub*, %struct.iter_hints_stub** %7, align 8
  %14 = icmp ne %struct.iter_hints_stub* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.delegpt* null, %struct.delegpt** %3, align 8
  br label %20

16:                                               ; preds = %2
  %17 = load %struct.iter_hints_stub*, %struct.iter_hints_stub** %7, align 8
  %18 = getelementptr inbounds %struct.iter_hints_stub, %struct.iter_hints_stub* %17, i32 0, i32 0
  %19 = load %struct.delegpt*, %struct.delegpt** %18, align 8
  store %struct.delegpt* %19, %struct.delegpt** %3, align 8
  br label %20

20:                                               ; preds = %16, %15
  %21 = load %struct.delegpt*, %struct.delegpt** %3, align 8
  ret %struct.delegpt* %21
}

declare dso_local i64 @name_tree_find(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
