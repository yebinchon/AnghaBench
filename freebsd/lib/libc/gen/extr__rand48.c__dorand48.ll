; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr__rand48.c__dorand48.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr__rand48.c__dorand48.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_rand48_mult = common dso_local global i16* null, align 8
@_rand48_add = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_dorand48(i16* %0) #0 {
  %2 = alloca i16*, align 8
  %3 = alloca i64, align 8
  %4 = alloca [2 x i16], align 2
  store i16* %0, i16** %2, align 8
  %5 = load i16*, i16** @_rand48_mult, align 8
  %6 = getelementptr inbounds i16, i16* %5, i64 0
  %7 = load i16, i16* %6, align 2
  %8 = zext i16 %7 to i64
  %9 = load i16*, i16** %2, align 8
  %10 = getelementptr inbounds i16, i16* %9, i64 0
  %11 = load i16, i16* %10, align 2
  %12 = zext i16 %11 to i64
  %13 = mul i64 %8, %12
  %14 = load i64, i64* @_rand48_add, align 8
  %15 = add i64 %13, %14
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = trunc i64 %16 to i16
  %18 = getelementptr inbounds [2 x i16], [2 x i16]* %4, i64 0, i64 0
  store i16 %17, i16* %18, align 2
  %19 = load i64, i64* %3, align 8
  %20 = lshr i64 %19, 16
  store i64 %20, i64* %3, align 8
  %21 = load i16*, i16** @_rand48_mult, align 8
  %22 = getelementptr inbounds i16, i16* %21, i64 0
  %23 = load i16, i16* %22, align 2
  %24 = zext i16 %23 to i64
  %25 = load i16*, i16** %2, align 8
  %26 = getelementptr inbounds i16, i16* %25, i64 1
  %27 = load i16, i16* %26, align 2
  %28 = zext i16 %27 to i64
  %29 = mul i64 %24, %28
  %30 = load i16*, i16** @_rand48_mult, align 8
  %31 = getelementptr inbounds i16, i16* %30, i64 1
  %32 = load i16, i16* %31, align 2
  %33 = zext i16 %32 to i64
  %34 = load i16*, i16** %2, align 8
  %35 = getelementptr inbounds i16, i16* %34, i64 0
  %36 = load i16, i16* %35, align 2
  %37 = zext i16 %36 to i64
  %38 = mul i64 %33, %37
  %39 = add i64 %29, %38
  %40 = load i64, i64* %3, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* %3, align 8
  %42 = load i64, i64* %3, align 8
  %43 = trunc i64 %42 to i16
  %44 = getelementptr inbounds [2 x i16], [2 x i16]* %4, i64 0, i64 1
  store i16 %43, i16* %44, align 2
  %45 = load i64, i64* %3, align 8
  %46 = lshr i64 %45, 16
  store i64 %46, i64* %3, align 8
  %47 = load i16*, i16** @_rand48_mult, align 8
  %48 = getelementptr inbounds i16, i16* %47, i64 0
  %49 = load i16, i16* %48, align 2
  %50 = zext i16 %49 to i32
  %51 = load i16*, i16** %2, align 8
  %52 = getelementptr inbounds i16, i16* %51, i64 2
  %53 = load i16, i16* %52, align 2
  %54 = zext i16 %53 to i32
  %55 = mul nsw i32 %50, %54
  %56 = load i16*, i16** @_rand48_mult, align 8
  %57 = getelementptr inbounds i16, i16* %56, i64 1
  %58 = load i16, i16* %57, align 2
  %59 = zext i16 %58 to i32
  %60 = load i16*, i16** %2, align 8
  %61 = getelementptr inbounds i16, i16* %60, i64 1
  %62 = load i16, i16* %61, align 2
  %63 = zext i16 %62 to i32
  %64 = mul nsw i32 %59, %63
  %65 = add nsw i32 %55, %64
  %66 = load i16*, i16** @_rand48_mult, align 8
  %67 = getelementptr inbounds i16, i16* %66, i64 2
  %68 = load i16, i16* %67, align 2
  %69 = zext i16 %68 to i32
  %70 = load i16*, i16** %2, align 8
  %71 = getelementptr inbounds i16, i16* %70, i64 0
  %72 = load i16, i16* %71, align 2
  %73 = zext i16 %72 to i32
  %74 = mul nsw i32 %69, %73
  %75 = add nsw i32 %65, %74
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %3, align 8
  %78 = add i64 %77, %76
  store i64 %78, i64* %3, align 8
  %79 = getelementptr inbounds [2 x i16], [2 x i16]* %4, i64 0, i64 0
  %80 = load i16, i16* %79, align 2
  %81 = load i16*, i16** %2, align 8
  %82 = getelementptr inbounds i16, i16* %81, i64 0
  store i16 %80, i16* %82, align 2
  %83 = getelementptr inbounds [2 x i16], [2 x i16]* %4, i64 0, i64 1
  %84 = load i16, i16* %83, align 2
  %85 = load i16*, i16** %2, align 8
  %86 = getelementptr inbounds i16, i16* %85, i64 1
  store i16 %84, i16* %86, align 2
  %87 = load i64, i64* %3, align 8
  %88 = trunc i64 %87 to i16
  %89 = load i16*, i16** %2, align 8
  %90 = getelementptr inbounds i16, i16* %89, i64 2
  store i16 %88, i16* %90, align 2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
