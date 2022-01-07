; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_remove_ptes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_remove_ptes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spglist = type { i32 }
%struct.rwlock = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, i32*, %struct.spglist*, %struct.rwlock**)* @pmap_remove_ptes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_remove_ptes(i32 %0, i64 %1, i64 %2, i32* %3, %struct.spglist* %4, %struct.rwlock** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.spglist*, align 8
  %12 = alloca %struct.rwlock**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.spglist* %4, %struct.spglist** %11, align 8
  store %struct.rwlock** %5, %struct.rwlock*** %12, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @MA_OWNED, align 4
  %19 = call i32 @PMAP_LOCK_ASSERT(i32 %17, i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @pmap_global_bit(i32 %20)
  store i32 %21, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %22 = load i64, i64* %9, align 8
  store i64 %22, i64* %15, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i32* @pmap_pde_to_pte(i32* %23, i64 %24)
  store i32* %25, i32** %14, align 8
  br label %26

26:                                               ; preds = %74, %6
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %80

30:                                               ; preds = %26
  %31 = load i32*, i32** %14, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load i64, i64* %15, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = load i64, i64* %15, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @pmap_invalidate_range(i32 %39, i64 %40, i64 %41)
  %43 = load i64, i64* %9, align 8
  store i64 %43, i64* %15, align 8
  br label %44

44:                                               ; preds = %38, %34
  br label %74

45:                                               ; preds = %30
  %46 = load i32*, i32** %14, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %13, align 4
  %49 = and i32 %47, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 1, i32* %16, align 4
  br label %59

52:                                               ; preds = %45
  %53 = load i64, i64* %15, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i64, i64* %8, align 8
  store i64 %57, i64* %15, align 8
  br label %58

58:                                               ; preds = %56, %52
  br label %59

59:                                               ; preds = %58, %51
  %60 = load i32, i32* %7, align 4
  %61 = load i32*, i32** %14, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.spglist*, %struct.spglist** %11, align 8
  %66 = load %struct.rwlock**, %struct.rwlock*** %12, align 8
  %67 = call i64 @pmap_remove_pte(i32 %60, i32* %61, i64 %62, i32 %64, %struct.spglist* %65, %struct.rwlock** %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %59
  %70 = load i64, i64* @PAGE_SIZE, align 8
  %71 = load i64, i64* %8, align 8
  %72 = add nsw i64 %71, %70
  store i64 %72, i64* %8, align 8
  br label %80

73:                                               ; preds = %59
  br label %74

74:                                               ; preds = %73, %44
  %75 = load i32*, i32** %14, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %14, align 8
  %77 = load i64, i64* @PAGE_SIZE, align 8
  %78 = load i64, i64* %8, align 8
  %79 = add nsw i64 %78, %77
  store i64 %79, i64* %8, align 8
  br label %26

80:                                               ; preds = %69, %26
  %81 = load i64, i64* %15, align 8
  %82 = load i64, i64* %9, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load i32, i32* %7, align 4
  %86 = load i64, i64* %15, align 8
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @pmap_invalidate_range(i32 %85, i64 %86, i64 %87)
  br label %89

89:                                               ; preds = %84, %80
  %90 = load i32, i32* %16, align 4
  ret i32 %90
}

declare dso_local i32 @PMAP_LOCK_ASSERT(i32, i32) #1

declare dso_local i32 @pmap_global_bit(i32) #1

declare dso_local i32* @pmap_pde_to_pte(i32*, i64) #1

declare dso_local i32 @pmap_invalidate_range(i32, i64, i64) #1

declare dso_local i64 @pmap_remove_pte(i32, i32*, i64, i32, %struct.spglist*, %struct.rwlock**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
