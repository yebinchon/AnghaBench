; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_scalarmult/curve25519/extr_scalarmult_curve25519.c_crypto_scalarmult_curve25519.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_scalarmult/curve25519/extr_scalarmult_curve25519.c_crypto_scalarmult_curve25519.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i8*, i8*, i8*)* }

@implementation = common dso_local global %struct.TYPE_2__* null, align 8
@crypto_scalarmult_curve25519_BYTES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_scalarmult_curve25519(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store volatile i8 0, i8* %9, align 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @implementation, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64 (i8*, i8*, i8*)*, i64 (i8*, i8*, i8*)** %11, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i64 %12(i8* %13, i8* %14, i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %44

19:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %20

20:                                               ; preds = %34, %19
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @crypto_scalarmult_curve25519_BYTES, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = load volatile i8, i8* %9, align 1
  %31 = zext i8 %30 to i32
  %32 = or i32 %31, %29
  %33 = trunc i32 %32 to i8
  store volatile i8 %33, i8* %9, align 1
  br label %34

34:                                               ; preds = %24
  %35 = load i64, i64* %8, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %8, align 8
  br label %20

37:                                               ; preds = %20
  %38 = load volatile i8, i8* %9, align 1
  %39 = zext i8 %38 to i32
  %40 = sub nsw i32 %39, 1
  %41 = ashr i32 %40, 8
  %42 = and i32 1, %41
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %37, %18
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
