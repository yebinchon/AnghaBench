; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_curve25519.c_fe51_mul.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_curve25519.c_fe51_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MASK51 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @fe51_mul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fe51_mul(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %13, align 4
  %25 = mul nsw i32 %21, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %14, align 4
  %30 = mul nsw i32 %26, %29
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %15, align 4
  %35 = mul nsw i32 %31, %34
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 3
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %16, align 4
  %40 = mul nsw i32 %36, %39
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %17, align 4
  %45 = mul nsw i32 %41, %44
  store i32 %45, i32* %11, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %17, align 4
  %51 = mul nsw i32 %50, 19
  store i32 %51, i32* %17, align 4
  %52 = mul nsw i32 %49, %51
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %13, align 4
  %57 = mul nsw i32 %55, %56
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %14, align 4
  %62 = mul nsw i32 %60, %61
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %15, align 4
  %67 = mul nsw i32 %65, %66
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %16, align 4
  %72 = mul nsw i32 %70, %71
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %11, align 4
  %75 = load i32*, i32** %5, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %16, align 4
  %80 = mul nsw i32 %79, 19
  store i32 %80, i32* %16, align 4
  %81 = mul nsw i32 %78, %80
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %17, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %13, align 4
  %91 = mul nsw i32 %89, %90
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %14, align 4
  %96 = mul nsw i32 %94, %95
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, %96
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %15, align 4
  %101 = mul nsw i32 %99, %100
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %11, align 4
  %104 = load i32*, i32** %5, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 3
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %15, align 4
  %109 = mul nsw i32 %108, 19
  store i32 %109, i32* %15, align 4
  %110 = mul nsw i32 %107, %109
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %16, align 4
  %115 = mul nsw i32 %113, %114
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %17, align 4
  %120 = mul nsw i32 %118, %119
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %13, align 4
  %125 = mul nsw i32 %123, %124
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %14, align 4
  %130 = mul nsw i32 %128, %129
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %11, align 4
  %133 = load i32*, i32** %5, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 4
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %14, align 4
  %138 = mul nsw i32 %137, 19
  store i32 %138, i32* %14, align 4
  %139 = mul nsw i32 %136, %138
  %140 = load i32, i32* %7, align 4
  %141 = add nsw i32 %140, %139
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* %15, align 4
  %144 = mul nsw i32 %142, %143
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* %16, align 4
  %149 = mul nsw i32 %147, %148
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, %149
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* %17, align 4
  %154 = mul nsw i32 %152, %153
  %155 = load i32, i32* %10, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %10, align 4
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* %13, align 4
  %159 = mul nsw i32 %157, %158
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 %160, %159
  store i32 %161, i32* %11, align 4
  %162 = load i32, i32* %9, align 4
  %163 = ashr i32 %162, 51
  %164 = load i32, i32* %10, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, i32* %10, align 4
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* @MASK51, align 4
  %168 = and i32 %166, %167
  store i32 %168, i32* %15, align 4
  %169 = load i32, i32* %7, align 4
  %170 = ashr i32 %169, 51
  %171 = load i32, i32* %8, align 4
  %172 = add nsw i32 %171, %170
  store i32 %172, i32* %8, align 4
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* @MASK51, align 4
  %175 = and i32 %173, %174
  store i32 %175, i32* %13, align 4
  %176 = load i32, i32* %10, align 4
  %177 = ashr i32 %176, 51
  %178 = load i32, i32* %11, align 4
  %179 = add nsw i32 %178, %177
  store i32 %179, i32* %11, align 4
  %180 = load i32, i32* %10, align 4
  %181 = load i32, i32* @MASK51, align 4
  %182 = and i32 %180, %181
  store i32 %182, i32* %16, align 4
  %183 = load i32, i32* %8, align 4
  %184 = ashr i32 %183, 51
  %185 = load i32, i32* %15, align 4
  %186 = add nsw i32 %185, %184
  store i32 %186, i32* %15, align 4
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* @MASK51, align 4
  %189 = and i32 %187, %188
  store i32 %189, i32* %14, align 4
  %190 = load i32, i32* %11, align 4
  %191 = ashr i32 %190, 51
  %192 = mul nsw i32 %191, 19
  %193 = load i32, i32* %13, align 4
  %194 = add nsw i32 %193, %192
  store i32 %194, i32* %13, align 4
  %195 = load i32, i32* %11, align 4
  %196 = load i32, i32* @MASK51, align 4
  %197 = and i32 %195, %196
  store i32 %197, i32* %17, align 4
  %198 = load i32, i32* %15, align 4
  %199 = ashr i32 %198, 51
  %200 = load i32, i32* %16, align 4
  %201 = add nsw i32 %200, %199
  store i32 %201, i32* %16, align 4
  %202 = load i32, i32* @MASK51, align 4
  %203 = load i32, i32* %15, align 4
  %204 = and i32 %203, %202
  store i32 %204, i32* %15, align 4
  %205 = load i32, i32* %13, align 4
  %206 = ashr i32 %205, 51
  %207 = load i32, i32* %14, align 4
  %208 = add nsw i32 %207, %206
  store i32 %208, i32* %14, align 4
  %209 = load i32, i32* @MASK51, align 4
  %210 = load i32, i32* %13, align 4
  %211 = and i32 %210, %209
  store i32 %211, i32* %13, align 4
  %212 = load i32, i32* %13, align 4
  %213 = load i32*, i32** %4, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 0
  store i32 %212, i32* %214, align 4
  %215 = load i32, i32* %14, align 4
  %216 = load i32*, i32** %4, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 1
  store i32 %215, i32* %217, align 4
  %218 = load i32, i32* %15, align 4
  %219 = load i32*, i32** %4, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 2
  store i32 %218, i32* %220, align 4
  %221 = load i32, i32* %16, align 4
  %222 = load i32*, i32** %4, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 3
  store i32 %221, i32* %223, align 4
  %224 = load i32, i32* %17, align 4
  %225 = load i32*, i32** %4, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 4
  store i32 %224, i32* %226, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
