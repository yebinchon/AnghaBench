; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_core/ed25519/ref10/extr_fe_25_5fe.h_fe25519_reduce.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_core/ed25519/ref10/extr_fe_25_5fe.h_fe25519_reduce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @fe25519_reduce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fe25519_reduce(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
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
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %5, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %6, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %7, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 3
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %8, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %9, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 5
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %10, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 6
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %11, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 7
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %12, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 8
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %13, align 4
  %53 = load i32*, i32** %4, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 9
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = mul nsw i32 19, %56
  %58 = add nsw i32 %57, 16777216
  %59 = ashr i32 %58, 25
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %15, align 4
  %62 = add nsw i32 %60, %61
  %63 = ashr i32 %62, 26
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %15, align 4
  %66 = add nsw i32 %64, %65
  %67 = ashr i32 %66, 25
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %15, align 4
  %70 = add nsw i32 %68, %69
  %71 = ashr i32 %70, 26
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %72, %73
  %75 = ashr i32 %74, 25
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %15, align 4
  %78 = add nsw i32 %76, %77
  %79 = ashr i32 %78, 26
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %80, %81
  %83 = ashr i32 %82, 25
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %15, align 4
  %86 = add nsw i32 %84, %85
  %87 = ashr i32 %86, 26
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %88, %89
  %91 = ashr i32 %90, 25
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %15, align 4
  %94 = add nsw i32 %92, %93
  %95 = ashr i32 %94, 26
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %15, align 4
  %98 = add nsw i32 %96, %97
  %99 = ashr i32 %98, 25
  store i32 %99, i32* %15, align 4
  %100 = load i32, i32* %15, align 4
  %101 = mul nsw i32 19, %100
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = ashr i32 %104, 26
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %16, align 4
  %110 = mul nsw i32 %109, 67108864
  %111 = load i32, i32* %5, align 4
  %112 = sub nsw i32 %111, %110
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %6, align 4
  %114 = ashr i32 %113, 25
  store i32 %114, i32* %17, align 4
  %115 = load i32, i32* %17, align 4
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %17, align 4
  %119 = mul nsw i32 %118, 33554432
  %120 = load i32, i32* %6, align 4
  %121 = sub nsw i32 %120, %119
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %7, align 4
  %123 = ashr i32 %122, 26
  store i32 %123, i32* %18, align 4
  %124 = load i32, i32* %18, align 4
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %18, align 4
  %128 = mul nsw i32 %127, 67108864
  %129 = load i32, i32* %7, align 4
  %130 = sub nsw i32 %129, %128
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %8, align 4
  %132 = ashr i32 %131, 25
  store i32 %132, i32* %19, align 4
  %133 = load i32, i32* %19, align 4
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %19, align 4
  %137 = mul nsw i32 %136, 33554432
  %138 = load i32, i32* %8, align 4
  %139 = sub nsw i32 %138, %137
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %9, align 4
  %141 = ashr i32 %140, 26
  store i32 %141, i32* %20, align 4
  %142 = load i32, i32* %20, align 4
  %143 = load i32, i32* %10, align 4
  %144 = add nsw i32 %143, %142
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %20, align 4
  %146 = mul nsw i32 %145, 67108864
  %147 = load i32, i32* %9, align 4
  %148 = sub nsw i32 %147, %146
  store i32 %148, i32* %9, align 4
  %149 = load i32, i32* %10, align 4
  %150 = ashr i32 %149, 25
  store i32 %150, i32* %21, align 4
  %151 = load i32, i32* %21, align 4
  %152 = load i32, i32* %11, align 4
  %153 = add nsw i32 %152, %151
  store i32 %153, i32* %11, align 4
  %154 = load i32, i32* %21, align 4
  %155 = mul nsw i32 %154, 33554432
  %156 = load i32, i32* %10, align 4
  %157 = sub nsw i32 %156, %155
  store i32 %157, i32* %10, align 4
  %158 = load i32, i32* %11, align 4
  %159 = ashr i32 %158, 26
  store i32 %159, i32* %22, align 4
  %160 = load i32, i32* %22, align 4
  %161 = load i32, i32* %12, align 4
  %162 = add nsw i32 %161, %160
  store i32 %162, i32* %12, align 4
  %163 = load i32, i32* %22, align 4
  %164 = mul nsw i32 %163, 67108864
  %165 = load i32, i32* %11, align 4
  %166 = sub nsw i32 %165, %164
  store i32 %166, i32* %11, align 4
  %167 = load i32, i32* %12, align 4
  %168 = ashr i32 %167, 25
  store i32 %168, i32* %23, align 4
  %169 = load i32, i32* %23, align 4
  %170 = load i32, i32* %13, align 4
  %171 = add nsw i32 %170, %169
  store i32 %171, i32* %13, align 4
  %172 = load i32, i32* %23, align 4
  %173 = mul nsw i32 %172, 33554432
  %174 = load i32, i32* %12, align 4
  %175 = sub nsw i32 %174, %173
  store i32 %175, i32* %12, align 4
  %176 = load i32, i32* %13, align 4
  %177 = ashr i32 %176, 26
  store i32 %177, i32* %24, align 4
  %178 = load i32, i32* %24, align 4
  %179 = load i32, i32* %14, align 4
  %180 = add nsw i32 %179, %178
  store i32 %180, i32* %14, align 4
  %181 = load i32, i32* %24, align 4
  %182 = mul nsw i32 %181, 67108864
  %183 = load i32, i32* %13, align 4
  %184 = sub nsw i32 %183, %182
  store i32 %184, i32* %13, align 4
  %185 = load i32, i32* %14, align 4
  %186 = ashr i32 %185, 25
  store i32 %186, i32* %25, align 4
  %187 = load i32, i32* %25, align 4
  %188 = mul nsw i32 %187, 33554432
  %189 = load i32, i32* %14, align 4
  %190 = sub nsw i32 %189, %188
  store i32 %190, i32* %14, align 4
  %191 = load i32, i32* %5, align 4
  %192 = load i32*, i32** %3, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  store i32 %191, i32* %193, align 4
  %194 = load i32, i32* %6, align 4
  %195 = load i32*, i32** %3, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 1
  store i32 %194, i32* %196, align 4
  %197 = load i32, i32* %7, align 4
  %198 = load i32*, i32** %3, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 2
  store i32 %197, i32* %199, align 4
  %200 = load i32, i32* %8, align 4
  %201 = load i32*, i32** %3, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 3
  store i32 %200, i32* %202, align 4
  %203 = load i32, i32* %9, align 4
  %204 = load i32*, i32** %3, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 4
  store i32 %203, i32* %205, align 4
  %206 = load i32, i32* %10, align 4
  %207 = load i32*, i32** %3, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 5
  store i32 %206, i32* %208, align 4
  %209 = load i32, i32* %11, align 4
  %210 = load i32*, i32** %3, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 6
  store i32 %209, i32* %211, align 4
  %212 = load i32, i32* %12, align 4
  %213 = load i32*, i32** %3, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 7
  store i32 %212, i32* %214, align 4
  %215 = load i32, i32* %13, align 4
  %216 = load i32*, i32** %3, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 8
  store i32 %215, i32* %217, align 4
  %218 = load i32, i32* %14, align 4
  %219 = load i32*, i32** %3, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 9
  store i32 %218, i32* %220, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
