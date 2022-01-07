; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ed25519.c_crypto_sign_ed25519_keypair.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ed25519.c_crypto_sign_ed25519_keypair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_sign_ed25519_keypair(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [64 x i8], align 16
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @randombytes(i8* %9, i32 32)
  %11 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @crypto_hash_sha512(i8* %11, i8* %12, i32 32)
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %15 = load i8, i8* %14, align 16
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 248
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %14, align 16
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 31
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 127
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %19, align 1
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 31
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = or i32 %26, 64
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %24, align 1
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %30 = call i32 @sc25519_from32bytes(i32* %5, i8* %29)
  %31 = call i32 @ge25519_scalarmult_base(i32* %6, i32* %5)
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @ge25519_pack(i8* %32, i32* %6)
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %48, %2
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 32
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = load i8*, i8** %3, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 32, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  store i8 %42, i8* %47, align 1
  br label %48

48:                                               ; preds = %37
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %34

51:                                               ; preds = %34
  ret i32 0
}

declare dso_local i32 @randombytes(i8*, i32) #1

declare dso_local i32 @crypto_hash_sha512(i8*, i8*, i32) #1

declare dso_local i32 @sc25519_from32bytes(i32*, i8*) #1

declare dso_local i32 @ge25519_scalarmult_base(i32*, i32*) #1

declare dso_local i32 @ge25519_pack(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
