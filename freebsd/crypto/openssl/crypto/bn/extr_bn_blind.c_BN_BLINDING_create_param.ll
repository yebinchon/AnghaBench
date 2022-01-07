; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_blind.c_BN_BLINDING_create_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_blind.c_BN_BLINDING_create_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i32*, i32*, i32*, i32*, i32*, i32*)*, i32*, i32*, i32*, i32*, i32* }

@BN_F_BN_BLINDING_CREATE_PARAM = common dso_local global i32 0, align 4
@BN_R_TOO_MANY_ITERATIONS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @BN_BLINDING_create_param(%struct.TYPE_6__* %0, i32* %1, i32* %2, i32* %3, i32 (i32*, i32*, i32*, i32*, i32*, i32*)* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32 (i32*, i32*, i32*, i32*, i32*, i32*)*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 (i32*, i32*, i32*, i32*, i32*, i32*)* %4, i32 (i32*, i32*, i32*, i32*, i32*, i32*)** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 32, i32* %14, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %15, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %18 = icmp eq %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load i32*, i32** %10, align 8
  %21 = call %struct.TYPE_6__* @BN_BLINDING_new(i32* null, i32* null, i32* %20)
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %15, align 8
  br label %24

22:                                               ; preds = %6
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %15, align 8
  br label %24

24:                                               ; preds = %22, %19
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %26 = icmp eq %struct.TYPE_6__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %210

28:                                               ; preds = %24
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = call i8* (...) @BN_new()
  %35 = bitcast i8* %34 to i32*
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  store i32* %35, i32** %37, align 8
  %38 = icmp eq i32* %35, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %210

40:                                               ; preds = %33, %28
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = call i8* (...) @BN_new()
  %47 = bitcast i8* %46 to i32*
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 3
  store i32* %47, i32** %49, align 8
  %50 = icmp eq i32* %47, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %210

52:                                               ; preds = %45, %40
  %53 = load i32*, i32** %9, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 5
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @BN_free(i32* %58)
  %60 = load i32*, i32** %9, align 8
  %61 = call i32* @BN_dup(i32* %60)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 5
  store i32* %61, i32** %63, align 8
  br label %64

64:                                               ; preds = %55, %52
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 5
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %210

70:                                               ; preds = %64
  %71 = load i32 (i32*, i32*, i32*, i32*, i32*, i32*)*, i32 (i32*, i32*, i32*, i32*, i32*, i32*)** %12, align 8
  %72 = icmp ne i32 (i32*, i32*, i32*, i32*, i32*, i32*)* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32 (i32*, i32*, i32*, i32*, i32*, i32*)*, i32 (i32*, i32*, i32*, i32*, i32*, i32*)** %12, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i32 (i32*, i32*, i32*, i32*, i32*, i32*)* %74, i32 (i32*, i32*, i32*, i32*, i32*, i32*)** %76, align 8
  br label %77

77:                                               ; preds = %73, %70
  %78 = load i32*, i32** %13, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i32*, i32** %13, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  store i32* %81, i32** %83, align 8
  br label %84

84:                                               ; preds = %80, %77
  br label %85

85:                                               ; preds = %122, %84
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 4
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @BN_priv_rand_range(i32* %88, i32* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %85
  br label %210

95:                                               ; preds = %85
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 4
  %104 = load i32*, i32** %103, align 8
  %105 = load i32*, i32** %11, align 8
  %106 = call i64 @int_bn_mod_inverse(i32* %98, i32* %101, i32* %104, i32* %105, i32* %16)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %95
  br label %123

109:                                              ; preds = %95
  %110 = load i32, i32* %16, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %109
  br label %210

113:                                              ; preds = %109
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %14, align 4
  %116 = icmp eq i32 %114, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load i32, i32* @BN_F_BN_BLINDING_CREATE_PARAM, align 4
  %119 = load i32, i32* @BN_R_TOO_MANY_ITERATIONS, align 4
  %120 = call i32 @BNerr(i32 %118, i32 %119)
  br label %210

121:                                              ; preds = %113
  br label %122

122:                                              ; preds = %121
  br i1 true, label %85, label %123

123:                                              ; preds = %122, %108
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32 (i32*, i32*, i32*, i32*, i32*, i32*)*, i32 (i32*, i32*, i32*, i32*, i32*, i32*)** %125, align 8
  %127 = icmp ne i32 (i32*, i32*, i32*, i32*, i32*, i32*)* %126, null
  br i1 %127, label %128, label %157

128:                                              ; preds = %123
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %157

133:                                              ; preds = %128
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32 (i32*, i32*, i32*, i32*, i32*, i32*)*, i32 (i32*, i32*, i32*, i32*, i32*, i32*)** %135, align 8
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 5
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 4
  %148 = load i32*, i32** %147, align 8
  %149 = load i32*, i32** %11, align 8
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 %136(i32* %139, i32* %142, i32* %145, i32* %148, i32* %149, i32* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %133
  br label %210

156:                                              ; preds = %133
  br label %175

157:                                              ; preds = %128, %123
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 5
  %166 = load i32*, i32** %165, align 8
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 4
  %169 = load i32*, i32** %168, align 8
  %170 = load i32*, i32** %11, align 8
  %171 = call i32 @BN_mod_exp(i32* %160, i32* %163, i32* %166, i32* %169, i32* %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %157
  br label %210

174:                                              ; preds = %157
  br label %175

175:                                              ; preds = %174, %156
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = icmp ne i32* %178, null
  br i1 %179, label %180, label %208

180:                                              ; preds = %175
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 3
  %183 = load i32*, i32** %182, align 8
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 3
  %186 = load i32*, i32** %185, align 8
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = load i32*, i32** %11, align 8
  %191 = call i32 @bn_to_mont_fixed_top(i32* %183, i32* %186, i32* %189, i32* %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %206

193:                                              ; preds = %180
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 2
  %196 = load i32*, i32** %195, align 8
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 2
  %199 = load i32*, i32** %198, align 8
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = load i32*, i32** %11, align 8
  %204 = call i32 @bn_to_mont_fixed_top(i32* %196, i32* %199, i32* %202, i32* %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %207, label %206

206:                                              ; preds = %193, %180
  br label %210

207:                                              ; preds = %193
  br label %208

208:                                              ; preds = %207, %175
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  store %struct.TYPE_6__* %209, %struct.TYPE_6__** %7, align 8
  br label %218

210:                                              ; preds = %206, %173, %155, %117, %112, %94, %69, %51, %39, %27
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %212 = icmp eq %struct.TYPE_6__* %211, null
  br i1 %212, label %213, label %216

213:                                              ; preds = %210
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %215 = call i32 @BN_BLINDING_free(%struct.TYPE_6__* %214)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %15, align 8
  br label %216

216:                                              ; preds = %213, %210
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  store %struct.TYPE_6__* %217, %struct.TYPE_6__** %7, align 8
  br label %218

218:                                              ; preds = %216, %208
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  ret %struct.TYPE_6__* %219
}

declare dso_local %struct.TYPE_6__* @BN_BLINDING_new(i32*, i32*, i32*) #1

declare dso_local i8* @BN_new(...) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32* @BN_dup(i32*) #1

declare dso_local i32 @BN_priv_rand_range(i32*, i32*) #1

declare dso_local i64 @int_bn_mod_inverse(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BNerr(i32, i32) #1

declare dso_local i32 @BN_mod_exp(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @bn_to_mont_fixed_top(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_BLINDING_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
