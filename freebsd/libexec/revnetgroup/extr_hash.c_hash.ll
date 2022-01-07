; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/revnetgroup/extr_hash.c_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/revnetgroup/extr_hash.c_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HASHC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hash(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %7, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ugt i64 %10, 0
  br i1 %11, label %12, label %90

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = add i64 %13, 8
  %15 = sub i64 %14, 1
  %16 = lshr i64 %15, 3
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %4, align 8
  %18 = and i64 %17, 7
  switch i64 %18, label %89 [
    i64 0, label %19
    i64 7, label %28
    i64 6, label %36
    i64 5, label %44
    i64 4, label %52
    i64 3, label %60
    i64 2, label %68
    i64 1, label %76
  ]

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %84, %19
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %5, align 8
  %23 = load i32, i32* %21, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* %7, align 8
  %26 = mul nsw i64 65599, %25
  %27 = add nsw i64 %24, %26
  store i64 %27, i64* %7, align 8
  br label %28

28:                                               ; preds = %12, %20
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %5, align 8
  %31 = load i32, i32* %29, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %7, align 8
  %34 = mul nsw i64 65599, %33
  %35 = add nsw i64 %32, %34
  store i64 %35, i64* %7, align 8
  br label %36

36:                                               ; preds = %12, %28
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %5, align 8
  %39 = load i32, i32* %37, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %7, align 8
  %42 = mul nsw i64 65599, %41
  %43 = add nsw i64 %40, %42
  store i64 %43, i64* %7, align 8
  br label %44

44:                                               ; preds = %12, %36
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %5, align 8
  %47 = load i32, i32* %45, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %7, align 8
  %50 = mul nsw i64 65599, %49
  %51 = add nsw i64 %48, %50
  store i64 %51, i64* %7, align 8
  br label %52

52:                                               ; preds = %12, %44
  %53 = load i32*, i32** %5, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %5, align 8
  %55 = load i32, i32* %53, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %7, align 8
  %58 = mul nsw i64 65599, %57
  %59 = add nsw i64 %56, %58
  store i64 %59, i64* %7, align 8
  br label %60

60:                                               ; preds = %12, %52
  %61 = load i32*, i32** %5, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %5, align 8
  %63 = load i32, i32* %61, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %7, align 8
  %66 = mul nsw i64 65599, %65
  %67 = add nsw i64 %64, %66
  store i64 %67, i64* %7, align 8
  br label %68

68:                                               ; preds = %12, %60
  %69 = load i32*, i32** %5, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %5, align 8
  %71 = load i32, i32* %69, align 4
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* %7, align 8
  %74 = mul nsw i64 65599, %73
  %75 = add nsw i64 %72, %74
  store i64 %75, i64* %7, align 8
  br label %76

76:                                               ; preds = %12, %68
  %77 = load i32*, i32** %5, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %5, align 8
  %79 = load i32, i32* %77, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* %7, align 8
  %82 = mul nsw i64 65599, %81
  %83 = add nsw i64 %80, %82
  store i64 %83, i64* %7, align 8
  br label %84

84:                                               ; preds = %76
  %85 = load i64, i64* %6, align 8
  %86 = add i64 %85, -1
  store i64 %86, i64* %6, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %20, label %88

88:                                               ; preds = %84
  br label %89

89:                                               ; preds = %88, %12
  br label %90

90:                                               ; preds = %89, %2
  %91 = load i64, i64* %7, align 8
  ret i64 %91
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
