; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.alloc.c_realloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.alloc.c_realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.overhead = type { i64 }

@MAGIC = common dso_local global i64 0, align 8
@realloc_srchlen = common dso_local global i32 0, align 4
@RSLOP = common dso_local global i64 0, align 8
@RMAGIC = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @realloc(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %union.overhead*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = call i32* @malloc(i64 %14)
  store i32* %15, i32** %3, align 8
  br label %111

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = ptrtoint i32* %17 to i64
  %19 = call i32 @MEMALIGN(i32 8)
  %20 = sext i32 %19 to i64
  %21 = sub nsw i64 %18, %20
  %22 = inttoptr i64 %21 to %union.overhead*
  store %union.overhead* %22, %union.overhead** %7, align 8
  %23 = load %union.overhead*, %union.overhead** %7, align 8
  %24 = bitcast %union.overhead* %23 to i64*
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MAGIC, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %16
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %10, align 4
  %31 = load %union.overhead*, %union.overhead** %7, align 8
  %32 = bitcast %union.overhead* %31 to i32*
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %9, align 4
  br label %45

34:                                               ; preds = %16
  %35 = load %union.overhead*, %union.overhead** %7, align 8
  %36 = call i32 @findbucket(%union.overhead* %35, i32 1)
  store i32 %36, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load %union.overhead*, %union.overhead** %7, align 8
  %40 = load i32, i32* @realloc_srchlen, align 4
  %41 = call i32 @findbucket(%union.overhead* %39, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %43, %38, %34
  br label %45

45:                                               ; preds = %44, %28
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @MEMALIGN(i32 8)
  %48 = sext i32 %47 to i64
  %49 = add i64 %46, %48
  %50 = load i64, i64* @RSLOP, align 8
  %51 = add i64 %49, %50
  %52 = trunc i64 %51 to i32
  %53 = call i32 @MEMALIGN(i32 %52)
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %6, align 8
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %45
  %58 = load i64, i64* %6, align 8
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 3
  %61 = shl i32 1, %60
  %62 = sext i32 %61 to i64
  %63 = icmp ule i64 %58, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %57
  %65 = load i64, i64* %6, align 8
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 2
  %68 = shl i32 1, %67
  %69 = sext i32 %68 to i64
  %70 = icmp ugt i64 %65, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32*, i32** %4, align 8
  store i32* %72, i32** %3, align 8
  br label %111

73:                                               ; preds = %64, %57, %45
  %74 = load i64, i64* %5, align 8
  %75 = call i32* @malloc(i64 %74)
  store i32* %75, i32** %8, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store i32* null, i32** %3, align 8
  br label %111

78:                                               ; preds = %73
  %79 = load i32*, i32** %4, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = icmp ne i32* %79, %80
  br i1 %81, label %82, label %103

82:                                               ; preds = %78
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 3
  %85 = shl i32 1, %84
  %86 = call i32 @MEMALIGN(i32 8)
  %87 = sub nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* @RSLOP, align 8
  %90 = sub i64 %88, %89
  store i64 %90, i64* %6, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = load i32*, i32** %4, align 8
  %93 = load i64, i64* %6, align 8
  %94 = load i64, i64* %5, align 8
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %82
  %97 = load i64, i64* %6, align 8
  br label %100

98:                                               ; preds = %82
  %99 = load i64, i64* %5, align 8
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i64 [ %97, %96 ], [ %99, %98 ]
  %102 = call i32 @memmove(i32* %91, i32* %92, i64 %101)
  br label %103

103:                                              ; preds = %100, %78
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32*, i32** %4, align 8
  %108 = call i32 @free(i32* %107)
  br label %109

109:                                              ; preds = %106, %103
  %110 = load i32*, i32** %8, align 8
  store i32* %110, i32** %3, align 8
  br label %111

111:                                              ; preds = %109, %77, %71, %13
  %112 = load i32*, i32** %3, align 8
  ret i32* %112
}

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @MEMALIGN(i32) #1

declare dso_local i32 @findbucket(%union.overhead*, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i64) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
