; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_encoding.c_decode_utf16.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_encoding.c_decode_utf16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decode_utf16(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %5, align 8
  store i32 -1, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %16, 8
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = xor i32 %17, %20
  store i32 %21, i32* %7, align 4
  br label %31

22:                                               ; preds = %2
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 8
  %30 = xor i32 %25, %29
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %22, %13
  %32 = load i32, i32* %7, align 4
  %33 = icmp ult i32 %32, 55296
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = icmp ugt i32 %35, 57343
  br i1 %36, label %37, label %39

37:                                               ; preds = %34, %31
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %6, align 4
  br label %73

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  %41 = icmp ugt i32 %40, 56319
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %72

43:                                               ; preds = %39
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load i32*, i32** %5, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 8
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  %53 = load i32, i32* %52, align 4
  %54 = xor i32 %50, %53
  store i32 %54, i32* %8, align 4
  br label %64

55:                                               ; preds = %43
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %61, 8
  %63 = xor i32 %58, %62
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %55, %46
  %65 = load i32, i32* %7, align 4
  %66 = xor i32 %65, 55296
  %67 = shl i32 %66, 10
  %68 = load i32, i32* %8, align 4
  %69 = xor i32 %68, 56320
  %70 = xor i32 %67, %69
  %71 = add i32 %70, 65536
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %64, %42
  br label %73

73:                                               ; preds = %72, %37
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
