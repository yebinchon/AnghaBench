; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_large.c_large_ralloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_large.c_large_ralloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LARGE_MAXCLASS = common dso_local global i64 0, align 8
@LARGE_MINCLASS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @large_ralloc(i32* %0, i32* %1, i32* %2, i64 %3, i64 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = call i64 @extent_usize_get(i32* %19)
  store i64 %20, i64* %16, align 8
  %21 = load i64, i64* %12, align 8
  %22 = icmp ugt i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %7
  %24 = load i64, i64* %12, align 8
  %25 = load i64, i64* @LARGE_MAXCLASS, align 8
  %26 = icmp ule i64 %24, %25
  br label %27

27:                                               ; preds = %23, %7
  %28 = phi i1 [ false, %7 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i64, i64* %16, align 8
  %32 = load i64, i64* @LARGE_MINCLASS, align 8
  %33 = icmp uge i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* @LARGE_MINCLASS, align 8
  %37 = icmp uge i64 %35, %36
  br label %38

38:                                               ; preds = %34, %27
  %39 = phi i1 [ false, %27 ], [ %37, %34 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i32*, i32** %9, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @large_ralloc_no_move(i32* %42, i32* %43, i64 %44, i64 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %38
  %50 = load i32*, i32** %11, align 8
  %51 = call i8* @extent_addr_get(i32* %50)
  store i8* %51, i8** %8, align 8
  br label %84

52:                                               ; preds = %38
  %53 = load i32*, i32** %9, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* %13, align 8
  %57 = load i32, i32* %14, align 4
  %58 = call i8* @large_ralloc_move_helper(i32* %53, i32* %54, i64 %55, i64 %56, i32 %57)
  store i8* %58, i8** %17, align 8
  %59 = load i8*, i8** %17, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  store i8* null, i8** %8, align 8
  br label %84

62:                                               ; preds = %52
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* %16, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i64, i64* %12, align 8
  br label %70

68:                                               ; preds = %62
  %69 = load i64, i64* %16, align 8
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i64 [ %67, %66 ], [ %69, %68 ]
  store i64 %71, i64* %18, align 8
  %72 = load i8*, i8** %17, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = call i8* @extent_addr_get(i32* %73)
  %75 = load i64, i64* %18, align 8
  %76 = call i32 @memcpy(i8* %72, i8* %74, i64 %75)
  %77 = load i32*, i32** %9, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = call i8* @extent_addr_get(i32* %78)
  %80 = load i64, i64* %16, align 8
  %81 = load i32*, i32** %15, align 8
  %82 = call i32 @isdalloct(i32* %77, i8* %79, i64 %80, i32* %81, i32* null, i32 1)
  %83 = load i8*, i8** %17, align 8
  store i8* %83, i8** %8, align 8
  br label %84

84:                                               ; preds = %70, %61, %49
  %85 = load i8*, i8** %8, align 8
  ret i8* %85
}

declare dso_local i64 @extent_usize_get(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @large_ralloc_no_move(i32*, i32*, i64, i64, i32) #1

declare dso_local i8* @extent_addr_get(i32*) #1

declare dso_local i8* @large_ralloc_move_helper(i32*, i32*, i64, i64, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @isdalloct(i32*, i8*, i64, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
