; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_hints.c_hints_lookup_stub.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_hints.c_hints_lookup_stub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iter_hints_stub = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.iter_hints = type { i32 }
%struct.delegpt = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iter_hints_stub* @hints_lookup_stub(%struct.iter_hints* %0, i32* %1, i32 %2, %struct.delegpt* %3) #0 {
  %5 = alloca %struct.iter_hints_stub*, align 8
  %6 = alloca %struct.iter_hints*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.delegpt*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.iter_hints_stub*, align 8
  store %struct.iter_hints* %0, %struct.iter_hints** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.delegpt* %3, %struct.delegpt** %9, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @dname_count_size_labels(i32* %13, i64* %10)
  store i32 %14, i32* %11, align 4
  %15 = load %struct.iter_hints*, %struct.iter_hints** %6, align 8
  %16 = getelementptr inbounds %struct.iter_hints, %struct.iter_hints* %15, i32 0, i32 0
  %17 = load i32*, i32** %7, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i64 @name_tree_lookup(i32* %16, i32* %17, i64 %18, i32 %19, i32 %20)
  %22 = inttoptr i64 %21 to %struct.iter_hints_stub*
  store %struct.iter_hints_stub* %22, %struct.iter_hints_stub** %12, align 8
  %23 = load %struct.iter_hints_stub*, %struct.iter_hints_stub** %12, align 8
  %24 = icmp ne %struct.iter_hints_stub* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  store %struct.iter_hints_stub* null, %struct.iter_hints_stub** %5, align 8
  br label %79

26:                                               ; preds = %4
  %27 = load %struct.delegpt*, %struct.delegpt** %9, align 8
  %28 = icmp eq %struct.delegpt* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load %struct.iter_hints_stub*, %struct.iter_hints_stub** %12, align 8
  %31 = getelementptr inbounds %struct.iter_hints_stub, %struct.iter_hints_stub* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load %struct.iter_hints_stub*, %struct.iter_hints_stub** %12, align 8
  store %struct.iter_hints_stub* %37, %struct.iter_hints_stub** %5, align 8
  br label %79

38:                                               ; preds = %29
  store %struct.iter_hints_stub* null, %struct.iter_hints_stub** %5, align 8
  br label %79

39:                                               ; preds = %26
  %40 = load %struct.iter_hints_stub*, %struct.iter_hints_stub** %12, align 8
  %41 = getelementptr inbounds %struct.iter_hints_stub, %struct.iter_hints_stub* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %39
  %45 = load %struct.delegpt*, %struct.delegpt** %9, align 8
  %46 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.iter_hints_stub*, %struct.iter_hints_stub** %12, align 8
  %49 = getelementptr inbounds %struct.iter_hints_stub, %struct.iter_hints_stub* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @query_dname_compare(i32 %47, i32 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = load %struct.iter_hints_stub*, %struct.iter_hints_stub** %12, align 8
  store %struct.iter_hints_stub* %56, %struct.iter_hints_stub** %5, align 8
  br label %79

57:                                               ; preds = %44, %39
  %58 = load %struct.iter_hints_stub*, %struct.iter_hints_stub** %12, align 8
  %59 = getelementptr inbounds %struct.iter_hints_stub, %struct.iter_hints_stub* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.iter_hints_stub*, %struct.iter_hints_stub** %12, align 8
  %64 = getelementptr inbounds %struct.iter_hints_stub, %struct.iter_hints_stub* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.delegpt*, %struct.delegpt** %9, align 8
  %69 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.delegpt*, %struct.delegpt** %9, align 8
  %72 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @dname_strict_subdomain(i32 %62, i32 %67, i32 %70, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %57
  %77 = load %struct.iter_hints_stub*, %struct.iter_hints_stub** %12, align 8
  store %struct.iter_hints_stub* %77, %struct.iter_hints_stub** %5, align 8
  br label %79

78:                                               ; preds = %57
  store %struct.iter_hints_stub* null, %struct.iter_hints_stub** %5, align 8
  br label %79

79:                                               ; preds = %78, %76, %55, %38, %36, %25
  %80 = load %struct.iter_hints_stub*, %struct.iter_hints_stub** %5, align 8
  ret %struct.iter_hints_stub* %80
}

declare dso_local i32 @dname_count_size_labels(i32*, i64*) #1

declare dso_local i64 @name_tree_lookup(i32*, i32*, i64, i32, i32) #1

declare dso_local i64 @query_dname_compare(i32, i32) #1

declare dso_local i64 @dname_strict_subdomain(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
