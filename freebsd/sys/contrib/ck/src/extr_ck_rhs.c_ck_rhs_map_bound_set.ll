; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_map_bound_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_map_bound_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_rhs_map = type { i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.ck_rhs_entry_desc* }
%struct.ck_rhs_entry_desc = type { i64 }

@CK_RHS_WORD_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ck_rhs_map*, i64, i64)* @ck_rhs_map_bound_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ck_rhs_map_bound_set(%struct.ck_rhs_map* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ck_rhs_map*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ck_rhs_entry_desc*, align 8
  store %struct.ck_rhs_map* %0, %struct.ck_rhs_map** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %4, align 8
  %11 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = and i64 %9, %12
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %4, align 8
  %16 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ugt i64 %14, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %4, align 8
  %21 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %20, i32 0, i32 1
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @ck_pr_store_uint(i64* %21, i64 %22)
  br label %24

24:                                               ; preds = %19, %3
  %25 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %4, align 8
  %26 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %54, label %29

29:                                               ; preds = %24
  %30 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %4, align 8
  %31 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %33, i64 %34
  store %struct.ck_rhs_entry_desc* %35, %struct.ck_rhs_entry_desc** %8, align 8
  %36 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %8, align 8
  %37 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %29
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @CK_RHS_WORD_MAX, align 8
  %44 = icmp ugt i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i64, i64* @CK_RHS_WORD_MAX, align 8
  store i64 %46, i64* %6, align 8
  br label %47

47:                                               ; preds = %45, %41
  %48 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %8, align 8
  %49 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %48, i32 0, i32 0
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @CK_RHS_STORE(i64* %49, i64 %50)
  %52 = call i32 (...) @ck_pr_fence_store()
  br label %53

53:                                               ; preds = %47, %29
  br label %54

54:                                               ; preds = %53, %24
  ret void
}

declare dso_local i32 @ck_pr_store_uint(i64*, i64) #1

declare dso_local i32 @CK_RHS_STORE(i64*, i64) #1

declare dso_local i32 @ck_pr_fence_store(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
