; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_hs.c_ck_hs_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_hs.c_ck_hs_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_hs = type { i32 }
%struct.ck_hs_map = type { i32* }

@CK_HS_G_MASK = common dso_local global i64 0, align 8
@CK_HS_PROBE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ck_hs_get(%struct.ck_hs* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.ck_hs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ck_hs_map*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.ck_hs* %0, %struct.ck_hs** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  br label %15

15:                                               ; preds = %42, %3
  %16 = load %struct.ck_hs*, %struct.ck_hs** %4, align 8
  %17 = getelementptr inbounds %struct.ck_hs, %struct.ck_hs* %16, i32 0, i32 0
  %18 = call %struct.ck_hs_map* @ck_pr_load_ptr(i32* %17)
  store %struct.ck_hs_map* %18, %struct.ck_hs_map** %9, align 8
  %19 = load %struct.ck_hs_map*, %struct.ck_hs_map** %9, align 8
  %20 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @CK_HS_G_MASK, align 8
  %24 = and i64 %22, %23
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  store i32* %25, i32** %14, align 8
  %26 = load i32*, i32** %14, align 8
  %27 = call i32 @ck_pr_load_uint(i32* %26)
  store i32 %27, i32* %11, align 4
  %28 = load %struct.ck_hs_map*, %struct.ck_hs_map** %9, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @ck_hs_map_bound_get(%struct.ck_hs_map* %28, i64 %29)
  store i32 %30, i32* %13, align 4
  %31 = call i32 (...) @ck_pr_fence_load()
  %32 = load %struct.ck_hs*, %struct.ck_hs** %4, align 8
  %33 = load %struct.ck_hs_map*, %struct.ck_hs_map** %9, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* @CK_HS_PROBE, align 4
  %38 = call i32 @ck_hs_map_probe(%struct.ck_hs* %32, %struct.ck_hs_map* %33, i64* %10, i8*** %7, i64 %34, i8* %35, i8** %8, i32 %36, i32 %37)
  %39 = call i32 (...) @ck_pr_fence_load()
  %40 = load i32*, i32** %14, align 8
  %41 = call i32 @ck_pr_load_uint(i32* %40)
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %15
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %15, label %46

46:                                               ; preds = %42
  %47 = load i8*, i8** %8, align 8
  %48 = call i8* @CK_CC_DECONST_PTR(i8* %47)
  ret i8* %48
}

declare dso_local %struct.ck_hs_map* @ck_pr_load_ptr(i32*) #1

declare dso_local i32 @ck_pr_load_uint(i32*) #1

declare dso_local i32 @ck_hs_map_bound_get(%struct.ck_hs_map*, i64) #1

declare dso_local i32 @ck_pr_fence_load(...) #1

declare dso_local i32 @ck_hs_map_probe(%struct.ck_hs*, %struct.ck_hs_map*, i64*, i8***, i64, i8*, i8**, i32, i32) #1

declare dso_local i8* @CK_CC_DECONST_PTR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
