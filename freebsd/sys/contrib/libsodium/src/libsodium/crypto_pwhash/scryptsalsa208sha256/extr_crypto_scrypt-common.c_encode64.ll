; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/extr_crypto_scrypt-common.c_encode64.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/extr_crypto_scrypt-common.c_encode64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i64*, i64, i64*, i64)* @encode64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @encode64(i64* %0, i64 %1, i64* %2, i64 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %14

14:                                               ; preds = %50, %4
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %60

18:                                               ; preds = %14
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %19

19:                                               ; preds = %39, %18
  %20 = load i64*, i64** %8, align 8
  %21 = load i64, i64* %10, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %10, align 8
  %23 = getelementptr inbounds i64, i64* %20, i64 %21
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* %13, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* %12, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %13, align 4
  %31 = add nsw i32 %30, 8
  store i32 %31, i32* %13, align 4
  br label %32

32:                                               ; preds = %19
  %33 = load i32, i32* %13, align 4
  %34 = icmp slt i32 %33, 24
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp ult i64 %36, %37
  br label %39

39:                                               ; preds = %35, %32
  %40 = phi i1 [ false, %32 ], [ %38, %35 ]
  br i1 %40, label %19, label %41

41:                                               ; preds = %39
  %42 = load i64*, i64** %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i64* @encode64_uint32(i64* %42, i64 %43, i32 %44, i32 %45)
  store i64* %46, i64** %11, align 8
  %47 = load i64*, i64** %11, align 8
  %48 = icmp ne i64* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %41
  store i64* null, i64** %5, align 8
  br label %62

50:                                               ; preds = %41
  %51 = load i64*, i64** %11, align 8
  %52 = load i64*, i64** %6, align 8
  %53 = ptrtoint i64* %51 to i64
  %54 = ptrtoint i64* %52 to i64
  %55 = sub i64 %53, %54
  %56 = sdiv exact i64 %55, 8
  %57 = load i64, i64* %7, align 8
  %58 = sub i64 %57, %56
  store i64 %58, i64* %7, align 8
  %59 = load i64*, i64** %11, align 8
  store i64* %59, i64** %6, align 8
  br label %14

60:                                               ; preds = %14
  %61 = load i64*, i64** %6, align 8
  store i64* %61, i64** %5, align 8
  br label %62

62:                                               ; preds = %60, %49
  %63 = load i64*, i64** %5, align 8
  ret i64* %63
}

declare dso_local i64* @encode64_uint32(i64*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
