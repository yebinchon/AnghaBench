; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_scalarmult/curve25519/ref10/extr_x25519_ref10.c_crypto_scalarmult_curve25519_ref10.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_scalarmult/curve25519/ref10/extr_x25519_ref10.c_crypto_scalarmult_curve25519_ref10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @crypto_scalarmult_curve25519_ref10 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_scalarmult_curve25519_ref10(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
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
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %20 = load i8*, i8** %5, align 8
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i64 @has_small_order(i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %190

25:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %39, %25
  %27 = load i32, i32* %9, align 4
  %28 = icmp ult i32 %27, 32
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  store i8 %34, i8* %38, align 1
  br label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %9, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %26

42:                                               ; preds = %26
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 248
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %44, align 1
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 31
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = and i32 %52, 127
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %50, align 1
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 31
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = or i32 %58, 64
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %56, align 1
  %61 = load i32, i32* %10, align 4
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @fe25519_frombytes(i32 %61, i8* %62)
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @fe25519_1(i32 %64)
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @fe25519_0(i32 %66)
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @fe25519_copy(i32 %68, i32 %69)
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @fe25519_1(i32 %71)
  store i32 0, i32* %18, align 4
  store i32 254, i32* %17, align 4
  br label %73

73:                                               ; preds = %168, %42
  %74 = load i32, i32* %17, align 4
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %171

76:                                               ; preds = %73
  %77 = load i8*, i8** %8, align 8
  %78 = load i32, i32* %17, align 4
  %79 = sdiv i32 %78, 8
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %77, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = load i32, i32* %17, align 4
  %85 = and i32 %84, 7
  %86 = ashr i32 %83, %85
  store i32 %86, i32* %19, align 4
  %87 = load i32, i32* %19, align 4
  %88 = and i32 %87, 1
  store i32 %88, i32* %19, align 4
  %89 = load i32, i32* %19, align 4
  %90 = load i32, i32* %18, align 4
  %91 = xor i32 %90, %89
  store i32 %91, i32* %18, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %18, align 4
  %95 = call i32 @fe25519_cswap(i32 %92, i32 %93, i32 %94)
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %18, align 4
  %99 = call i32 @fe25519_cswap(i32 %96, i32 %97, i32 %98)
  %100 = load i32, i32* %19, align 4
  store i32 %100, i32* %18, align 4
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %14, align 4
  %104 = call i32 @fe25519_sub(i32 %101, i32 %102, i32 %103)
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %12, align 4
  %108 = call i32 @fe25519_sub(i32 %105, i32 %106, i32 %107)
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @fe25519_add(i32 %109, i32 %110, i32 %111)
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %14, align 4
  %116 = call i32 @fe25519_add(i32 %113, i32 %114, i32 %115)
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @fe25519_mul(i32 %117, i32 %118, i32 %119)
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %16, align 4
  %124 = call i32 @fe25519_mul(i32 %121, i32 %122, i32 %123)
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* %16, align 4
  %127 = call i32 @fe25519_sq(i32 %125, i32 %126)
  %128 = load i32, i32* %16, align 4
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @fe25519_sq(i32 %128, i32 %129)
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* %12, align 4
  %134 = call i32 @fe25519_add(i32 %131, i32 %132, i32 %133)
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* %12, align 4
  %138 = call i32 @fe25519_sub(i32 %135, i32 %136, i32 %137)
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* %16, align 4
  %141 = load i32, i32* %15, align 4
  %142 = call i32 @fe25519_mul(i32 %139, i32 %140, i32 %141)
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* %16, align 4
  %145 = load i32, i32* %15, align 4
  %146 = call i32 @fe25519_sub(i32 %143, i32 %144, i32 %145)
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* %12, align 4
  %149 = call i32 @fe25519_sq(i32 %147, i32 %148)
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* %16, align 4
  %152 = call i32 @fe25519_scalar_product(i32 %150, i32 %151, i32 121666)
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* %13, align 4
  %155 = call i32 @fe25519_sq(i32 %153, i32 %154)
  %156 = load i32, i32* %15, align 4
  %157 = load i32, i32* %15, align 4
  %158 = load i32, i32* %14, align 4
  %159 = call i32 @fe25519_add(i32 %156, i32 %157, i32 %158)
  %160 = load i32, i32* %14, align 4
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* %12, align 4
  %163 = call i32 @fe25519_mul(i32 %160, i32 %161, i32 %162)
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* %16, align 4
  %166 = load i32, i32* %15, align 4
  %167 = call i32 @fe25519_mul(i32 %164, i32 %165, i32 %166)
  br label %168

168:                                              ; preds = %76
  %169 = load i32, i32* %17, align 4
  %170 = add nsw i32 %169, -1
  store i32 %170, i32* %17, align 4
  br label %73

171:                                              ; preds = %73
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* %13, align 4
  %174 = load i32, i32* %18, align 4
  %175 = call i32 @fe25519_cswap(i32 %172, i32 %173, i32 %174)
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* %14, align 4
  %178 = load i32, i32* %18, align 4
  %179 = call i32 @fe25519_cswap(i32 %176, i32 %177, i32 %178)
  %180 = load i32, i32* %12, align 4
  %181 = load i32, i32* %12, align 4
  %182 = call i32 @fe25519_invert(i32 %180, i32 %181)
  %183 = load i32, i32* %11, align 4
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* %12, align 4
  %186 = call i32 @fe25519_mul(i32 %183, i32 %184, i32 %185)
  %187 = load i8*, i8** %5, align 8
  %188 = load i32, i32* %11, align 4
  %189 = call i32 @fe25519_tobytes(i8* %187, i32 %188)
  store i32 0, i32* %4, align 4
  br label %190

190:                                              ; preds = %171, %24
  %191 = load i32, i32* %4, align 4
  ret i32 %191
}

declare dso_local i64 @has_small_order(i8*) #1

declare dso_local i32 @fe25519_frombytes(i32, i8*) #1

declare dso_local i32 @fe25519_1(i32) #1

declare dso_local i32 @fe25519_0(i32) #1

declare dso_local i32 @fe25519_copy(i32, i32) #1

declare dso_local i32 @fe25519_cswap(i32, i32, i32) #1

declare dso_local i32 @fe25519_sub(i32, i32, i32) #1

declare dso_local i32 @fe25519_add(i32, i32, i32) #1

declare dso_local i32 @fe25519_mul(i32, i32, i32) #1

declare dso_local i32 @fe25519_sq(i32, i32) #1

declare dso_local i32 @fe25519_scalar_product(i32, i32, i32) #1

declare dso_local i32 @fe25519_invert(i32, i32) #1

declare dso_local i32 @fe25519_tobytes(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
