; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_tnt_cache.c_pt_tnt_cache_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_tnt_cache.c_pt_tnt_cache_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_tnt_cache = type { i32, i32 }

@pte_invalid = common dso_local global i32 0, align 4
@pte_bad_query = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_tnt_cache_query(%struct.pt_tnt_cache* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_tnt_cache*, align 8
  %4 = alloca i32, align 4
  store %struct.pt_tnt_cache* %0, %struct.pt_tnt_cache** %3, align 8
  %5 = load %struct.pt_tnt_cache*, %struct.pt_tnt_cache** %3, align 8
  %6 = icmp ne %struct.pt_tnt_cache* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @pte_invalid, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %33

10:                                               ; preds = %1
  %11 = load %struct.pt_tnt_cache*, %struct.pt_tnt_cache** %3, align 8
  %12 = getelementptr inbounds %struct.pt_tnt_cache, %struct.pt_tnt_cache* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* @pte_bad_query, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %33

18:                                               ; preds = %10
  %19 = load %struct.pt_tnt_cache*, %struct.pt_tnt_cache** %3, align 8
  %20 = getelementptr inbounds %struct.pt_tnt_cache, %struct.pt_tnt_cache* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.pt_tnt_cache*, %struct.pt_tnt_cache** %3, align 8
  %23 = getelementptr inbounds %struct.pt_tnt_cache, %struct.pt_tnt_cache* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %4, align 4
  %28 = load %struct.pt_tnt_cache*, %struct.pt_tnt_cache** %3, align 8
  %29 = getelementptr inbounds %struct.pt_tnt_cache, %struct.pt_tnt_cache* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %18, %15, %7
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
