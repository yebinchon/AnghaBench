; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_curve25519.c_ED25519_public_from_private.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_curve25519.c_ED25519_public_from_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA512_DIGEST_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ED25519_public_from_private(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32, i32* @SHA512_DIGEST_LENGTH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @SHA512(i32* %12, i32 32, i32* %11)
  %14 = getelementptr inbounds i32, i32* %11, i64 0
  %15 = load i32, i32* %14, align 16
  %16 = and i32 %15, 248
  store i32 %16, i32* %14, align 16
  %17 = getelementptr inbounds i32, i32* %11, i64 31
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 63
  store i32 %19, i32* %17, align 4
  %20 = getelementptr inbounds i32, i32* %11, i64 31
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, 64
  store i32 %22, i32* %20, align 4
  %23 = call i32 @ge_scalarmult_base(i32* %7, i32* %11)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @ge_p3_tobytes(i32* %24, i32* %7)
  %26 = mul nuw i64 4, %9
  %27 = trunc i64 %26 to i32
  %28 = call i32 @OPENSSL_cleanse(i32* %11, i32 %27)
  %29 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %29)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SHA512(i32*, i32, i32*) #2

declare dso_local i32 @ge_scalarmult_base(i32*, i32*) #2

declare dso_local i32 @ge_p3_tobytes(i32*, i32*) #2

declare dso_local i32 @OPENSSL_cleanse(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
