; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_large_map_wb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_large_map_wb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DMAP_MIN_ADDRESS = common dso_local global i64 0, align 8
@dmaplimit = common dso_local global i64 0, align 8
@LARGEMAP_MIN_ADDRESS = common dso_local global i64 0, align 8
@lm_ents = common dso_local global i32 0, align 4
@NBPML4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"pmap_large_map_wb: not largemap %#lx %#lx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_large_map_wb(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = ptrtoint i8* %7 to i64
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* %4, align 8
  %11 = add nsw i64 %9, %10
  store i64 %11, i64* %5, align 8
  %12 = call i32 (...) @pmap_large_map_wb_fence()
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @DMAP_MIN_ADDRESS, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @DMAP_MIN_ADDRESS, align 8
  %19 = load i64, i64* @dmaplimit, align 8
  %20 = add nsw i64 %18, %19
  %21 = icmp sle i64 %17, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @pmap_large_map_flush_range(i64 %23, i64 %24)
  br label %49

26:                                               ; preds = %16, %2
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @LARGEMAP_MIN_ADDRESS, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @LARGEMAP_MIN_ADDRESS, align 8
  %33 = load i32, i32* @lm_ents, align 4
  %34 = load i32, i32* @NBPML4, align 4
  %35 = mul nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %32, %36
  %38 = icmp sle i64 %31, %37
  br label %39

39:                                               ; preds = %30, %26
  %40 = phi i1 [ false, %26 ], [ %38, %30 ]
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %4, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = call i32 @KASSERT(i32 %41, i8* %44)
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @pmap_large_map_wb_large(i64 %46, i64 %47)
  br label %49

49:                                               ; preds = %39, %22
  %50 = call i32 (...) @pmap_large_map_wb_fence()
  ret void
}

declare dso_local i32 @pmap_large_map_wb_fence(...) #1

declare dso_local i32 @pmap_large_map_flush_range(i64, i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @pmap_large_map_wb_large(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
