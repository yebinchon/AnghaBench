; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_gcd.c_euclid.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_gcd.c_euclid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @euclid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @euclid(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @bn_check_top(i32* %8)
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @bn_check_top(i32* %10)
  br label %12

12:                                               ; preds = %101, %2
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @BN_is_zero(i32* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %102

17:                                               ; preds = %12
  %18 = load i32*, i32** %4, align 8
  %19 = call i64 @BN_is_odd(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %65

21:                                               ; preds = %17
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @BN_is_odd(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %21
  %26 = load i32*, i32** %4, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @BN_sub(i32* %26, i32* %27, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %117

32:                                               ; preds = %25
  %33 = load i32*, i32** %4, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @BN_rshift1(i32* %33, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %117

38:                                               ; preds = %32
  %39 = load i32*, i32** %4, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i64 @BN_cmp(i32* %39, i32* %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32*, i32** %4, align 8
  store i32* %44, i32** %6, align 8
  %45 = load i32*, i32** %5, align 8
  store i32* %45, i32** %4, align 8
  %46 = load i32*, i32** %6, align 8
  store i32* %46, i32** %5, align 8
  br label %47

47:                                               ; preds = %43, %38
  br label %64

48:                                               ; preds = %21
  %49 = load i32*, i32** %5, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @BN_rshift1(i32* %49, i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  br label %117

54:                                               ; preds = %48
  %55 = load i32*, i32** %4, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = call i64 @BN_cmp(i32* %55, i32* %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32*, i32** %4, align 8
  store i32* %60, i32** %6, align 8
  %61 = load i32*, i32** %5, align 8
  store i32* %61, i32** %4, align 8
  %62 = load i32*, i32** %6, align 8
  store i32* %62, i32** %5, align 8
  br label %63

63:                                               ; preds = %59, %54
  br label %64

64:                                               ; preds = %63, %47
  br label %101

65:                                               ; preds = %17
  %66 = load i32*, i32** %5, align 8
  %67 = call i64 @BN_is_odd(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %65
  %70 = load i32*, i32** %4, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @BN_rshift1(i32* %70, i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  br label %117

75:                                               ; preds = %69
  %76 = load i32*, i32** %4, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = call i64 @BN_cmp(i32* %76, i32* %77)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i32*, i32** %4, align 8
  store i32* %81, i32** %6, align 8
  %82 = load i32*, i32** %5, align 8
  store i32* %82, i32** %4, align 8
  %83 = load i32*, i32** %6, align 8
  store i32* %83, i32** %5, align 8
  br label %84

84:                                               ; preds = %80, %75
  br label %100

85:                                               ; preds = %65
  %86 = load i32*, i32** %4, align 8
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 @BN_rshift1(i32* %86, i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  br label %117

91:                                               ; preds = %85
  %92 = load i32*, i32** %5, align 8
  %93 = load i32*, i32** %5, align 8
  %94 = call i32 @BN_rshift1(i32* %92, i32* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  br label %117

97:                                               ; preds = %91
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %97, %84
  br label %101

101:                                              ; preds = %100, %64
  br label %12

102:                                              ; preds = %12
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  %106 = load i32*, i32** %4, align 8
  %107 = load i32*, i32** %4, align 8
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @BN_lshift(i32* %106, i32* %107, i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %105
  br label %117

112:                                              ; preds = %105
  br label %113

113:                                              ; preds = %112, %102
  %114 = load i32*, i32** %4, align 8
  %115 = call i32 @bn_check_top(i32* %114)
  %116 = load i32*, i32** %4, align 8
  store i32* %116, i32** %3, align 8
  br label %118

117:                                              ; preds = %111, %96, %90, %74, %53, %37, %31
  store i32* null, i32** %3, align 8
  br label %118

118:                                              ; preds = %117, %113
  %119 = load i32*, i32** %3, align 8
  ret i32* %119
}

declare dso_local i32 @bn_check_top(i32*) #1

declare dso_local i32 @BN_is_zero(i32*) #1

declare dso_local i64 @BN_is_odd(i32*) #1

declare dso_local i32 @BN_sub(i32*, i32*, i32*) #1

declare dso_local i32 @BN_rshift1(i32*, i32*) #1

declare dso_local i64 @BN_cmp(i32*, i32*) #1

declare dso_local i32 @BN_lshift(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
