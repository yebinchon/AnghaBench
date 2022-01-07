; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_fe25519.c_crypto_sign_ed25519_ref_fe25519_invert.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_fe25519.c_crypto_sign_ed25519_ref_fe25519_invert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fe25519_invert(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @fe25519_square(i32* %5, i32* %16)
  %18 = call i32 @fe25519_square(i32* %14, i32* %5)
  %19 = call i32 @fe25519_square(i32* %13, i32* %14)
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @fe25519_mul(i32* %6, i32* %13, i32* %20)
  %22 = call i32 @fe25519_mul(i32* %7, i32* %6, i32* %5)
  %23 = call i32 @fe25519_square(i32* %13, i32* %7)
  %24 = call i32 @fe25519_mul(i32* %8, i32* %13, i32* %6)
  %25 = call i32 @fe25519_square(i32* %13, i32* %8)
  %26 = call i32 @fe25519_square(i32* %14, i32* %13)
  %27 = call i32 @fe25519_square(i32* %13, i32* %14)
  %28 = call i32 @fe25519_square(i32* %14, i32* %13)
  %29 = call i32 @fe25519_square(i32* %13, i32* %14)
  %30 = call i32 @fe25519_mul(i32* %9, i32* %13, i32* %8)
  %31 = call i32 @fe25519_square(i32* %13, i32* %9)
  %32 = call i32 @fe25519_square(i32* %14, i32* %13)
  store i32 2, i32* %15, align 4
  br label %33

33:                                               ; preds = %39, %2
  %34 = load i32, i32* %15, align 4
  %35 = icmp slt i32 %34, 10
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = call i32 @fe25519_square(i32* %13, i32* %14)
  %38 = call i32 @fe25519_square(i32* %14, i32* %13)
  br label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %15, align 4
  %41 = add nsw i32 %40, 2
  store i32 %41, i32* %15, align 4
  br label %33

42:                                               ; preds = %33
  %43 = call i32 @fe25519_mul(i32* %10, i32* %14, i32* %9)
  %44 = call i32 @fe25519_square(i32* %13, i32* %10)
  %45 = call i32 @fe25519_square(i32* %14, i32* %13)
  store i32 2, i32* %15, align 4
  br label %46

46:                                               ; preds = %52, %42
  %47 = load i32, i32* %15, align 4
  %48 = icmp slt i32 %47, 20
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = call i32 @fe25519_square(i32* %13, i32* %14)
  %51 = call i32 @fe25519_square(i32* %14, i32* %13)
  br label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %15, align 4
  %54 = add nsw i32 %53, 2
  store i32 %54, i32* %15, align 4
  br label %46

55:                                               ; preds = %46
  %56 = call i32 @fe25519_mul(i32* %13, i32* %14, i32* %10)
  %57 = call i32 @fe25519_square(i32* %14, i32* %13)
  %58 = call i32 @fe25519_square(i32* %13, i32* %14)
  store i32 2, i32* %15, align 4
  br label %59

59:                                               ; preds = %65, %55
  %60 = load i32, i32* %15, align 4
  %61 = icmp slt i32 %60, 10
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = call i32 @fe25519_square(i32* %14, i32* %13)
  %64 = call i32 @fe25519_square(i32* %13, i32* %14)
  br label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %66, 2
  store i32 %67, i32* %15, align 4
  br label %59

68:                                               ; preds = %59
  %69 = call i32 @fe25519_mul(i32* %11, i32* %13, i32* %9)
  %70 = call i32 @fe25519_square(i32* %13, i32* %11)
  %71 = call i32 @fe25519_square(i32* %14, i32* %13)
  store i32 2, i32* %15, align 4
  br label %72

72:                                               ; preds = %78, %68
  %73 = load i32, i32* %15, align 4
  %74 = icmp slt i32 %73, 50
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = call i32 @fe25519_square(i32* %13, i32* %14)
  %77 = call i32 @fe25519_square(i32* %14, i32* %13)
  br label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %15, align 4
  %80 = add nsw i32 %79, 2
  store i32 %80, i32* %15, align 4
  br label %72

81:                                               ; preds = %72
  %82 = call i32 @fe25519_mul(i32* %12, i32* %14, i32* %11)
  %83 = call i32 @fe25519_square(i32* %14, i32* %12)
  %84 = call i32 @fe25519_square(i32* %13, i32* %14)
  store i32 2, i32* %15, align 4
  br label %85

85:                                               ; preds = %91, %81
  %86 = load i32, i32* %15, align 4
  %87 = icmp slt i32 %86, 100
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = call i32 @fe25519_square(i32* %14, i32* %13)
  %90 = call i32 @fe25519_square(i32* %13, i32* %14)
  br label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %15, align 4
  %93 = add nsw i32 %92, 2
  store i32 %93, i32* %15, align 4
  br label %85

94:                                               ; preds = %85
  %95 = call i32 @fe25519_mul(i32* %14, i32* %13, i32* %12)
  %96 = call i32 @fe25519_square(i32* %13, i32* %14)
  %97 = call i32 @fe25519_square(i32* %14, i32* %13)
  store i32 2, i32* %15, align 4
  br label %98

98:                                               ; preds = %104, %94
  %99 = load i32, i32* %15, align 4
  %100 = icmp slt i32 %99, 50
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = call i32 @fe25519_square(i32* %13, i32* %14)
  %103 = call i32 @fe25519_square(i32* %14, i32* %13)
  br label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %15, align 4
  %106 = add nsw i32 %105, 2
  store i32 %106, i32* %15, align 4
  br label %98

107:                                              ; preds = %98
  %108 = call i32 @fe25519_mul(i32* %13, i32* %14, i32* %11)
  %109 = call i32 @fe25519_square(i32* %14, i32* %13)
  %110 = call i32 @fe25519_square(i32* %13, i32* %14)
  %111 = call i32 @fe25519_square(i32* %14, i32* %13)
  %112 = call i32 @fe25519_square(i32* %13, i32* %14)
  %113 = call i32 @fe25519_square(i32* %14, i32* %13)
  %114 = load i32*, i32** %3, align 8
  %115 = call i32 @fe25519_mul(i32* %114, i32* %14, i32* %7)
  ret void
}

declare dso_local i32 @fe25519_square(i32*, i32*) #1

declare dso_local i32 @fe25519_mul(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
