; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/compat/extr_memmove.c_memmove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/compat/extr_memmove.c_memmove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @memmove(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %8, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = icmp eq i32* %16, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i64, i64* %7, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %3
  %23 = load i8*, i8** %5, align 8
  store i8* %23, i8** %4, align 8
  br label %100

24:                                               ; preds = %19
  %25 = load i32*, i32** %9, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = icmp ugt i32* %25, %26
  br i1 %27, label %28, label %61

28:                                               ; preds = %24
  %29 = load i32*, i32** %9, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = ptrtoint i32* %29 to i64
  %32 = ptrtoint i32* %30 to i64
  %33 = sub i64 %31, %32
  %34 = sdiv exact i64 %33, 4
  %35 = load i64, i64* %7, align 8
  %36 = trunc i64 %35 to i32
  %37 = sext i32 %36 to i64
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %39, label %61

39:                                               ; preds = %28
  %40 = load i64, i64* %7, align 8
  %41 = sub i64 %40, 1
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %56, %39
  %44 = load i32, i32* %10, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %51, i32* %55, align 4
  br label %56

56:                                               ; preds = %46
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %10, align 4
  br label %43

59:                                               ; preds = %43
  %60 = load i8*, i8** %5, align 8
  store i8* %60, i8** %4, align 8
  br label %100

61:                                               ; preds = %28, %24
  %62 = load i32*, i32** %8, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = icmp ugt i32* %62, %63
  br i1 %64, label %65, label %94

65:                                               ; preds = %61
  %66 = load i32*, i32** %8, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = ptrtoint i32* %66 to i64
  %69 = ptrtoint i32* %67 to i64
  %70 = sub i64 %68, %69
  %71 = sdiv exact i64 %70, 4
  %72 = load i64, i64* %7, align 8
  %73 = trunc i64 %72 to i32
  %74 = sext i32 %73 to i64
  %75 = icmp slt i64 %71, %74
  br i1 %75, label %76, label %94

76:                                               ; preds = %65
  store i64 0, i64* %11, align 8
  br label %77

77:                                               ; preds = %89, %76
  %78 = load i64, i64* %11, align 8
  %79 = load i64, i64* %7, align 8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %77
  %82 = load i32*, i32** %8, align 8
  %83 = load i64, i64* %11, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %9, align 8
  %87 = load i64, i64* %11, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32 %85, i32* %88, align 4
  br label %89

89:                                               ; preds = %81
  %90 = load i64, i64* %11, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %11, align 8
  br label %77

92:                                               ; preds = %77
  %93 = load i8*, i8** %5, align 8
  store i8* %93, i8** %4, align 8
  br label %100

94:                                               ; preds = %65, %61
  %95 = load i8*, i8** %5, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = load i64, i64* %7, align 8
  %98 = call i32 @memcpy(i8* %95, i8* %96, i64 %97)
  %99 = load i8*, i8** %5, align 8
  store i8* %99, i8** %4, align 8
  br label %100

100:                                              ; preds = %94, %92, %59, %22
  %101 = load i8*, i8** %4, align 8
  ret i8* %101
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
