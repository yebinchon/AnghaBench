; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_curve25519.c_X25519_public_from_private.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_curve25519.c_X25519_public_from_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @X25519_public_from_private(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [32 x i32], align 16
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @memcpy(i32* %10, i32* %11, i32 32)
  %13 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %14 = load i32, i32* %13, align 16
  %15 = and i32 %14, 248
  store i32 %15, i32* %13, align 16
  %16 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 31
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 127
  store i32 %18, i32* %16, align 4
  %19 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 31
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, 64
  store i32 %21, i32* %19, align 4
  %22 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %23 = call i32 @ge_scalarmult_base(%struct.TYPE_3__* %6, i32* %22)
  %24 = load i32, i32* %7, align 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @fe_add(i32 %24, i32 %26, i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @fe_sub(i32 %30, i32 %32, i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @fe_invert(i32 %36, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @fe_mul(i32 %39, i32 %40, i32 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @fe_tobytes(i32* %43, i32 %44)
  %46 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %47 = call i32 @OPENSSL_cleanse(i32* %46, i32 128)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ge_scalarmult_base(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @fe_add(i32, i32, i32) #1

declare dso_local i32 @fe_sub(i32, i32, i32) #1

declare dso_local i32 @fe_invert(i32, i32) #1

declare dso_local i32 @fe_mul(i32, i32, i32) #1

declare dso_local i32 @fe_tobytes(i32*, i32) #1

declare dso_local i32 @OPENSSL_cleanse(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
