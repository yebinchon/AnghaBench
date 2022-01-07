; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_prime.c_probable_prime_dh_safe.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_prime.c_probable_prime_dh_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BN_RAND_TOP_ONE = common dso_local global i32 0, align 4
@BN_RAND_BOTTOM_ODD = common dso_local global i32 0, align 4
@NUMPRIMES = common dso_local global i32 0, align 4
@primes = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*, i32*)* @probable_prime_dh_safe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probable_prime_dh_safe(i32* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %12, align 4
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %7, align 4
  %20 = load i32*, i32** %10, align 8
  %21 = call i32 @BN_CTX_start(i32* %20)
  %22 = load i32*, i32** %10, align 8
  %23 = call i32* @BN_CTX_get(i32* %22)
  store i32* %23, i32** %13, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = call i32* @BN_CTX_get(i32* %24)
  store i32* %25, i32** %15, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = call i32* @BN_CTX_get(i32* %26)
  store i32* %27, i32** %14, align 8
  %28 = load i32*, i32** %14, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  br label %147

31:                                               ; preds = %5
  %32 = load i32*, i32** %14, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @BN_rshift1(i32* %32, i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %147

37:                                               ; preds = %31
  %38 = load i32*, i32** %15, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @BN_RAND_TOP_ONE, align 4
  %41 = load i32, i32* @BN_RAND_BOTTOM_ODD, align 4
  %42 = call i32 @BN_rand(i32* %38, i32 %39, i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  br label %147

45:                                               ; preds = %37
  %46 = load i32*, i32** %13, align 8
  %47 = load i32*, i32** %15, align 8
  %48 = load i32*, i32** %14, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = call i32 @BN_mod(i32* %46, i32* %47, i32* %48, i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  br label %147

53:                                               ; preds = %45
  %54 = load i32*, i32** %15, align 8
  %55 = load i32*, i32** %15, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = call i32 @BN_sub(i32* %54, i32* %55, i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  br label %147

60:                                               ; preds = %53
  %61 = load i32*, i32** %9, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32*, i32** %15, align 8
  %65 = call i32 @BN_add_word(i32* %64, i32 1)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  br label %147

68:                                               ; preds = %63
  br label %83

69:                                               ; preds = %60
  %70 = load i32*, i32** %13, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = call i32 @BN_rshift1(i32* %70, i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  br label %147

75:                                               ; preds = %69
  %76 = load i32*, i32** %15, align 8
  %77 = load i32*, i32** %15, align 8
  %78 = load i32*, i32** %13, align 8
  %79 = call i32 @BN_add(i32* %76, i32* %77, i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  br label %147

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82, %68
  %84 = load i32*, i32** %6, align 8
  %85 = load i32*, i32** %15, align 8
  %86 = call i32 @BN_lshift1(i32* %84, i32* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  br label %147

89:                                               ; preds = %83
  %90 = load i32*, i32** %6, align 8
  %91 = call i32 @BN_add_word(i32* %90, i32 1)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  br label %147

94:                                               ; preds = %89
  br label %95

95:                                               ; preds = %141, %94
  store i32 1, i32* %11, align 4
  br label %96

96:                                               ; preds = %143, %95
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @NUMPRIMES, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %146

100:                                              ; preds = %96
  %101 = load i32*, i32** %6, align 8
  %102 = load i64*, i64** @primes, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @BN_mod_word(i32* %101, i64 %106)
  store i64 %107, i64* %16, align 8
  %108 = load i32*, i32** %15, align 8
  %109 = load i64*, i64** @primes, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = call i64 @BN_mod_word(i32* %108, i64 %113)
  store i64 %114, i64* %17, align 8
  %115 = load i64, i64* %16, align 8
  %116 = icmp eq i64 %115, -1
  br i1 %116, label %120, label %117

117:                                              ; preds = %100
  %118 = load i64, i64* %17, align 8
  %119 = icmp eq i64 %118, -1
  br i1 %119, label %120, label %121

120:                                              ; preds = %117, %100
  br label %147

121:                                              ; preds = %117
  %122 = load i64, i64* %16, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %121
  %125 = load i64, i64* %17, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %142

127:                                              ; preds = %124, %121
  %128 = load i32*, i32** %6, align 8
  %129 = load i32*, i32** %6, align 8
  %130 = load i32*, i32** %8, align 8
  %131 = call i32 @BN_add(i32* %128, i32* %129, i32* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %127
  br label %147

134:                                              ; preds = %127
  %135 = load i32*, i32** %15, align 8
  %136 = load i32*, i32** %15, align 8
  %137 = load i32*, i32** %14, align 8
  %138 = call i32 @BN_add(i32* %135, i32* %136, i32* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %134
  br label %147

141:                                              ; preds = %134
  br label %95

142:                                              ; preds = %124
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %11, align 4
  br label %96

146:                                              ; preds = %96
  store i32 1, i32* %12, align 4
  br label %147

147:                                              ; preds = %146, %140, %133, %120, %93, %88, %81, %74, %67, %59, %52, %44, %36, %30
  %148 = load i32*, i32** %10, align 8
  %149 = call i32 @BN_CTX_end(i32* %148)
  %150 = load i32*, i32** %6, align 8
  %151 = call i32 @bn_check_top(i32* %150)
  %152 = load i32, i32* %12, align 4
  ret i32 %152
}

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @BN_rshift1(i32*, i32*) #1

declare dso_local i32 @BN_rand(i32*, i32, i32, i32) #1

declare dso_local i32 @BN_mod(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_sub(i32*, i32*, i32*) #1

declare dso_local i32 @BN_add_word(i32*, i32) #1

declare dso_local i32 @BN_add(i32*, i32*, i32*) #1

declare dso_local i32 @BN_lshift1(i32*, i32*) #1

declare dso_local i64 @BN_mod_word(i32*, i64) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @bn_check_top(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
