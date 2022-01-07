; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_prime.c_probable_prime.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_prime.c_probable_prime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BN_MASK2 = common dso_local global i64 0, align 8
@primes = common dso_local global i64* null, align 8
@NUMPRIMES = common dso_local global i32 0, align 4
@BN_BITS2 = common dso_local global i32 0, align 4
@BN_RAND_TOP_TWO = common dso_local global i32 0, align 4
@BN_RAND_BOTTOM_ODD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64*)* @probable_prime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probable_prime(i32* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %15 = load i64, i64* @BN_MASK2, align 8
  %16 = load i64*, i64** @primes, align 8
  %17 = load i32, i32* @NUMPRIMES, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %16, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %15, %21
  store i64 %22, i64* %10, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @BN_BITS2, align 4
  %25 = icmp sle i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %11, align 1
  br label %28

28:                                               ; preds = %180, %162, %129, %3
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @BN_RAND_TOP_TWO, align 4
  %32 = load i32, i32* @BN_RAND_BOTTOM_ODD, align 4
  %33 = call i32 @BN_priv_rand(i32* %29, i32 %30, i32 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %184

36:                                               ; preds = %28
  store i32 1, i32* %8, align 4
  br label %37

37:                                               ; preds = %58, %36
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @NUMPRIMES, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %37
  %42 = load i32*, i32** %5, align 8
  %43 = load i64*, i64** @primes, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @BN_mod_word(i32* %42, i64 %47)
  store i64 %48, i64* %12, align 8
  %49 = load i64, i64* %12, align 8
  %50 = icmp eq i64 %49, -1
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %184

52:                                               ; preds = %41
  %53 = load i64, i64* %12, align 8
  %54 = load i64*, i64** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  store i64 %53, i64* %57, align 8
  br label %58

58:                                               ; preds = %52
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %37

61:                                               ; preds = %37
  %62 = load i8, i8* %11, align 1
  %63 = icmp ne i8 %62, 0
  br i1 %63, label %64, label %87

64:                                               ; preds = %61
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @BN_BITS2, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32*, i32** %5, align 8
  %70 = call i64 @BN_get_word(i32* %69)
  %71 = sub nsw i64 -1, %70
  store i64 %71, i64* %13, align 8
  br label %80

72:                                               ; preds = %64
  %73 = load i32, i32* %6, align 4
  %74 = zext i32 %73 to i64
  %75 = shl i64 1, %74
  %76 = load i32*, i32** %5, align 8
  %77 = call i64 @BN_get_word(i32* %76)
  %78 = sub nsw i64 %75, %77
  %79 = sub nsw i64 %78, 1
  store i64 %79, i64* %13, align 8
  br label %80

80:                                               ; preds = %72, %68
  %81 = load i64, i64* %13, align 8
  %82 = load i64, i64* %10, align 8
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i64, i64* %13, align 8
  store i64 %85, i64* %10, align 8
  br label %86

86:                                               ; preds = %84, %80
  br label %87

87:                                               ; preds = %86, %61
  store i64 0, i64* %9, align 8
  br label %88

88:                                               ; preds = %163, %130, %87
  %89 = load i8, i8* %11, align 1
  %90 = icmp ne i8 %89, 0
  br i1 %90, label %91, label %136

91:                                               ; preds = %88
  %92 = load i32*, i32** %5, align 8
  %93 = call i64 @BN_get_word(i32* %92)
  store i64 %93, i64* %14, align 8
  store i32 1, i32* %8, align 4
  br label %94

94:                                               ; preds = %132, %91
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @NUMPRIMES, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %94
  %99 = load i64*, i64** @primes, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %14, align 8
  %105 = icmp slt i64 %103, %104
  br label %106

106:                                              ; preds = %98, %94
  %107 = phi i1 [ false, %94 ], [ %105, %98 ]
  br i1 %107, label %108, label %135

108:                                              ; preds = %106
  %109 = load i64*, i64** %7, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %9, align 8
  %115 = add nsw i64 %113, %114
  %116 = load i64*, i64** @primes, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = srem i64 %115, %120
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %108
  %124 = load i64, i64* %9, align 8
  %125 = add nsw i64 %124, 2
  store i64 %125, i64* %9, align 8
  %126 = load i64, i64* %9, align 8
  %127 = load i64, i64* %10, align 8
  %128 = icmp sgt i64 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  br label %28

130:                                              ; preds = %123
  br label %88

131:                                              ; preds = %108
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %8, align 4
  br label %94

135:                                              ; preds = %106
  br label %169

136:                                              ; preds = %88
  store i32 1, i32* %8, align 4
  br label %137

137:                                              ; preds = %165, %136
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* @NUMPRIMES, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %168

141:                                              ; preds = %137
  %142 = load i64*, i64** %7, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* %9, align 8
  %148 = add nsw i64 %146, %147
  %149 = load i64*, i64** @primes, align 8
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = srem i64 %148, %153
  %155 = icmp sle i64 %154, 1
  br i1 %155, label %156, label %164

156:                                              ; preds = %141
  %157 = load i64, i64* %9, align 8
  %158 = add nsw i64 %157, 2
  store i64 %158, i64* %9, align 8
  %159 = load i64, i64* %9, align 8
  %160 = load i64, i64* %10, align 8
  %161 = icmp sgt i64 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %156
  br label %28

163:                                              ; preds = %156
  br label %88

164:                                              ; preds = %141
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %8, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %8, align 4
  br label %137

168:                                              ; preds = %137
  br label %169

169:                                              ; preds = %168, %135
  %170 = load i32*, i32** %5, align 8
  %171 = load i64, i64* %9, align 8
  %172 = call i32 @BN_add_word(i32* %170, i64 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %169
  store i32 0, i32* %4, align 4
  br label %184

175:                                              ; preds = %169
  %176 = load i32*, i32** %5, align 8
  %177 = call i32 @BN_num_bits(i32* %176)
  %178 = load i32, i32* %6, align 4
  %179 = icmp ne i32 %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %175
  br label %28

181:                                              ; preds = %175
  %182 = load i32*, i32** %5, align 8
  %183 = call i32 @bn_check_top(i32* %182)
  store i32 1, i32* %4, align 4
  br label %184

184:                                              ; preds = %181, %174, %51, %35
  %185 = load i32, i32* %4, align 4
  ret i32 %185
}

declare dso_local i32 @BN_priv_rand(i32*, i32, i32, i32) #1

declare dso_local i64 @BN_mod_word(i32*, i64) #1

declare dso_local i64 @BN_get_word(i32*) #1

declare dso_local i32 @BN_add_word(i32*, i64) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i32 @bn_check_top(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
