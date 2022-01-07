; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_rc4.c_rc4_skip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_rc4.c_rc4_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rc4_skip(i32* %0, i64 %1, i64 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [256 x i32], align 16
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %25, %5
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 256
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [256 x i32], [256 x i32]* %14, i64 0, i64 %23
  store i32 %21, i32* %24, align 4
  br label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %11, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %11, align 4
  br label %17

28:                                               ; preds = %17
  store i32 0, i32* %12, align 4
  store i64 0, i64* %16, align 8
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %55, %28
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 256
  br i1 %31, label %32, label %58

32:                                               ; preds = %29
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [256 x i32], [256 x i32]* %14, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %33, %37
  %39 = load i32*, i32** %6, align 8
  %40 = load i64, i64* %16, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %38, %42
  %44 = and i32 %43, 255
  store i32 %44, i32* %12, align 4
  %45 = load i64, i64* %16, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %16, align 8
  %47 = load i64, i64* %16, align 8
  %48 = load i64, i64* %7, align 8
  %49 = icmp uge i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %32
  store i64 0, i64* %16, align 8
  br label %51

51:                                               ; preds = %50, %32
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @S_SWAP(i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  br label %29

58:                                               ; preds = %29
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %59

59:                                               ; preds = %78, %58
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %8, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %59
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  %67 = and i32 %66, 255
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [256 x i32], [256 x i32]* %14, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %68, %72
  %74 = and i32 %73, 255
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @S_SWAP(i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %64
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %13, align 4
  br label %59

81:                                               ; preds = %59
  %82 = load i32*, i32** %9, align 8
  store i32* %82, i32** %15, align 8
  store i32 0, i32* %13, align 4
  br label %83

83:                                               ; preds = %119, %81
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %10, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %122

88:                                               ; preds = %83
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 1
  %91 = and i32 %90, 255
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [256 x i32], [256 x i32]* %14, i64 0, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %92, %96
  %98 = and i32 %97, 255
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @S_SWAP(i32 %99, i32 %100)
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [256 x i32], [256 x i32]* %14, i64 0, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [256 x i32], [256 x i32]* %14, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %105, %109
  %111 = and i32 %110, 255
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [256 x i32], [256 x i32]* %14, i64 0, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %15, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %116, i32** %15, align 8
  %117 = load i32, i32* %115, align 4
  %118 = xor i32 %117, %114
  store i32 %118, i32* %115, align 4
  br label %119

119:                                              ; preds = %88
  %120 = load i32, i32* %13, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %13, align 4
  br label %83

122:                                              ; preds = %83
  ret i32 0
}

declare dso_local i32 @S_SWAP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
