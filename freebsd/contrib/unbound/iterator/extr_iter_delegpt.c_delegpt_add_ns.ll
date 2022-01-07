; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_add_ns.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_add_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delegpt = type { %struct.delegpt_ns*, i32 }
%struct.delegpt_ns = type { i64, i64, i64, i64, i32, i64, i64, i64, %struct.delegpt_ns* }
%struct.regional = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @delegpt_add_ns(%struct.delegpt* %0, %struct.regional* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.delegpt*, align 8
  %7 = alloca %struct.regional*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.delegpt_ns*, align 8
  %11 = alloca i64, align 8
  store %struct.delegpt* %0, %struct.delegpt** %6, align 8
  store %struct.regional* %1, %struct.regional** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %8, align 8
  %13 = call i32 @dname_count_size_labels(i32* %12, i64* %11)
  %14 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %15 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @log_assert(i32 %19)
  %21 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i64, i64* %11, align 8
  %24 = call i64 @delegpt_find_ns(%struct.delegpt* %21, i32* %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %72

27:                                               ; preds = %4
  %28 = load %struct.regional*, %struct.regional** %7, align 8
  %29 = call i64 @regional_alloc(%struct.regional* %28, i32 72)
  %30 = inttoptr i64 %29 to %struct.delegpt_ns*
  store %struct.delegpt_ns* %30, %struct.delegpt_ns** %10, align 8
  %31 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %32 = icmp ne %struct.delegpt_ns* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %72

34:                                               ; preds = %27
  %35 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %36 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %35, i32 0, i32 0
  %37 = load %struct.delegpt_ns*, %struct.delegpt_ns** %36, align 8
  %38 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %39 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %38, i32 0, i32 8
  store %struct.delegpt_ns* %37, %struct.delegpt_ns** %39, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %42 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %44 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %45 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %44, i32 0, i32 0
  store %struct.delegpt_ns* %43, %struct.delegpt_ns** %45, align 8
  %46 = load %struct.regional*, %struct.regional** %7, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %49 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @regional_alloc_init(%struct.regional* %46, i32* %47, i64 %50)
  %52 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %53 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %55 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %54, i32 0, i32 7
  store i64 0, i64* %55, align 8
  %56 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %57 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %56, i32 0, i32 6
  store i64 0, i64* %57, align 8
  %58 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %59 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %58, i32 0, i32 5
  store i64 0, i64* %59, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %62 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %64 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %63, i32 0, i32 3
  store i64 0, i64* %64, align 8
  %65 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %66 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %65, i32 0, i32 2
  store i64 0, i64* %66, align 8
  %67 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %68 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %34, %33, %26
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @dname_count_size_labels(i32*, i64*) #1

declare dso_local i32 @log_assert(i32) #1

declare dso_local i64 @delegpt_find_ns(%struct.delegpt*, i32*, i64) #1

declare dso_local i64 @regional_alloc(%struct.regional*, i32) #1

declare dso_local i64 @regional_alloc_init(%struct.regional*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
