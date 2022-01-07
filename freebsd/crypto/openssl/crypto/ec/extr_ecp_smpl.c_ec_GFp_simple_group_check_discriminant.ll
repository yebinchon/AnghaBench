; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_smpl.c_ec_GFp_simple_group_check_discriminant.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_smpl.c_ec_GFp_simple_group_check_discriminant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, i32*, i32, i32*)* }

@EC_F_EC_GFP_SIMPLE_GROUP_CHECK_DISCRIMINANT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_GFp_simple_group_check_discriminant(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = call i32* (...) @BN_CTX_new()
  store i32* %19, i32** %12, align 8
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* @EC_F_EC_GFP_SIMPLE_GROUP_CHECK_DISCRIMINANT, align 4
  %24 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %25 = call i32 @ECerr(i32 %23, i32 %24)
  br label %165

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %2
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @BN_CTX_start(i32* %28)
  %30 = load i32*, i32** %4, align 8
  %31 = call i32* @BN_CTX_get(i32* %30)
  store i32* %31, i32** %6, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i32* @BN_CTX_get(i32* %32)
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = call i32* @BN_CTX_get(i32* %34)
  store i32* %35, i32** %9, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = call i32* @BN_CTX_get(i32* %36)
  store i32* %37, i32** %10, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = call i32* @BN_CTX_get(i32* %38)
  store i32* %39, i32** %8, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %27
  br label %165

43:                                               ; preds = %27
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_7__*, i32*, i32, i32*)*, i32 (%struct.TYPE_7__*, i32*, i32, i32*)** %47, align 8
  %49 = icmp ne i32 (%struct.TYPE_7__*, i32*, i32, i32*)* %48, null
  br i1 %49, label %50, label %81

50:                                               ; preds = %43
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32 (%struct.TYPE_7__*, i32*, i32, i32*)*, i32 (%struct.TYPE_7__*, i32*, i32, i32*)** %54, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 %55(%struct.TYPE_7__* %56, i32* %57, i32 %60, i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %50
  br label %165

65:                                               ; preds = %50
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32 (%struct.TYPE_7__*, i32*, i32, i32*)*, i32 (%struct.TYPE_7__*, i32*, i32, i32*)** %69, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 %70(%struct.TYPE_7__* %71, i32* %72, i32 %75, i32* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %65
  br label %165

80:                                               ; preds = %65
  br label %98

81:                                               ; preds = %43
  %82 = load i32*, i32** %6, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @BN_copy(i32* %82, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %81
  br label %165

89:                                               ; preds = %81
  %90 = load i32*, i32** %7, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @BN_copy(i32* %90, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %89
  br label %165

97:                                               ; preds = %89
  br label %98

98:                                               ; preds = %97, %80
  %99 = load i32*, i32** %6, align 8
  %100 = call i64 @BN_is_zero(i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = load i32*, i32** %7, align 8
  %104 = call i64 @BN_is_zero(i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  br label %165

107:                                              ; preds = %102
  br label %164

108:                                              ; preds = %98
  %109 = load i32*, i32** %7, align 8
  %110 = call i64 @BN_is_zero(i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %163, label %112

112:                                              ; preds = %108
  %113 = load i32*, i32** %9, align 8
  %114 = load i32*, i32** %6, align 8
  %115 = load i32*, i32** %11, align 8
  %116 = load i32*, i32** %4, align 8
  %117 = call i32 @BN_mod_sqr(i32* %113, i32* %114, i32* %115, i32* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %112
  br label %165

120:                                              ; preds = %112
  %121 = load i32*, i32** %10, align 8
  %122 = load i32*, i32** %9, align 8
  %123 = load i32*, i32** %6, align 8
  %124 = load i32*, i32** %11, align 8
  %125 = load i32*, i32** %4, align 8
  %126 = call i32 @BN_mod_mul(i32* %121, i32* %122, i32* %123, i32* %124, i32* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %120
  br label %165

129:                                              ; preds = %120
  %130 = load i32*, i32** %9, align 8
  %131 = load i32*, i32** %10, align 8
  %132 = call i32 @BN_lshift(i32* %130, i32* %131, i32 2)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %129
  br label %165

135:                                              ; preds = %129
  %136 = load i32*, i32** %10, align 8
  %137 = load i32*, i32** %7, align 8
  %138 = load i32*, i32** %11, align 8
  %139 = load i32*, i32** %4, align 8
  %140 = call i32 @BN_mod_sqr(i32* %136, i32* %137, i32* %138, i32* %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %135
  br label %165

143:                                              ; preds = %135
  %144 = load i32*, i32** %10, align 8
  %145 = call i32 @BN_mul_word(i32* %144, i32 27)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %143
  br label %165

148:                                              ; preds = %143
  %149 = load i32*, i32** %6, align 8
  %150 = load i32*, i32** %9, align 8
  %151 = load i32*, i32** %10, align 8
  %152 = load i32*, i32** %11, align 8
  %153 = load i32*, i32** %4, align 8
  %154 = call i32 @BN_mod_add(i32* %149, i32* %150, i32* %151, i32* %152, i32* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %148
  br label %165

157:                                              ; preds = %148
  %158 = load i32*, i32** %6, align 8
  %159 = call i64 @BN_is_zero(i32* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  br label %165

162:                                              ; preds = %157
  br label %163

163:                                              ; preds = %162, %108
  br label %164

164:                                              ; preds = %163, %107
  store i32 1, i32* %5, align 4
  br label %165

165:                                              ; preds = %164, %161, %156, %147, %142, %134, %128, %119, %106, %96, %88, %79, %64, %42, %22
  %166 = load i32*, i32** %4, align 8
  %167 = call i32 @BN_CTX_end(i32* %166)
  %168 = load i32*, i32** %12, align 8
  %169 = call i32 @BN_CTX_free(i32* %168)
  %170 = load i32, i32* %5, align 4
  ret i32 %170
}

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @BN_copy(i32*, i32) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i32 @BN_mod_sqr(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_mod_mul(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_lshift(i32*, i32*, i32) #1

declare dso_local i32 @BN_mul_word(i32*, i32) #1

declare dso_local i32 @BN_mod_add(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
