; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_copy_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_copy_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_copy_pages(i32* %0, i64 %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [2 x i32], align 4
  %14 = alloca [2 x i64], align 16
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  br label %19

19:                                               ; preds = %79, %5
  %20 = load i32, i32* %10, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %91

22:                                               ; preds = %19
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @PAGE_MASK, align 8
  %25 = and i64 %23, %24
  store i64 %25, i64* %15, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @PAGE_SHIFT, align 8
  %29 = lshr i64 %27, %28
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 %31, i32* %32, align 4
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @PAGE_MASK, align 8
  %35 = and i64 %33, %34
  store i64 %35, i64* %16, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* @PAGE_SHIFT, align 8
  %39 = lshr i64 %37, %38
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i64, i64* @PAGE_SIZE, align 8
  %45 = load i64, i64* %15, align 8
  %46 = sub i64 %44, %45
  %47 = call i32 @min(i32 %43, i64 %46)
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* %17, align 4
  %49 = load i64, i64* @PAGE_SIZE, align 8
  %50 = load i64, i64* %16, align 8
  %51 = sub i64 %49, %50
  %52 = call i32 @min(i32 %48, i64 %51)
  store i32 %52, i32* %17, align 4
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %54 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 0
  %55 = load i32, i32* @FALSE, align 4
  %56 = call i32 @pmap_map_io_transient(i32* %53, i64* %54, i32 2, i32 %55)
  store i32 %56, i32* %18, align 4
  %57 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 0
  %58 = load i64, i64* %57, align 16
  %59 = inttoptr i64 %58 to i8*
  %60 = load i64, i64* %15, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8* %61, i8** %11, align 8
  %62 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 1
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = load i64, i64* %16, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8* %66, i8** %12, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = load i32, i32* %17, align 4
  %70 = call i32 @bcopy(i8* %67, i8* %68, i32 %69)
  %71 = load i32, i32* %18, align 4
  %72 = call i64 @__predict_false(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %22
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %76 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 0
  %77 = load i32, i32* @FALSE, align 4
  %78 = call i32 @pmap_unmap_io_transient(i32* %75, i64* %76, i32 2, i32 %77)
  br label %79

79:                                               ; preds = %74, %22
  %80 = load i32, i32* %17, align 4
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* %7, align 8
  %83 = add i64 %82, %81
  store i64 %83, i64* %7, align 8
  %84 = load i32, i32* %17, align 4
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %9, align 8
  %87 = add i64 %86, %85
  store i64 %87, i64* %9, align 8
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* %10, align 4
  %90 = sub nsw i32 %89, %88
  store i32 %90, i32* %10, align 4
  br label %19

91:                                               ; preds = %19
  ret void
}

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @pmap_map_io_transient(i32*, i64*, i32, i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @pmap_unmap_io_transient(i32*, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
