; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_scalarmult/ed25519/ref10/extr_scalarmult_ed25519_ref10.c_crypto_scalarmult_ed25519.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_scalarmult/ed25519/ref10/extr_scalarmult_ed25519_ref10.c_crypto_scalarmult_ed25519.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_scalarmult_ed25519(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i64 @ge25519_is_canonical(i8* %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %3
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @ge25519_has_small_order(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = load i8*, i8** %7, align 8
  %22 = call i64 @ge25519_frombytes(i32* %10, i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = call i64 @ge25519_is_on_main_subgroup(i32* %10)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %20, %16, %3
  store i32 -1, i32* %4, align 4
  br label %61

28:                                               ; preds = %24
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %42, %28
  %30 = load i32, i32* %11, align 4
  %31 = icmp ult i32 %30, 32
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %11, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* %11, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8 %37, i8* %41, align 1
  br label %42

42:                                               ; preds = %32
  %43 = load i32, i32* %11, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %11, align 4
  br label %29

45:                                               ; preds = %29
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @_crypto_scalarmult_ed25519_clamp(i8* %46)
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @ge25519_scalarmult(i32* %9, i8* %48, i32* %10)
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @ge25519_p3_tobytes(i8* %50, i32* %9)
  %52 = load i8*, i8** %5, align 8
  %53 = call i64 @_crypto_scalarmult_ed25519_is_inf(i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %45
  %56 = load i8*, i8** %6, align 8
  %57 = call i64 @sodium_is_zero(i8* %56, i32 32)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55, %45
  store i32 -1, i32* %4, align 4
  br label %61

60:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %59, %27
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i64 @ge25519_is_canonical(i8*) #1

declare dso_local i64 @ge25519_has_small_order(i8*) #1

declare dso_local i64 @ge25519_frombytes(i32*, i8*) #1

declare dso_local i64 @ge25519_is_on_main_subgroup(i32*) #1

declare dso_local i32 @_crypto_scalarmult_ed25519_clamp(i8*) #1

declare dso_local i32 @ge25519_scalarmult(i32*, i8*, i32*) #1

declare dso_local i32 @ge25519_p3_tobytes(i8*, i32*) #1

declare dso_local i64 @_crypto_scalarmult_ed25519_is_inf(i8*) #1

declare dso_local i64 @sodium_is_zero(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
