; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_alloc.c_alloc_reg_obtain.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_alloc.c_alloc_reg_obtain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regional = type { i32* }
%struct.alloc_cache = type { i64, %struct.regional* }

@ALLOC_REG_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.regional* @alloc_reg_obtain(%struct.alloc_cache* %0) #0 {
  %2 = alloca %struct.regional*, align 8
  %3 = alloca %struct.alloc_cache*, align 8
  %4 = alloca %struct.regional*, align 8
  store %struct.alloc_cache* %0, %struct.alloc_cache** %3, align 8
  %5 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %6 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %11 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %10, i32 0, i32 1
  %12 = load %struct.regional*, %struct.regional** %11, align 8
  store %struct.regional* %12, %struct.regional** %4, align 8
  %13 = load %struct.regional*, %struct.regional** %4, align 8
  %14 = getelementptr inbounds %struct.regional, %struct.regional* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = bitcast i32* %15 to %struct.regional*
  %17 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %18 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %17, i32 0, i32 1
  store %struct.regional* %16, %struct.regional** %18, align 8
  %19 = load %struct.regional*, %struct.regional** %4, align 8
  %20 = getelementptr inbounds %struct.regional, %struct.regional* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  %21 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %22 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, i64* %22, align 8
  %25 = load %struct.regional*, %struct.regional** %4, align 8
  store %struct.regional* %25, %struct.regional** %2, align 8
  br label %29

26:                                               ; preds = %1
  %27 = load i32, i32* @ALLOC_REG_SIZE, align 4
  %28 = call %struct.regional* @regional_create_custom(i32 %27)
  store %struct.regional* %28, %struct.regional** %2, align 8
  br label %29

29:                                               ; preds = %26, %9
  %30 = load %struct.regional*, %struct.regional** %2, align 8
  ret %struct.regional* %30
}

declare dso_local %struct.regional* @regional_create_custom(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
