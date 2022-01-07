; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_infra_ratelimit_dec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_infra_ratelimit_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.infra_cache = type { i32 }
%struct.lruhash_entry = type { i32, i32 }

@infra_dp_ratelimit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @infra_ratelimit_dec(%struct.infra_cache* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.infra_cache*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lruhash_entry*, align 8
  %10 = alloca i32*, align 8
  store %struct.infra_cache* %0, %struct.infra_cache** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @infra_dp_ratelimit, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  br label %39

14:                                               ; preds = %4
  %15 = load %struct.infra_cache*, %struct.infra_cache** %5, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call %struct.lruhash_entry* @infra_find_ratedata(%struct.infra_cache* %15, i32* %16, i64 %17, i32 1)
  store %struct.lruhash_entry* %18, %struct.lruhash_entry** %9, align 8
  %19 = load %struct.lruhash_entry*, %struct.lruhash_entry** %9, align 8
  %20 = icmp ne %struct.lruhash_entry* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  br label %39

22:                                               ; preds = %14
  %23 = load %struct.lruhash_entry*, %struct.lruhash_entry** %9, align 8
  %24 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32* @infra_rate_find_second(i32 %25, i32 %26)
  store i32* %27, i32** %10, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %31, %22
  %36 = load %struct.lruhash_entry*, %struct.lruhash_entry** %9, align 8
  %37 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %36, i32 0, i32 0
  %38 = call i32 @lock_rw_unlock(i32* %37)
  br label %39

39:                                               ; preds = %35, %21, %13
  ret void
}

declare dso_local %struct.lruhash_entry* @infra_find_ratedata(%struct.infra_cache*, i32*, i64, i32) #1

declare dso_local i32* @infra_rate_find_second(i32, i32) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
