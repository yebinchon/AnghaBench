; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_fe25519.c_crypto_sign_ed25519_ref_fe25519_pow2523.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_fe25519.c_crypto_sign_ed25519_ref_fe25519_pow2523.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fe25519_pow2523(i32* %0, i32* %1) #0 {
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
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @fe25519_square(i32* %5, i32* %15)
  %17 = call i32 @fe25519_square(i32* %13, i32* %5)
  %18 = call i32 @fe25519_square(i32* %13, i32* %13)
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @fe25519_mul(i32* %6, i32* %13, i32* %19)
  %21 = call i32 @fe25519_mul(i32* %7, i32* %6, i32* %5)
  %22 = call i32 @fe25519_square(i32* %13, i32* %7)
  %23 = call i32 @fe25519_mul(i32* %8, i32* %13, i32* %6)
  %24 = call i32 @fe25519_square(i32* %13, i32* %8)
  store i32 1, i32* %14, align 4
  br label %25

25:                                               ; preds = %30, %2
  %26 = load i32, i32* %14, align 4
  %27 = icmp slt i32 %26, 5
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = call i32 @fe25519_square(i32* %13, i32* %13)
  br label %30

30:                                               ; preds = %28
  %31 = load i32, i32* %14, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %14, align 4
  br label %25

33:                                               ; preds = %25
  %34 = call i32 @fe25519_mul(i32* %9, i32* %13, i32* %8)
  %35 = call i32 @fe25519_square(i32* %13, i32* %9)
  store i32 1, i32* %14, align 4
  br label %36

36:                                               ; preds = %41, %33
  %37 = load i32, i32* %14, align 4
  %38 = icmp slt i32 %37, 10
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = call i32 @fe25519_square(i32* %13, i32* %13)
  br label %41

41:                                               ; preds = %39
  %42 = load i32, i32* %14, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %14, align 4
  br label %36

44:                                               ; preds = %36
  %45 = call i32 @fe25519_mul(i32* %10, i32* %13, i32* %9)
  %46 = call i32 @fe25519_square(i32* %13, i32* %10)
  store i32 1, i32* %14, align 4
  br label %47

47:                                               ; preds = %52, %44
  %48 = load i32, i32* %14, align 4
  %49 = icmp slt i32 %48, 20
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = call i32 @fe25519_square(i32* %13, i32* %13)
  br label %52

52:                                               ; preds = %50
  %53 = load i32, i32* %14, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %14, align 4
  br label %47

55:                                               ; preds = %47
  %56 = call i32 @fe25519_mul(i32* %13, i32* %13, i32* %10)
  %57 = call i32 @fe25519_square(i32* %13, i32* %13)
  store i32 1, i32* %14, align 4
  br label %58

58:                                               ; preds = %63, %55
  %59 = load i32, i32* %14, align 4
  %60 = icmp slt i32 %59, 10
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = call i32 @fe25519_square(i32* %13, i32* %13)
  br label %63

63:                                               ; preds = %61
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %14, align 4
  br label %58

66:                                               ; preds = %58
  %67 = call i32 @fe25519_mul(i32* %11, i32* %13, i32* %9)
  %68 = call i32 @fe25519_square(i32* %13, i32* %11)
  store i32 1, i32* %14, align 4
  br label %69

69:                                               ; preds = %74, %66
  %70 = load i32, i32* %14, align 4
  %71 = icmp slt i32 %70, 50
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = call i32 @fe25519_square(i32* %13, i32* %13)
  br label %74

74:                                               ; preds = %72
  %75 = load i32, i32* %14, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %14, align 4
  br label %69

77:                                               ; preds = %69
  %78 = call i32 @fe25519_mul(i32* %12, i32* %13, i32* %11)
  %79 = call i32 @fe25519_square(i32* %13, i32* %12)
  store i32 1, i32* %14, align 4
  br label %80

80:                                               ; preds = %85, %77
  %81 = load i32, i32* %14, align 4
  %82 = icmp slt i32 %81, 100
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = call i32 @fe25519_square(i32* %13, i32* %13)
  br label %85

85:                                               ; preds = %83
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %14, align 4
  br label %80

88:                                               ; preds = %80
  %89 = call i32 @fe25519_mul(i32* %13, i32* %13, i32* %12)
  %90 = call i32 @fe25519_square(i32* %13, i32* %13)
  store i32 1, i32* %14, align 4
  br label %91

91:                                               ; preds = %96, %88
  %92 = load i32, i32* %14, align 4
  %93 = icmp slt i32 %92, 50
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = call i32 @fe25519_square(i32* %13, i32* %13)
  br label %96

96:                                               ; preds = %94
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %14, align 4
  br label %91

99:                                               ; preds = %91
  %100 = call i32 @fe25519_mul(i32* %13, i32* %13, i32* %11)
  %101 = call i32 @fe25519_square(i32* %13, i32* %13)
  %102 = call i32 @fe25519_square(i32* %13, i32* %13)
  %103 = load i32*, i32** %3, align 8
  %104 = load i32*, i32** %4, align 8
  %105 = call i32 @fe25519_mul(i32* %103, i32* %13, i32* %104)
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
