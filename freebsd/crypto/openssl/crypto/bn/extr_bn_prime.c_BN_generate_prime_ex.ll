; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_prime.c_BN_generate_prime_ex.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_prime.c_BN_generate_prime_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BN_F_BN_GENERATE_PRIME_EX = common dso_local global i32 0, align 4
@BN_R_BITS_TOO_SMALL = common dso_local global i32 0, align 4
@NUMPRIMES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_generate_prime_ex(i32* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %18, align 4
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @BN_prime_checks_for_size(i32 %22)
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %30

26:                                               ; preds = %6
  %27 = load i32, i32* @BN_F_BN_GENERATE_PRIME_EX, align 4
  %28 = load i32, i32* @BN_R_BITS_TOO_SMALL, align 4
  %29 = call i32 @BNerr(i32 %27, i32 %28)
  store i32 0, i32* %7, align 4
  br label %187

30:                                               ; preds = %6
  %31 = load i32*, i32** %11, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 6
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 3
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* @BN_F_BN_GENERATE_PRIME_EX, align 4
  %44 = load i32, i32* @BN_R_BITS_TOO_SMALL, align 4
  %45 = call i32 @BNerr(i32 %43, i32 %44)
  store i32 0, i32* %7, align 4
  br label %187

46:                                               ; preds = %39, %36, %33, %30
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* @NUMPRIMES, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 4, %49
  %51 = trunc i64 %50 to i32
  %52 = call i32* @OPENSSL_zalloc(i32 %51)
  store i32* %52, i32** %20, align 8
  %53 = load i32*, i32** %20, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %177

56:                                               ; preds = %47
  %57 = call i32* (...) @BN_CTX_new()
  store i32* %57, i32** %19, align 8
  %58 = load i32*, i32** %19, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %177

61:                                               ; preds = %56
  %62 = load i32*, i32** %19, align 8
  %63 = call i32 @BN_CTX_start(i32* %62)
  %64 = load i32*, i32** %19, align 8
  %65 = call i32* @BN_CTX_get(i32* %64)
  store i32* %65, i32** %14, align 8
  %66 = load i32*, i32** %14, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %177

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %163, %151, %127, %69
  %71 = load i32*, i32** %11, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %81

73:                                               ; preds = %70
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load i32*, i32** %20, align 8
  %77 = call i32 @probable_prime(i32* %74, i32 %75, i32* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %73
  br label %177

80:                                               ; preds = %73
  br label %105

81:                                               ; preds = %70
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %81
  %85 = load i32*, i32** %8, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32*, i32** %11, align 8
  %88 = load i32*, i32** %12, align 8
  %89 = load i32*, i32** %19, align 8
  %90 = call i32 @probable_prime_dh_safe(i32* %85, i32 %86, i32* %87, i32* %88, i32* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %84
  br label %177

93:                                               ; preds = %84
  br label %104

94:                                               ; preds = %81
  %95 = load i32*, i32** %8, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load i32*, i32** %11, align 8
  %98 = load i32*, i32** %12, align 8
  %99 = load i32*, i32** %19, align 8
  %100 = call i32 @bn_probable_prime_dh(i32* %95, i32 %96, i32* %97, i32* %98, i32* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %94
  br label %177

103:                                              ; preds = %94
  br label %104

104:                                              ; preds = %103, %93
  br label %105

105:                                              ; preds = %104, %80
  %106 = load i32*, i32** %13, align 8
  %107 = load i32, i32* %18, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %18, align 4
  %109 = call i32 @BN_GENCB_call(i32* %106, i32 0, i32 %107)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %105
  br label %177

112:                                              ; preds = %105
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %129, label %115

115:                                              ; preds = %112
  %116 = load i32*, i32** %8, align 8
  %117 = load i32, i32* %21, align 4
  %118 = load i32*, i32** %19, align 8
  %119 = load i32*, i32** %13, align 8
  %120 = call i32 @BN_is_prime_fasttest_ex(i32* %116, i32 %117, i32* %118, i32 0, i32* %119)
  store i32 %120, i32* %16, align 4
  %121 = load i32, i32* %16, align 4
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  br label %177

124:                                              ; preds = %115
  %125 = load i32, i32* %16, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  br label %70

128:                                              ; preds = %124
  br label %176

129:                                              ; preds = %112
  %130 = load i32*, i32** %14, align 8
  %131 = load i32*, i32** %8, align 8
  %132 = call i32 @BN_rshift1(i32* %130, i32* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %129
  br label %177

135:                                              ; preds = %129
  store i32 0, i32* %16, align 4
  br label %136

136:                                              ; preds = %172, %135
  %137 = load i32, i32* %16, align 4
  %138 = load i32, i32* %21, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %175

140:                                              ; preds = %136
  %141 = load i32*, i32** %8, align 8
  %142 = load i32*, i32** %19, align 8
  %143 = load i32*, i32** %13, align 8
  %144 = call i32 @BN_is_prime_fasttest_ex(i32* %141, i32 1, i32* %142, i32 0, i32* %143)
  store i32 %144, i32* %17, align 4
  %145 = load i32, i32* %17, align 4
  %146 = icmp eq i32 %145, -1
  br i1 %146, label %147, label %148

147:                                              ; preds = %140
  br label %177

148:                                              ; preds = %140
  %149 = load i32, i32* %17, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  br label %70

152:                                              ; preds = %148
  %153 = load i32*, i32** %14, align 8
  %154 = load i32*, i32** %19, align 8
  %155 = load i32*, i32** %13, align 8
  %156 = call i32 @BN_is_prime_fasttest_ex(i32* %153, i32 1, i32* %154, i32 0, i32* %155)
  store i32 %156, i32* %17, align 4
  %157 = load i32, i32* %17, align 4
  %158 = icmp eq i32 %157, -1
  br i1 %158, label %159, label %160

159:                                              ; preds = %152
  br label %177

160:                                              ; preds = %152
  %161 = load i32, i32* %17, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  br label %70

164:                                              ; preds = %160
  %165 = load i32*, i32** %13, align 8
  %166 = load i32, i32* %18, align 4
  %167 = sub nsw i32 %166, 1
  %168 = call i32 @BN_GENCB_call(i32* %165, i32 2, i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %164
  br label %177

171:                                              ; preds = %164
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %16, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %16, align 4
  br label %136

175:                                              ; preds = %136
  br label %176

176:                                              ; preds = %175, %128
  store i32 1, i32* %15, align 4
  br label %177

177:                                              ; preds = %176, %170, %159, %147, %134, %123, %111, %102, %92, %79, %68, %60, %55
  %178 = load i32*, i32** %20, align 8
  %179 = call i32 @OPENSSL_free(i32* %178)
  %180 = load i32*, i32** %19, align 8
  %181 = call i32 @BN_CTX_end(i32* %180)
  %182 = load i32*, i32** %19, align 8
  %183 = call i32 @BN_CTX_free(i32* %182)
  %184 = load i32*, i32** %8, align 8
  %185 = call i32 @bn_check_top(i32* %184)
  %186 = load i32, i32* %15, align 4
  store i32 %186, i32* %7, align 4
  br label %187

187:                                              ; preds = %177, %42, %26
  %188 = load i32, i32* %7, align 4
  ret i32 %188
}

declare dso_local i32 @BN_prime_checks_for_size(i32) #1

declare dso_local i32 @BNerr(i32, i32) #1

declare dso_local i32* @OPENSSL_zalloc(i32) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @probable_prime(i32*, i32, i32*) #1

declare dso_local i32 @probable_prime_dh_safe(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bn_probable_prime_dh(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @BN_GENCB_call(i32*, i32, i32) #1

declare dso_local i32 @BN_is_prime_fasttest_ex(i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @BN_rshift1(i32*, i32*) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @bn_check_top(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
