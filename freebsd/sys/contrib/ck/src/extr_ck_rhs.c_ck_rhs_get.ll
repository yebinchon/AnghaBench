; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_rhs = type { i32 }
%struct.ck_rhs_map = type { i32*, i32 (%struct.ck_rhs.0*, %struct.ck_rhs_map*, i64*, i64*, i64, i8*, i8**, i32, i32)* }
%struct.ck_rhs.0 = type opaque

@CK_RHS_G_MASK = common dso_local global i64 0, align 8
@CK_RHS_PROBE_NO_RH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ck_rhs_get(%struct.ck_rhs* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.ck_rhs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ck_rhs_map*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.ck_rhs* %0, %struct.ck_rhs** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  br label %15

15:                                               ; preds = %46, %3
  %16 = load %struct.ck_rhs*, %struct.ck_rhs** %4, align 8
  %17 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %16, i32 0, i32 0
  %18 = call %struct.ck_rhs_map* @ck_pr_load_ptr(i32* %17)
  store %struct.ck_rhs_map* %18, %struct.ck_rhs_map** %9, align 8
  %19 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %9, align 8
  %20 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @CK_RHS_G_MASK, align 8
  %24 = and i64 %22, %23
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  store i32* %25, i32** %14, align 8
  %26 = load i32*, i32** %14, align 8
  %27 = call i32 @ck_pr_load_uint(i32* %26)
  store i32 %27, i32* %11, align 4
  %28 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %9, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @ck_rhs_map_bound_get(%struct.ck_rhs_map* %28, i64 %29)
  store i32 %30, i32* %13, align 4
  %31 = call i32 (...) @ck_pr_fence_load()
  store i64 -1, i64* %7, align 8
  %32 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %9, align 8
  %33 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %32, i32 0, i32 1
  %34 = load i32 (%struct.ck_rhs.0*, %struct.ck_rhs_map*, i64*, i64*, i64, i8*, i8**, i32, i32)*, i32 (%struct.ck_rhs.0*, %struct.ck_rhs_map*, i64*, i64*, i64, i8*, i8**, i32, i32)** %33, align 8
  %35 = load %struct.ck_rhs*, %struct.ck_rhs** %4, align 8
  %36 = bitcast %struct.ck_rhs* %35 to %struct.ck_rhs.0*
  %37 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %9, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* @CK_RHS_PROBE_NO_RH, align 4
  %42 = call i32 %34(%struct.ck_rhs.0* %36, %struct.ck_rhs_map* %37, i64* %10, i64* %7, i64 %38, i8* %39, i8** %8, i32 %40, i32 %41)
  %43 = call i32 (...) @ck_pr_fence_load()
  %44 = load i32*, i32** %14, align 8
  %45 = call i32 @ck_pr_load_uint(i32* %44)
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %15
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %15, label %50

50:                                               ; preds = %46
  %51 = load i8*, i8** %8, align 8
  %52 = call i8* @CK_CC_DECONST_PTR(i8* %51)
  ret i8* %52
}

declare dso_local %struct.ck_rhs_map* @ck_pr_load_ptr(i32*) #1

declare dso_local i32 @ck_pr_load_uint(i32*) #1

declare dso_local i32 @ck_rhs_map_bound_get(%struct.ck_rhs_map*, i64) #1

declare dso_local i32 @ck_pr_fence_load(...) #1

declare dso_local i8* @CK_CC_DECONST_PTR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
