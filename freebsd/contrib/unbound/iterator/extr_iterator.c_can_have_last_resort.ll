; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_can_have_last_resort.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_can_have_last_resort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.delegpt = type { i64 }
%struct.iter_hints_stub = type { %struct.delegpt* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_env*, i32*, i64, i32, %struct.delegpt**)* @can_have_last_resort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_have_last_resort(%struct.module_env* %0, i32* %1, i64 %2, i32 %3, %struct.delegpt** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.module_env*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.delegpt**, align 8
  %12 = alloca %struct.delegpt*, align 8
  %13 = alloca %struct.iter_hints_stub*, align 8
  %14 = alloca i32, align 4
  store %struct.module_env* %0, %struct.module_env** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.delegpt** %4, %struct.delegpt*** %11, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @dname_count_labels(i32* %15)
  store i32 %16, i32* %14, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @dname_is_root(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %48, label %20

20:                                               ; preds = %5
  %21 = load %struct.module_env*, %struct.module_env** %7, align 8
  %22 = getelementptr inbounds %struct.module_env, %struct.module_env* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i64 @name_tree_find(i32* %24, i32* %25, i64 %26, i32 %27, i32 %28)
  %30 = inttoptr i64 %29 to %struct.iter_hints_stub*
  store %struct.iter_hints_stub* %30, %struct.iter_hints_stub** %13, align 8
  %31 = icmp ne %struct.iter_hints_stub* %30, null
  br i1 %31, label %32, label %48

32:                                               ; preds = %20
  %33 = load %struct.iter_hints_stub*, %struct.iter_hints_stub** %13, align 8
  %34 = getelementptr inbounds %struct.iter_hints_stub, %struct.iter_hints_stub* %33, i32 0, i32 0
  %35 = load %struct.delegpt*, %struct.delegpt** %34, align 8
  %36 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %32
  %40 = load %struct.delegpt**, %struct.delegpt*** %11, align 8
  %41 = icmp ne %struct.delegpt** %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.iter_hints_stub*, %struct.iter_hints_stub** %13, align 8
  %44 = getelementptr inbounds %struct.iter_hints_stub, %struct.iter_hints_stub* %43, i32 0, i32 0
  %45 = load %struct.delegpt*, %struct.delegpt** %44, align 8
  %46 = load %struct.delegpt**, %struct.delegpt*** %11, align 8
  store %struct.delegpt* %45, %struct.delegpt** %46, align 8
  br label %47

47:                                               ; preds = %42, %39
  store i32 0, i32* %6, align 4
  br label %69

48:                                               ; preds = %32, %20, %5
  %49 = load %struct.module_env*, %struct.module_env** %7, align 8
  %50 = getelementptr inbounds %struct.module_env, %struct.module_env* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call %struct.delegpt* @forwards_find(i32 %51, i32* %52, i32 %53)
  store %struct.delegpt* %54, %struct.delegpt** %12, align 8
  %55 = icmp ne %struct.delegpt* %54, null
  br i1 %55, label %56, label %68

56:                                               ; preds = %48
  %57 = load %struct.delegpt*, %struct.delegpt** %12, align 8
  %58 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load %struct.delegpt**, %struct.delegpt*** %11, align 8
  %63 = icmp ne %struct.delegpt** %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load %struct.delegpt*, %struct.delegpt** %12, align 8
  %66 = load %struct.delegpt**, %struct.delegpt*** %11, align 8
  store %struct.delegpt* %65, %struct.delegpt** %66, align 8
  br label %67

67:                                               ; preds = %64, %61
  store i32 0, i32* %6, align 4
  br label %69

68:                                               ; preds = %56, %48
  store i32 1, i32* %6, align 4
  br label %69

69:                                               ; preds = %68, %67, %47
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @dname_count_labels(i32*) #1

declare dso_local i32 @dname_is_root(i32*) #1

declare dso_local i64 @name_tree_find(i32*, i32*, i64, i32, i32) #1

declare dso_local %struct.delegpt* @forwards_find(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
