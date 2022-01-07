; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_prime.c_BN_is_prime_fasttest_ex.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_prime.c_BN_is_prime_fasttest_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BN_prime_checks = common dso_local global i32 0, align 4
@NUMPRIMES = common dso_local global i32 0, align 4
@primes = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_is_prime_fasttest_ex(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 -1, i32* %14, align 4
  store i32* null, i32** %16, align 8
  store i32* null, i32** %21, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @BN_is_word(i32* %23, i32 2)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %5
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @BN_is_word(i32* %27, i32 3)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %5
  store i32 1, i32* %6, align 4
  br label %220

31:                                               ; preds = %26
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @BN_is_odd(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 (...) @BN_value_one()
  %38 = call i64 @BN_cmp(i32* %36, i32 %37)
  %39 = icmp sle i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35, %31
  store i32 0, i32* %6, align 4
  br label %220

41:                                               ; preds = %35
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @BN_prime_checks, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @BN_num_bits(i32* %46)
  %48 = call i32 @BN_prime_checks_for_size(i32 %47)
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %45, %41
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %89

52:                                               ; preds = %49
  store i32 1, i32* %12, align 4
  br label %53

53:                                               ; preds = %80, %52
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @NUMPRIMES, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %83

57:                                               ; preds = %53
  %58 = load i32*, i32** %7, align 8
  %59 = load i32*, i32** @primes, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @BN_mod_word(i32* %58, i32 %63)
  store i64 %64, i64* %22, align 8
  %65 = load i64, i64* %22, align 8
  %66 = icmp eq i64 %65, -1
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %204

68:                                               ; preds = %57
  %69 = load i64, i64* %22, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load i32*, i32** %7, align 8
  %73 = load i32*, i32** @primes, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @BN_is_word(i32* %72, i32 %77)
  store i32 %78, i32* %6, align 4
  br label %220

79:                                               ; preds = %68
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  br label %53

83:                                               ; preds = %53
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 @BN_GENCB_call(i32* %84, i32 1, i32 -1)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  br label %204

88:                                               ; preds = %83
  br label %89

89:                                               ; preds = %88, %49
  %90 = load i32*, i32** %9, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32*, i32** %9, align 8
  store i32* %93, i32** %16, align 8
  br label %99

94:                                               ; preds = %89
  %95 = call i32* (...) @BN_CTX_new()
  store i32* %95, i32** %16, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  br label %204

98:                                               ; preds = %94
  br label %99

99:                                               ; preds = %98, %92
  %100 = load i32*, i32** %16, align 8
  %101 = call i32 @BN_CTX_start(i32* %100)
  %102 = load i32*, i32** %16, align 8
  %103 = call i32* @BN_CTX_get(i32* %102)
  store i32* %103, i32** %17, align 8
  %104 = load i32*, i32** %16, align 8
  %105 = call i32* @BN_CTX_get(i32* %104)
  store i32* %105, i32** %19, align 8
  %106 = load i32*, i32** %16, align 8
  %107 = call i32* @BN_CTX_get(i32* %106)
  store i32* %107, i32** %18, align 8
  %108 = load i32*, i32** %16, align 8
  %109 = call i32* @BN_CTX_get(i32* %108)
  store i32* %109, i32** %20, align 8
  %110 = load i32*, i32** %20, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %113

112:                                              ; preds = %99
  br label %204

113:                                              ; preds = %99
  %114 = load i32*, i32** %17, align 8
  %115 = load i32*, i32** %7, align 8
  %116 = call i32 @BN_copy(i32* %114, i32* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = load i32*, i32** %17, align 8
  %120 = call i32 @BN_sub_word(i32* %119, i32 1)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %118, %113
  br label %204

123:                                              ; preds = %118
  %124 = load i32*, i32** %19, align 8
  %125 = load i32*, i32** %7, align 8
  %126 = call i32 @BN_copy(i32* %124, i32* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load i32*, i32** %19, align 8
  %130 = call i32 @BN_sub_word(i32* %129, i32 3)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %128, %123
  br label %204

133:                                              ; preds = %128
  store i32 1, i32* %15, align 4
  br label %134

134:                                              ; preds = %140, %133
  %135 = load i32*, i32** %17, align 8
  %136 = load i32, i32* %15, align 4
  %137 = call i32 @BN_is_bit_set(i32* %135, i32 %136)
  %138 = icmp ne i32 %137, 0
  %139 = xor i1 %138, true
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = load i32, i32* %15, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %15, align 4
  br label %134

143:                                              ; preds = %134
  %144 = load i32*, i32** %18, align 8
  %145 = load i32*, i32** %17, align 8
  %146 = load i32, i32* %15, align 4
  %147 = call i32 @BN_rshift(i32* %144, i32* %145, i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %143
  br label %204

150:                                              ; preds = %143
  %151 = call i32* (...) @BN_MONT_CTX_new()
  store i32* %151, i32** %21, align 8
  %152 = load i32*, i32** %21, align 8
  %153 = icmp eq i32* %152, null
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  br label %204

155:                                              ; preds = %150
  %156 = load i32*, i32** %21, align 8
  %157 = load i32*, i32** %7, align 8
  %158 = load i32*, i32** %16, align 8
  %159 = call i32 @BN_MONT_CTX_set(i32* %156, i32* %157, i32* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %155
  br label %204

162:                                              ; preds = %155
  store i32 0, i32* %12, align 4
  br label %163

163:                                              ; preds = %200, %162
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* %8, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %203

167:                                              ; preds = %163
  %168 = load i32*, i32** %20, align 8
  %169 = load i32*, i32** %19, align 8
  %170 = call i32 @BN_priv_rand_range(i32* %168, i32* %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %167
  %173 = load i32*, i32** %20, align 8
  %174 = call i32 @BN_add_word(i32* %173, i32 2)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %172, %167
  br label %204

177:                                              ; preds = %172
  %178 = load i32*, i32** %20, align 8
  %179 = load i32*, i32** %7, align 8
  %180 = load i32*, i32** %17, align 8
  %181 = load i32*, i32** %18, align 8
  %182 = load i32, i32* %15, align 4
  %183 = load i32*, i32** %16, align 8
  %184 = load i32*, i32** %21, align 8
  %185 = call i32 @witness(i32* %178, i32* %179, i32* %180, i32* %181, i32 %182, i32* %183, i32* %184)
  store i32 %185, i32* %13, align 4
  %186 = load i32, i32* %13, align 4
  %187 = icmp eq i32 %186, -1
  br i1 %187, label %188, label %189

188:                                              ; preds = %177
  br label %204

189:                                              ; preds = %177
  %190 = load i32, i32* %13, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  store i32 0, i32* %14, align 4
  br label %204

193:                                              ; preds = %189
  %194 = load i32*, i32** %11, align 8
  %195 = load i32, i32* %12, align 4
  %196 = call i32 @BN_GENCB_call(i32* %194, i32 1, i32 %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %193
  br label %204

199:                                              ; preds = %193
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %12, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %12, align 4
  br label %163

203:                                              ; preds = %163
  store i32 1, i32* %14, align 4
  br label %204

204:                                              ; preds = %203, %198, %192, %188, %176, %161, %154, %149, %132, %122, %112, %97, %87, %67
  %205 = load i32*, i32** %16, align 8
  %206 = icmp ne i32* %205, null
  br i1 %206, label %207, label %216

207:                                              ; preds = %204
  %208 = load i32*, i32** %16, align 8
  %209 = call i32 @BN_CTX_end(i32* %208)
  %210 = load i32*, i32** %9, align 8
  %211 = icmp eq i32* %210, null
  br i1 %211, label %212, label %215

212:                                              ; preds = %207
  %213 = load i32*, i32** %16, align 8
  %214 = call i32 @BN_CTX_free(i32* %213)
  br label %215

215:                                              ; preds = %212, %207
  br label %216

216:                                              ; preds = %215, %204
  %217 = load i32*, i32** %21, align 8
  %218 = call i32 @BN_MONT_CTX_free(i32* %217)
  %219 = load i32, i32* %14, align 4
  store i32 %219, i32* %6, align 4
  br label %220

220:                                              ; preds = %216, %71, %40, %30
  %221 = load i32, i32* %6, align 4
  ret i32 %221
}

declare dso_local i32 @BN_is_word(i32*, i32) #1

declare dso_local i32 @BN_is_odd(i32*) #1

declare dso_local i64 @BN_cmp(i32*, i32) #1

declare dso_local i32 @BN_value_one(...) #1

declare dso_local i32 @BN_prime_checks_for_size(i32) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i64 @BN_mod_word(i32*, i32) #1

declare dso_local i32 @BN_GENCB_call(i32*, i32, i32) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @BN_copy(i32*, i32*) #1

declare dso_local i32 @BN_sub_word(i32*, i32) #1

declare dso_local i32 @BN_is_bit_set(i32*, i32) #1

declare dso_local i32 @BN_rshift(i32*, i32*, i32) #1

declare dso_local i32* @BN_MONT_CTX_new(...) #1

declare dso_local i32 @BN_MONT_CTX_set(i32*, i32*, i32*) #1

declare dso_local i32 @BN_priv_rand_range(i32*, i32*) #1

declare dso_local i32 @BN_add_word(i32*, i32) #1

declare dso_local i32 @witness(i32*, i32*, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @BN_MONT_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
