; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/hash/extr_hash_func.c_hash4.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/hash/extr_hash_func.c_hash4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HASH4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hash4(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %7, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ugt i64 %10, 0
  br i1 %11, label %12, label %106

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = add i64 %13, 8
  %15 = sub i64 %14, 1
  %16 = lshr i64 %15, 3
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %4, align 8
  %18 = and i64 %17, 7
  switch i64 %18, label %105 [
    i64 0, label %19
    i64 7, label %30
    i64 6, label %40
    i64 5, label %50
    i64 4, label %60
    i64 3, label %70
    i64 2, label %80
    i64 1, label %90
  ]

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %100, %19
  %21 = load i64, i64* %5, align 8
  %22 = shl i64 %21, 5
  %23 = load i64, i64* %5, align 8
  %24 = add i64 %22, %23
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %7, align 8
  %27 = load i32, i32* %25, align 4
  %28 = sext i32 %27 to i64
  %29 = add i64 %24, %28
  store i64 %29, i64* %5, align 8
  br label %30

30:                                               ; preds = %12, %20
  %31 = load i64, i64* %5, align 8
  %32 = shl i64 %31, 5
  %33 = load i64, i64* %5, align 8
  %34 = add i64 %32, %33
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %7, align 8
  %37 = load i32, i32* %35, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 %34, %38
  store i64 %39, i64* %5, align 8
  br label %40

40:                                               ; preds = %12, %30
  %41 = load i64, i64* %5, align 8
  %42 = shl i64 %41, 5
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %42, %43
  %45 = load i32*, i32** %7, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %7, align 8
  %47 = load i32, i32* %45, align 4
  %48 = sext i32 %47 to i64
  %49 = add i64 %44, %48
  store i64 %49, i64* %5, align 8
  br label %50

50:                                               ; preds = %12, %40
  %51 = load i64, i64* %5, align 8
  %52 = shl i64 %51, 5
  %53 = load i64, i64* %5, align 8
  %54 = add i64 %52, %53
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %7, align 8
  %57 = load i32, i32* %55, align 4
  %58 = sext i32 %57 to i64
  %59 = add i64 %54, %58
  store i64 %59, i64* %5, align 8
  br label %60

60:                                               ; preds = %12, %50
  %61 = load i64, i64* %5, align 8
  %62 = shl i64 %61, 5
  %63 = load i64, i64* %5, align 8
  %64 = add i64 %62, %63
  %65 = load i32*, i32** %7, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %7, align 8
  %67 = load i32, i32* %65, align 4
  %68 = sext i32 %67 to i64
  %69 = add i64 %64, %68
  store i64 %69, i64* %5, align 8
  br label %70

70:                                               ; preds = %12, %60
  %71 = load i64, i64* %5, align 8
  %72 = shl i64 %71, 5
  %73 = load i64, i64* %5, align 8
  %74 = add i64 %72, %73
  %75 = load i32*, i32** %7, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %7, align 8
  %77 = load i32, i32* %75, align 4
  %78 = sext i32 %77 to i64
  %79 = add i64 %74, %78
  store i64 %79, i64* %5, align 8
  br label %80

80:                                               ; preds = %12, %70
  %81 = load i64, i64* %5, align 8
  %82 = shl i64 %81, 5
  %83 = load i64, i64* %5, align 8
  %84 = add i64 %82, %83
  %85 = load i32*, i32** %7, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %7, align 8
  %87 = load i32, i32* %85, align 4
  %88 = sext i32 %87 to i64
  %89 = add i64 %84, %88
  store i64 %89, i64* %5, align 8
  br label %90

90:                                               ; preds = %12, %80
  %91 = load i64, i64* %5, align 8
  %92 = shl i64 %91, 5
  %93 = load i64, i64* %5, align 8
  %94 = add i64 %92, %93
  %95 = load i32*, i32** %7, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %96, i32** %7, align 8
  %97 = load i32, i32* %95, align 4
  %98 = sext i32 %97 to i64
  %99 = add i64 %94, %98
  store i64 %99, i64* %5, align 8
  br label %100

100:                                              ; preds = %90
  %101 = load i64, i64* %6, align 8
  %102 = add i64 %101, -1
  store i64 %102, i64* %6, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %20, label %104

104:                                              ; preds = %100
  br label %105

105:                                              ; preds = %104, %12
  br label %106

106:                                              ; preds = %105, %2
  %107 = load i64, i64* %5, align 8
  ret i64 %107
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
