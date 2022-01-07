; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/extr_pwhash_scryptsalsa208sha256.c_pickparams.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/extr_pwhash_scryptsalsa208sha256.c_pickparams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32*, i32*, i32*)* @pickparams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pickparams(i64 %0, i64 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ult i64 %13, 32768
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  store i64 32768, i64* %6, align 8
  br label %16

16:                                               ; preds = %15, %5
  %17 = load i32*, i32** %10, align 8
  store i32 8, i32* %17, align 4
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = udiv i64 %19, 32
  %21 = icmp ult i64 %18, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %16
  %23 = load i32*, i32** %9, align 8
  store i32 1, i32* %23, align 4
  %24 = load i64, i64* %6, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %26, 4
  %28 = sext i32 %27 to i64
  %29 = udiv i64 %24, %28
  store i64 %29, i64* %11, align 8
  %30 = load i32*, i32** %8, align 8
  store i32 1, i32* %30, align 4
  br label %31

31:                                               ; preds = %45, %22
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %33, 63
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 1, %37
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %11, align 8
  %41 = udiv i64 %40, 2
  %42 = icmp ugt i64 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %49

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %31

49:                                               ; preds = %43, %31
  br label %94

50:                                               ; preds = %16
  %51 = load i64, i64* %7, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 128
  %56 = udiv i64 %51, %55
  store i64 %56, i64* %11, align 8
  %57 = load i32*, i32** %8, align 8
  store i32 1, i32* %57, align 4
  br label %58

58:                                               ; preds = %72, %50
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %60, 63
  br i1 %61, label %62, label %76

62:                                               ; preds = %58
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 1, %64
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %11, align 8
  %68 = udiv i64 %67, 2
  %69 = icmp ugt i64 %66, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %76

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %71
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  br label %58

76:                                               ; preds = %70, %58
  %77 = load i64, i64* %6, align 8
  %78 = udiv i64 %77, 4
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 1, %80
  %82 = sext i32 %81 to i64
  %83 = udiv i64 %78, %82
  store i64 %83, i64* %12, align 8
  %84 = load i64, i64* %12, align 8
  %85 = icmp ugt i64 %84, 1073741823
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  store i64 1073741823, i64* %12, align 8
  br label %87

87:                                               ; preds = %86, %76
  %88 = load i64, i64* %12, align 8
  %89 = trunc i64 %88 to i32
  %90 = load i32*, i32** %10, align 8
  %91 = load i32, i32* %90, align 4
  %92 = sdiv i32 %89, %91
  %93 = load i32*, i32** %9, align 8
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %87, %49
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
