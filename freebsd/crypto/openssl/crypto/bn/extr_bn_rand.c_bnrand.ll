; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_rand.c_bnrand.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_rand.c_bnrand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BN_RAND_TOP_ANY = common dso_local global i32 0, align 4
@BN_RAND_BOTTOM_ANY = common dso_local global i32 0, align 4
@BN_F_BNRAND = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@NORMAL = common dso_local global i64 0, align 8
@TESTING = common dso_local global i64 0, align 8
@BN_R_BITS_TOO_SMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32*, i32, i32, i32)* @bnrand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnrand(i64 %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  store i64 %0, i64* %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* null, i8** %12, align 8
  store i32 0, i32* %14, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %5
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @BN_RAND_TOP_ANY, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @BN_RAND_BOTTOM_ANY, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %22
  br label %211

31:                                               ; preds = %26
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @BN_zero(i32* %32)
  store i32 1, i32* %6, align 4
  br label %215

34:                                               ; preds = %5
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* %10, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %34
  br label %211

44:                                               ; preds = %40, %37
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 7
  %47 = sdiv i32 %46, 8
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %9, align 4
  %49 = sub nsw i32 %48, 1
  %50 = srem i32 %49, 8
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = add nsw i32 %51, 1
  %53 = shl i32 255, %52
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* %16, align 4
  %55 = call i8* @OPENSSL_malloc(i32 %54)
  store i8* %55, i8** %12, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %44
  %59 = load i32, i32* @BN_F_BNRAND, align 4
  %60 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %61 = call i32 @BNerr(i32 %59, i32 %60)
  br label %204

62:                                               ; preds = %44
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @NORMAL, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i8*, i8** %12, align 8
  %68 = load i32, i32* %16, align 4
  %69 = call i64 @RAND_bytes(i8* %67, i32 %68)
  br label %74

70:                                               ; preds = %62
  %71 = load i8*, i8** %12, align 8
  %72 = load i32, i32* %16, align 4
  %73 = call i64 @RAND_priv_bytes(i8* %71, i32 %72)
  br label %74

74:                                               ; preds = %70, %66
  %75 = phi i64 [ %69, %66 ], [ %73, %70 ]
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp sle i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %204

80:                                               ; preds = %74
  %81 = load i64, i64* %7, align 8
  %82 = load i64, i64* @TESTING, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %136

84:                                               ; preds = %80
  store i32 0, i32* %18, align 4
  br label %85

85:                                               ; preds = %132, %84
  %86 = load i32, i32* %18, align 4
  %87 = load i32, i32* %16, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %135

89:                                               ; preds = %85
  %90 = call i64 @RAND_bytes(i8* %19, i32 1)
  %91 = icmp sle i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  br label %204

93:                                               ; preds = %89
  %94 = load i8, i8* %19, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp sge i32 %95, 128
  br i1 %96, label %97, label %111

97:                                               ; preds = %93
  %98 = load i32, i32* %18, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %97
  %101 = load i8*, i8** %12, align 8
  %102 = load i32, i32* %18, align 4
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %101, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = load i8*, i8** %12, align 8
  %108 = load i32, i32* %18, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  store i8 %106, i8* %110, align 1
  br label %131

111:                                              ; preds = %97, %93
  %112 = load i8, i8* %19, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp slt i32 %113, 42
  br i1 %114, label %115, label %120

115:                                              ; preds = %111
  %116 = load i8*, i8** %12, align 8
  %117 = load i32, i32* %18, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  store i8 0, i8* %119, align 1
  br label %130

120:                                              ; preds = %111
  %121 = load i8, i8* %19, align 1
  %122 = zext i8 %121 to i32
  %123 = icmp slt i32 %122, 84
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = load i8*, i8** %12, align 8
  %126 = load i32, i32* %18, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  store i8 -1, i8* %128, align 1
  br label %129

129:                                              ; preds = %124, %120
  br label %130

130:                                              ; preds = %129, %115
  br label %131

131:                                              ; preds = %130, %100
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %18, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %18, align 4
  br label %85

135:                                              ; preds = %85
  br label %136

136:                                              ; preds = %135, %80
  %137 = load i32, i32* %10, align 4
  %138 = icmp sge i32 %137, 0
  br i1 %138, label %139, label %175

139:                                              ; preds = %136
  %140 = load i32, i32* %10, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %165

142:                                              ; preds = %139
  %143 = load i32, i32* %15, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %142
  %146 = load i8*, i8** %12, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 0
  store i8 1, i8* %147, align 1
  %148 = load i8*, i8** %12, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 1
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = or i32 %151, 128
  %153 = trunc i32 %152 to i8
  store i8 %153, i8* %149, align 1
  br label %164

154:                                              ; preds = %142
  %155 = load i32, i32* %15, align 4
  %156 = sub nsw i32 %155, 1
  %157 = shl i32 3, %156
  %158 = load i8*, i8** %12, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 0
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = or i32 %161, %157
  %163 = trunc i32 %162 to i8
  store i8 %163, i8* %159, align 1
  br label %164

164:                                              ; preds = %154, %145
  br label %174

165:                                              ; preds = %139
  %166 = load i32, i32* %15, align 4
  %167 = shl i32 1, %166
  %168 = load i8*, i8** %12, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 0
  %170 = load i8, i8* %169, align 1
  %171 = zext i8 %170 to i32
  %172 = or i32 %171, %167
  %173 = trunc i32 %172 to i8
  store i8 %173, i8* %169, align 1
  br label %174

174:                                              ; preds = %165, %164
  br label %175

175:                                              ; preds = %174, %136
  %176 = load i32, i32* %17, align 4
  %177 = xor i32 %176, -1
  %178 = load i8*, i8** %12, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 0
  %180 = load i8, i8* %179, align 1
  %181 = zext i8 %180 to i32
  %182 = and i32 %181, %177
  %183 = trunc i32 %182 to i8
  store i8 %183, i8* %179, align 1
  %184 = load i32, i32* %11, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %196

186:                                              ; preds = %175
  %187 = load i8*, i8** %12, align 8
  %188 = load i32, i32* %16, align 4
  %189 = sub nsw i32 %188, 1
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %187, i64 %190
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i32
  %194 = or i32 %193, 1
  %195 = trunc i32 %194 to i8
  store i8 %195, i8* %191, align 1
  br label %196

196:                                              ; preds = %186, %175
  %197 = load i8*, i8** %12, align 8
  %198 = load i32, i32* %16, align 4
  %199 = load i32*, i32** %8, align 8
  %200 = call i32 @BN_bin2bn(i8* %197, i32 %198, i32* %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %196
  br label %204

203:                                              ; preds = %196
  store i32 1, i32* %14, align 4
  br label %204

204:                                              ; preds = %203, %202, %92, %79, %58
  %205 = load i8*, i8** %12, align 8
  %206 = load i32, i32* %16, align 4
  %207 = call i32 @OPENSSL_clear_free(i8* %205, i32 %206)
  %208 = load i32*, i32** %8, align 8
  %209 = call i32 @bn_check_top(i32* %208)
  %210 = load i32, i32* %14, align 4
  store i32 %210, i32* %6, align 4
  br label %215

211:                                              ; preds = %43, %30
  %212 = load i32, i32* @BN_F_BNRAND, align 4
  %213 = load i32, i32* @BN_R_BITS_TOO_SMALL, align 4
  %214 = call i32 @BNerr(i32 %212, i32 %213)
  store i32 0, i32* %6, align 4
  br label %215

215:                                              ; preds = %211, %204, %31
  %216 = load i32, i32* %6, align 4
  ret i32 %216
}

declare dso_local i32 @BN_zero(i32*) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @BNerr(i32, i32) #1

declare dso_local i64 @RAND_bytes(i8*, i32) #1

declare dso_local i64 @RAND_priv_bytes(i8*, i32) #1

declare dso_local i32 @BN_bin2bn(i8*, i32, i32*) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i32) #1

declare dso_local i32 @bn_check_top(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
