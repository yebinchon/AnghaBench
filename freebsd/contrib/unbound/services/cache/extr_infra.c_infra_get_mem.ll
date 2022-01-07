; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_infra_get_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_infra_get_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.infra_cache = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @infra_get_mem(%struct.infra_cache* %0) #0 {
  %2 = alloca %struct.infra_cache*, align 8
  %3 = alloca i64, align 8
  store %struct.infra_cache* %0, %struct.infra_cache** %2, align 8
  %4 = load %struct.infra_cache*, %struct.infra_cache** %2, align 8
  %5 = getelementptr inbounds %struct.infra_cache, %struct.infra_cache* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = call i64 @slabhash_get_mem(i64 %6)
  %8 = add i64 24, %7
  store i64 %8, i64* %3, align 8
  %9 = load %struct.infra_cache*, %struct.infra_cache** %2, align 8
  %10 = getelementptr inbounds %struct.infra_cache, %struct.infra_cache* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.infra_cache*, %struct.infra_cache** %2, align 8
  %15 = getelementptr inbounds %struct.infra_cache, %struct.infra_cache* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @slabhash_get_mem(i64 %16)
  %18 = load i64, i64* %3, align 8
  %19 = add i64 %18, %17
  store i64 %19, i64* %3, align 8
  br label %20

20:                                               ; preds = %13, %1
  %21 = load %struct.infra_cache*, %struct.infra_cache** %2, align 8
  %22 = getelementptr inbounds %struct.infra_cache, %struct.infra_cache* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.infra_cache*, %struct.infra_cache** %2, align 8
  %27 = getelementptr inbounds %struct.infra_cache, %struct.infra_cache* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @slabhash_get_mem(i64 %28)
  %30 = load i64, i64* %3, align 8
  %31 = add i64 %30, %29
  store i64 %31, i64* %3, align 8
  br label %32

32:                                               ; preds = %25, %20
  %33 = load i64, i64* %3, align 8
  ret i64 %33
}

declare dso_local i64 @slabhash_get_mem(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
