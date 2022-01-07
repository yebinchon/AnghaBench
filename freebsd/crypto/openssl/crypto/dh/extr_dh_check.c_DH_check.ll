; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dh/extr_dh_check.c_DH_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dh/extr_dh_check.c_DH_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i64, i64 }

@DH_NOT_SUITABLE_GENERATOR = common dso_local global i32 0, align 4
@DH_NUMBER_ITERATIONS_FOR_PRIME = common dso_local global i32 0, align 4
@DH_CHECK_Q_NOT_PRIME = common dso_local global i32 0, align 4
@DH_CHECK_INVALID_Q_VALUE = common dso_local global i32 0, align 4
@DH_CHECK_INVALID_J_VALUE = common dso_local global i32 0, align 4
@DH_CHECK_P_NOT_PRIME = common dso_local global i32 0, align 4
@DH_CHECK_P_NOT_SAFE_PRIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DH_check(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @DH_check_params(%struct.TYPE_4__* %11, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %202

16:                                               ; preds = %2
  %17 = call i32* (...) @BN_CTX_new()
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %196

21:                                               ; preds = %16
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @BN_CTX_start(i32* %22)
  %24 = load i32*, i32** %8, align 8
  %25 = call i32* @BN_CTX_get(i32* %24)
  store i32* %25, i32** %9, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i32* @BN_CTX_get(i32* %26)
  store i32* %27, i32** %10, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %196

31:                                               ; preds = %21
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %146

36:                                               ; preds = %31
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = call i32* (...) @BN_value_one()
  %41 = call i64 @BN_cmp(i64 %39, i32* %40)
  %42 = icmp sle i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load i32, i32* @DH_NOT_SUITABLE_GENERATOR, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %44
  store i32 %47, i32* %45, align 4
  br label %88

48:                                               ; preds = %36
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i64 @BN_cmp(i64 %51, i32* %54)
  %56 = icmp sge i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %48
  %58 = load i32, i32* @DH_NOT_SUITABLE_GENERATOR, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %58
  store i32 %61, i32* %59, align 4
  br label %87

62:                                               ; preds = %48
  %63 = load i32*, i32** %9, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @BN_mod_exp(i32* %63, i64 %66, i32* %69, i32* %72, i32* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %62
  br label %196

77:                                               ; preds = %62
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 @BN_is_one(i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* @DH_NOT_SUITABLE_GENERATOR, align 4
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %82
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %81, %77
  br label %87

87:                                               ; preds = %86, %57
  br label %88

88:                                               ; preds = %87, %43
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* @DH_NUMBER_ITERATIONS_FOR_PRIME, align 4
  %93 = load i32*, i32** %8, align 8
  %94 = call i32 @BN_is_prime_ex(i32* %91, i32 %92, i32* %93, i32* null)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  br label %196

98:                                               ; preds = %88
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* @DH_CHECK_Q_NOT_PRIME, align 4
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %102
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %101, %98
  %107 = load i32*, i32** %9, align 8
  %108 = load i32*, i32** %10, align 8
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32*, i32** %8, align 8
  %116 = call i32 @BN_div(i32* %107, i32* %108, i32* %111, i32* %114, i32* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %106
  br label %196

119:                                              ; preds = %106
  %120 = load i32*, i32** %10, align 8
  %121 = call i32 @BN_is_one(i32* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* @DH_CHECK_INVALID_Q_VALUE, align 4
  %125 = load i32*, i32** %5, align 8
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %124
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %123, %119
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %145

133:                                              ; preds = %128
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load i32*, i32** %9, align 8
  %138 = call i64 @BN_cmp(i64 %136, i32* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %133
  %141 = load i32, i32* @DH_CHECK_INVALID_J_VALUE, align 4
  %142 = load i32*, i32** %5, align 8
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %141
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %140, %133, %128
  br label %146

146:                                              ; preds = %145, %31
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* @DH_NUMBER_ITERATIONS_FOR_PRIME, align 4
  %151 = load i32*, i32** %8, align 8
  %152 = call i32 @BN_is_prime_ex(i32* %149, i32 %150, i32* %151, i32* null)
  store i32 %152, i32* %7, align 4
  %153 = load i32, i32* %7, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %146
  br label %196

156:                                              ; preds = %146
  %157 = load i32, i32* %7, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %164, label %159

159:                                              ; preds = %156
  %160 = load i32, i32* @DH_CHECK_P_NOT_PRIME, align 4
  %161 = load i32*, i32** %5, align 8
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %162, %160
  store i32 %163, i32* %161, align 4
  br label %195

164:                                              ; preds = %156
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = icmp ne i32* %167, null
  br i1 %168, label %194, label %169

169:                                              ; preds = %164
  %170 = load i32*, i32** %9, align 8
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = call i32 @BN_rshift1(i32* %170, i32* %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %169
  br label %196

177:                                              ; preds = %169
  %178 = load i32*, i32** %9, align 8
  %179 = load i32, i32* @DH_NUMBER_ITERATIONS_FOR_PRIME, align 4
  %180 = load i32*, i32** %8, align 8
  %181 = call i32 @BN_is_prime_ex(i32* %178, i32 %179, i32* %180, i32* null)
  store i32 %181, i32* %7, align 4
  %182 = load i32, i32* %7, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %177
  br label %196

185:                                              ; preds = %177
  %186 = load i32, i32* %7, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %193, label %188

188:                                              ; preds = %185
  %189 = load i32, i32* @DH_CHECK_P_NOT_SAFE_PRIME, align 4
  %190 = load i32*, i32** %5, align 8
  %191 = load i32, i32* %190, align 4
  %192 = or i32 %191, %189
  store i32 %192, i32* %190, align 4
  br label %193

193:                                              ; preds = %188, %185
  br label %194

194:                                              ; preds = %193, %164
  br label %195

195:                                              ; preds = %194, %159
  store i32 1, i32* %6, align 4
  br label %196

196:                                              ; preds = %195, %184, %176, %155, %118, %97, %76, %30, %20
  %197 = load i32*, i32** %8, align 8
  %198 = call i32 @BN_CTX_end(i32* %197)
  %199 = load i32*, i32** %8, align 8
  %200 = call i32 @BN_CTX_free(i32* %199)
  %201 = load i32, i32* %6, align 4
  store i32 %201, i32* %3, align 4
  br label %202

202:                                              ; preds = %196, %15
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local i32 @DH_check_params(%struct.TYPE_4__*, i32*) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i64 @BN_cmp(i64, i32*) #1

declare dso_local i32* @BN_value_one(...) #1

declare dso_local i32 @BN_mod_exp(i32*, i64, i32*, i32*, i32*) #1

declare dso_local i32 @BN_is_one(i32*) #1

declare dso_local i32 @BN_is_prime_ex(i32*, i32, i32*, i32*) #1

declare dso_local i32 @BN_div(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_rshift1(i32*, i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
