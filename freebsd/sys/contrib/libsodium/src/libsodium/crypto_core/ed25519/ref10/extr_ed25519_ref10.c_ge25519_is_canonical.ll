; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_core/ed25519/ref10/extr_ed25519_ref10.c_ge25519_is_canonical.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_core/ed25519/ref10/extr_ed25519_ref10.c_ge25519_is_canonical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ge25519_is_canonical(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 31
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i32
  %10 = and i32 %9, 127
  %11 = xor i32 %10, 127
  %12 = trunc i32 %11 to i8
  store i8 %12, i8* %3, align 1
  store i32 30, i32* %5, align 4
  br label %13

13:                                               ; preds = %28, %1
  %14 = load i32, i32* %5, align 4
  %15 = icmp ugt i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %13
  %17 = load i8*, i8** %2, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = xor i32 %22, 255
  %24 = load i8, i8* %3, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %25, %23
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %3, align 1
  br label %28

28:                                               ; preds = %16
  %29 = load i32, i32* %5, align 4
  %30 = add i32 %29, -1
  store i32 %30, i32* %5, align 4
  br label %13

31:                                               ; preds = %13
  %32 = load i8, i8* %3, align 1
  %33 = zext i8 %32 to i32
  %34 = sub i32 %33, 1
  %35 = lshr i32 %34, 8
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %3, align 1
  %37 = load i8*, i8** %2, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = sub i32 236, %40
  %42 = lshr i32 %41, 8
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %4, align 1
  %44 = load i8, i8* %3, align 1
  %45 = zext i8 %44 to i32
  %46 = load i8, i8* %4, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %45, %47
  %49 = and i32 %48, 1
  %50 = sub nsw i32 1, %49
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
