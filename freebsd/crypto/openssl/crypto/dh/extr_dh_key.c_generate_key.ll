; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dh/extr_dh_key.c_generate_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dh/extr_dh_key.c_generate_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32*, i32*, i32, i32, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i32*, i32, i32*, i32, i32*, i32*)* }

@OPENSSL_DH_MAX_MODULUS_BITS = common dso_local global i32 0, align 4
@DH_F_GENERATE_KEY = common dso_local global i32 0, align 4
@DH_R_MODULUS_TOO_LARGE = common dso_local global i32 0, align 4
@DH_FLAG_CACHE_MONT_P = common dso_local global i32 0, align 4
@BN_RAND_TOP_ONE = common dso_local global i32 0, align 4
@BN_RAND_BOTTOM_ANY = common dso_local global i32 0, align 4
@DH_GENERATOR_2 = common dso_local global i32 0, align 4
@BN_FLG_CONSTTIME = common dso_local global i32 0, align 4
@ERR_R_BN_LIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @generate_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_key(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @BN_num_bits(i32 %14)
  %16 = load i32, i32* @OPENSSL_DH_MAX_MODULUS_BITS, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* @DH_F_GENERATE_KEY, align 4
  %20 = load i32, i32* @DH_R_MODULUS_TOO_LARGE, align 4
  %21 = call i32 @DHerr(i32 %19, i32 %20)
  store i32 0, i32* %2, align 4
  br label %222

22:                                               ; preds = %1
  %23 = call i32* (...) @BN_CTX_new()
  store i32* %23, i32** %7, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %193

27:                                               ; preds = %22
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = call i32* (...) @BN_secure_new()
  store i32* %33, i32** %10, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %193

37:                                               ; preds = %32
  store i32 1, i32* %5, align 4
  br label %42

38:                                               ; preds = %27
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %10, align 8
  br label %42

42:                                               ; preds = %38, %37
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = call i32* (...) @BN_new()
  store i32* %48, i32** %9, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %193

52:                                               ; preds = %47
  br label %57

53:                                               ; preds = %42
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %9, align 8
  br label %57

57:                                               ; preds = %53, %52
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @DH_FLAG_CACHE_MONT_P, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %57
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 9
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 8
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = call i32* @BN_MONT_CTX_set_locked(i32* %66, i32 %69, i32 %72, i32* %73)
  store i32* %74, i32** %8, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %64
  br label %193

78:                                               ; preds = %64
  br label %79

79:                                               ; preds = %78, %57
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %153

82:                                               ; preds = %79
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %108

87:                                               ; preds = %82
  br label %88

88:                                               ; preds = %105, %87
  %89 = load i32*, i32** %10, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @BN_priv_rand_range(i32* %89, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %88
  br label %193

96:                                               ; preds = %88
  br label %97

97:                                               ; preds = %96
  %98 = load i32*, i32** %10, align 8
  %99 = call i64 @BN_is_zero(i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = load i32*, i32** %10, align 8
  %103 = call i64 @BN_is_one(i32* %102)
  %104 = icmp ne i64 %103, 0
  br label %105

105:                                              ; preds = %101, %97
  %106 = phi i1 [ true, %97 ], [ %104, %101 ]
  br i1 %106, label %88, label %107

107:                                              ; preds = %105
  br label %152

108:                                              ; preds = %82
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  br label %123

117:                                              ; preds = %108
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @BN_num_bits(i32 %120)
  %122 = sub nsw i32 %121, 1
  br label %123

123:                                              ; preds = %117, %113
  %124 = phi i32 [ %116, %113 ], [ %122, %117 ]
  store i32 %124, i32* %6, align 4
  %125 = load i32*, i32** %10, align 8
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @BN_RAND_TOP_ONE, align 4
  %128 = load i32, i32* @BN_RAND_BOTTOM_ANY, align 4
  %129 = call i32 @BN_priv_rand(i32* %125, i32 %126, i32 %127, i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %123
  br label %193

132:                                              ; preds = %123
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @DH_GENERATOR_2, align 4
  %137 = call i64 @BN_is_word(i32 %135, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %151

139:                                              ; preds = %132
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @BN_is_bit_set(i32 %142, i32 2)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %151, label %145

145:                                              ; preds = %139
  %146 = load i32*, i32** %10, align 8
  %147 = call i32 @BN_clear_bit(i32* %146, i32 0)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %145
  br label %193

150:                                              ; preds = %145
  br label %151

151:                                              ; preds = %150, %139, %132
  br label %152

152:                                              ; preds = %151, %107
  br label %153

153:                                              ; preds = %152, %79
  %154 = call i32* (...) @BN_new()
  store i32* %154, i32** %11, align 8
  %155 = load i32*, i32** %11, align 8
  %156 = icmp eq i32* %155, null
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  br label %193

158:                                              ; preds = %153
  %159 = load i32*, i32** %11, align 8
  %160 = load i32*, i32** %10, align 8
  %161 = load i32, i32* @BN_FLG_CONSTTIME, align 4
  %162 = call i32 @BN_with_flags(i32* %159, i32* %160, i32 %161)
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 6
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  %167 = load i32 (%struct.TYPE_6__*, i32*, i32, i32*, i32, i32*, i32*)*, i32 (%struct.TYPE_6__*, i32*, i32, i32*, i32, i32*, i32*)** %166, align 8
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %169 = load i32*, i32** %9, align 8
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 4
  %173 = load i32*, i32** %11, align 8
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = load i32*, i32** %7, align 8
  %178 = load i32*, i32** %8, align 8
  %179 = call i32 %167(%struct.TYPE_6__* %168, i32* %169, i32 %172, i32* %173, i32 %176, i32* %177, i32* %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %158
  %182 = load i32*, i32** %11, align 8
  %183 = call i32 @BN_clear_free(i32* %182)
  br label %193

184:                                              ; preds = %158
  %185 = load i32*, i32** %11, align 8
  %186 = call i32 @BN_clear_free(i32* %185)
  %187 = load i32*, i32** %9, align 8
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 3
  store i32* %187, i32** %189, align 8
  %190 = load i32*, i32** %10, align 8
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 2
  store i32* %190, i32** %192, align 8
  store i32 1, i32* %4, align 4
  br label %193

193:                                              ; preds = %184, %181, %157, %149, %131, %95, %77, %51, %36, %26
  %194 = load i32, i32* %4, align 4
  %195 = icmp ne i32 %194, 1
  br i1 %195, label %196, label %200

196:                                              ; preds = %193
  %197 = load i32, i32* @DH_F_GENERATE_KEY, align 4
  %198 = load i32, i32* @ERR_R_BN_LIB, align 4
  %199 = call i32 @DHerr(i32 %197, i32 %198)
  br label %200

200:                                              ; preds = %196, %193
  %201 = load i32*, i32** %9, align 8
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 3
  %204 = load i32*, i32** %203, align 8
  %205 = icmp ne i32* %201, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %200
  %207 = load i32*, i32** %9, align 8
  %208 = call i32 @BN_free(i32* %207)
  br label %209

209:                                              ; preds = %206, %200
  %210 = load i32*, i32** %10, align 8
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 2
  %213 = load i32*, i32** %212, align 8
  %214 = icmp ne i32* %210, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %209
  %216 = load i32*, i32** %10, align 8
  %217 = call i32 @BN_free(i32* %216)
  br label %218

218:                                              ; preds = %215, %209
  %219 = load i32*, i32** %7, align 8
  %220 = call i32 @BN_CTX_free(i32* %219)
  %221 = load i32, i32* %4, align 4
  store i32 %221, i32* %2, align 4
  br label %222

222:                                              ; preds = %218, %18
  %223 = load i32, i32* %2, align 4
  ret i32 %223
}

declare dso_local i32 @BN_num_bits(i32) #1

declare dso_local i32 @DHerr(i32, i32) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @BN_secure_new(...) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32* @BN_MONT_CTX_set_locked(i32*, i32, i32, i32*) #1

declare dso_local i32 @BN_priv_rand_range(i32*, i32) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i64 @BN_is_one(i32*) #1

declare dso_local i32 @BN_priv_rand(i32*, i32, i32, i32) #1

declare dso_local i64 @BN_is_word(i32, i32) #1

declare dso_local i32 @BN_is_bit_set(i32, i32) #1

declare dso_local i32 @BN_clear_bit(i32*, i32) #1

declare dso_local i32 @BN_with_flags(i32*, i32*, i32) #1

declare dso_local i32 @BN_clear_free(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
