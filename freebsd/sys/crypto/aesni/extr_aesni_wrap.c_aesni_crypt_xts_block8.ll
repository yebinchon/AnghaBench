; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/aesni/extr_aesni_wrap.c_aesni_crypt_xts_block8.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/aesni/extr_aesni_wrap.c_aesni_crypt_xts_block8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32*, i32*, i32)* @aesni_crypt_xts_block8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aesni_crypt_xts_block8(i32 %0, i32* %1, i32* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [8 x i32], align 16
  %23 = alloca [8 x i32], align 16
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  %28 = load i32*, i32** %10, align 8
  store i32* %28, i32** %25, align 8
  br label %29

29:                                               ; preds = %6
  %30 = load i32, i32* %13, align 4
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 0
  store i32 %30, i32* %31, align 16
  %32 = load i32*, i32** %25, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = call i32 (i32*, ...) bitcast (i32 (...)* @_mm_loadu_si128 to i32 (i32*, ...)*)(i32* %33)
  %35 = load i32, i32* %13, align 4
  %36 = xor i32 %34, %35
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %13, align 4
  %38 = call i32 (i32, ...) bitcast (i32 (...)* @xts_crank_lfsr to i32 (i32, ...)*)(i32 %37)
  store i32 %38, i32* %13, align 4
  br label %39

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %13, align 4
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 1
  store i32 %41, i32* %42, align 4
  %43 = load i32*, i32** %25, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = call i32 (i32*, ...) bitcast (i32 (...)* @_mm_loadu_si128 to i32 (i32*, ...)*)(i32* %44)
  %46 = load i32, i32* %13, align 4
  %47 = xor i32 %45, %46
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call i32 (i32, ...) bitcast (i32 (...)* @xts_crank_lfsr to i32 (i32, ...)*)(i32 %48)
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %13, align 4
  %53 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 2
  store i32 %52, i32* %53, align 8
  %54 = load i32*, i32** %25, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = call i32 (i32*, ...) bitcast (i32 (...)* @_mm_loadu_si128 to i32 (i32*, ...)*)(i32* %55)
  %57 = load i32, i32* %13, align 4
  %58 = xor i32 %56, %57
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 (i32, ...) bitcast (i32 (...)* @xts_crank_lfsr to i32 (i32, ...)*)(i32 %59)
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %13, align 4
  %64 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 3
  store i32 %63, i32* %64, align 4
  %65 = load i32*, i32** %25, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 3
  %67 = call i32 (i32*, ...) bitcast (i32 (...)* @_mm_loadu_si128 to i32 (i32*, ...)*)(i32* %66)
  %68 = load i32, i32* %13, align 4
  %69 = xor i32 %67, %68
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %13, align 4
  %71 = call i32 (i32, ...) bitcast (i32 (...)* @xts_crank_lfsr to i32 (i32, ...)*)(i32 %70)
  store i32 %71, i32* %13, align 4
  br label %72

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %13, align 4
  %75 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 4
  store i32 %74, i32* %75, align 16
  %76 = load i32*, i32** %25, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 4
  %78 = call i32 (i32*, ...) bitcast (i32 (...)* @_mm_loadu_si128 to i32 (i32*, ...)*)(i32* %77)
  %79 = load i32, i32* %13, align 4
  %80 = xor i32 %78, %79
  store i32 %80, i32* %18, align 4
  %81 = load i32, i32* %13, align 4
  %82 = call i32 (i32, ...) bitcast (i32 (...)* @xts_crank_lfsr to i32 (i32, ...)*)(i32 %81)
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %73
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %13, align 4
  %86 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 5
  store i32 %85, i32* %86, align 4
  %87 = load i32*, i32** %25, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 5
  %89 = call i32 (i32*, ...) bitcast (i32 (...)* @_mm_loadu_si128 to i32 (i32*, ...)*)(i32* %88)
  %90 = load i32, i32* %13, align 4
  %91 = xor i32 %89, %90
  store i32 %91, i32* %19, align 4
  %92 = load i32, i32* %13, align 4
  %93 = call i32 (i32, ...) bitcast (i32 (...)* @xts_crank_lfsr to i32 (i32, ...)*)(i32 %92)
  store i32 %93, i32* %13, align 4
  br label %94

94:                                               ; preds = %84
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %13, align 4
  %97 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 6
  store i32 %96, i32* %97, align 8
  %98 = load i32*, i32** %25, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 6
  %100 = call i32 (i32*, ...) bitcast (i32 (...)* @_mm_loadu_si128 to i32 (i32*, ...)*)(i32* %99)
  %101 = load i32, i32* %13, align 4
  %102 = xor i32 %100, %101
  store i32 %102, i32* %20, align 4
  %103 = load i32, i32* %13, align 4
  %104 = call i32 (i32, ...) bitcast (i32 (...)* @xts_crank_lfsr to i32 (i32, ...)*)(i32 %103)
  store i32 %104, i32* %13, align 4
  br label %105

105:                                              ; preds = %95
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %13, align 4
  %108 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 7
  store i32 %107, i32* %108, align 4
  %109 = load i32*, i32** %25, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 7
  %111 = call i32 (i32*, ...) bitcast (i32 (...)* @_mm_loadu_si128 to i32 (i32*, ...)*)(i32* %110)
  %112 = load i32, i32* %13, align 4
  %113 = xor i32 %111, %112
  store i32 %113, i32* %21, align 4
  %114 = load i32, i32* %13, align 4
  %115 = call i32 (i32, ...) bitcast (i32 (...)* @xts_crank_lfsr to i32 (i32, ...)*)(i32 %114)
  store i32 %115, i32* %13, align 4
  br label %116

116:                                              ; preds = %106
  %117 = load i32, i32* %13, align 4
  %118 = load i32*, i32** %9, align 8
  store i32 %117, i32* %118, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %116
  %122 = load i32, i32* %7, align 4
  %123 = sub nsw i32 %122, 1
  %124 = load i32*, i32** %8, align 8
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* %17, align 4
  %129 = load i32, i32* %18, align 4
  %130 = load i32, i32* %19, align 4
  %131 = load i32, i32* %20, align 4
  %132 = load i32, i32* %21, align 4
  %133 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0
  %134 = call i32 @aesni_enc8(i32 %123, i32* %124, i32 %125, i32 %126, i32 %127, i32 %128, i32 %129, i32 %130, i32 %131, i32 %132, i32* %133)
  br label %149

135:                                              ; preds = %116
  %136 = load i32, i32* %7, align 4
  %137 = sub nsw i32 %136, 1
  %138 = load i32*, i32** %8, align 8
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* %15, align 4
  %141 = load i32, i32* %16, align 4
  %142 = load i32, i32* %17, align 4
  %143 = load i32, i32* %18, align 4
  %144 = load i32, i32* %19, align 4
  %145 = load i32, i32* %20, align 4
  %146 = load i32, i32* %21, align 4
  %147 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0
  %148 = call i32 @aesni_dec8(i32 %137, i32* %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 %144, i32 %145, i32 %146, i32* %147)
  br label %149

149:                                              ; preds = %135, %121
  %150 = load i32*, i32** %11, align 8
  store i32* %150, i32** %24, align 8
  %151 = load i32*, i32** %24, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  %153 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0
  %154 = load i32, i32* %153, align 16
  %155 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 0
  %156 = load i32, i32* %155, align 16
  %157 = xor i32 %154, %156
  %158 = call i32 @_mm_storeu_si128(i32* %152, i32 %157)
  %159 = load i32*, i32** %24, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  %161 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 1
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = xor i32 %162, %164
  %166 = call i32 @_mm_storeu_si128(i32* %160, i32 %165)
  %167 = load i32*, i32** %24, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 2
  %169 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 2
  %170 = load i32, i32* %169, align 8
  %171 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 2
  %172 = load i32, i32* %171, align 8
  %173 = xor i32 %170, %172
  %174 = call i32 @_mm_storeu_si128(i32* %168, i32 %173)
  %175 = load i32*, i32** %24, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 3
  %177 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 3
  %178 = load i32, i32* %177, align 4
  %179 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 3
  %180 = load i32, i32* %179, align 4
  %181 = xor i32 %178, %180
  %182 = call i32 @_mm_storeu_si128(i32* %176, i32 %181)
  %183 = load i32*, i32** %24, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 4
  %185 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 4
  %186 = load i32, i32* %185, align 16
  %187 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 4
  %188 = load i32, i32* %187, align 16
  %189 = xor i32 %186, %188
  %190 = call i32 @_mm_storeu_si128(i32* %184, i32 %189)
  %191 = load i32*, i32** %24, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 5
  %193 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 5
  %194 = load i32, i32* %193, align 4
  %195 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 5
  %196 = load i32, i32* %195, align 4
  %197 = xor i32 %194, %196
  %198 = call i32 @_mm_storeu_si128(i32* %192, i32 %197)
  %199 = load i32*, i32** %24, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 6
  %201 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 6
  %202 = load i32, i32* %201, align 8
  %203 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 6
  %204 = load i32, i32* %203, align 8
  %205 = xor i32 %202, %204
  %206 = call i32 @_mm_storeu_si128(i32* %200, i32 %205)
  %207 = load i32*, i32** %24, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 7
  %209 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 7
  %210 = load i32, i32* %209, align 4
  %211 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 7
  %212 = load i32, i32* %211, align 4
  %213 = xor i32 %210, %212
  %214 = call i32 @_mm_storeu_si128(i32* %208, i32 %213)
  ret void
}

declare dso_local i32 @_mm_loadu_si128(...) #1

declare dso_local i32 @xts_crank_lfsr(...) #1

declare dso_local i32 @aesni_enc8(i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @aesni_dec8(i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @_mm_storeu_si128(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
