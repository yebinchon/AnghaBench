; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ed25519.c_crypto_sign_ed25519_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ed25519.c_crypto_sign_ed25519_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_hash_sha512_BYTES = common dso_local global i32 0, align 4
@ge25519_base = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_sign_ed25519_open(i8* %0, i64* %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [32 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64* %1, i64** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %22 = load i32, i32* @crypto_hash_sha512_BYTES, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %19, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %20, align 8
  %26 = load i64*, i64** %8, align 8
  store i64 -1, i64* %26, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp ult i64 %27, 64
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %96

30:                                               ; preds = %5
  %31 = load i8*, i8** %11, align 8
  %32 = call i64 @ge25519_unpackneg_vartime(i32* %15, i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %96

35:                                               ; preds = %30
  %36 = load i8*, i8** %9, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @get_hram(i8* %25, i8* %36, i8* %37, i8* %38, i64 %39)
  %41 = call i32 @sc25519_from64bytes(i32* %17, i8* %25)
  %42 = load i8*, i8** %9, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 32
  %44 = call i32 @sc25519_from32bytes(i32* %18, i8* %43)
  %45 = call i32 @ge25519_double_scalarmult_vartime(i32* %16, i32* %15, i32* %17, i32* @ge25519_base, i32* %18)
  %46 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %47 = call i32 @ge25519_pack(i8* %46, i32* %16)
  %48 = load i8*, i8** %9, align 8
  %49 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %50 = call i32 @crypto_verify_32(i8* %48, i8* %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %78, label %53

53:                                               ; preds = %35
  store i32 0, i32* %12, align 4
  br label %54

54:                                               ; preds = %71, %53
  %55 = load i32, i32* %12, align 4
  %56 = zext i32 %55 to i64
  %57 = load i64, i64* %10, align 8
  %58 = sub i64 %57, 64
  %59 = icmp ult i64 %56, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %54
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* %12, align 4
  %63 = add i32 %62, 64
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* %12, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  store i8 %66, i8* %70, align 1
  br label %71

71:                                               ; preds = %60
  %72 = load i32, i32* %12, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %12, align 4
  br label %54

74:                                               ; preds = %54
  %75 = load i64, i64* %10, align 8
  %76 = sub i64 %75, 64
  %77 = load i64*, i64** %8, align 8
  store i64 %76, i64* %77, align 8
  br label %94

78:                                               ; preds = %35
  store i32 0, i32* %12, align 4
  br label %79

79:                                               ; preds = %90, %78
  %80 = load i32, i32* %12, align 4
  %81 = zext i32 %80 to i64
  %82 = load i64, i64* %10, align 8
  %83 = sub i64 %82, 64
  %84 = icmp ult i64 %81, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %79
  %86 = load i8*, i8** %7, align 8
  %87 = load i32, i32* %12, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  store i8 0, i8* %89, align 1
  br label %90

90:                                               ; preds = %85
  %91 = load i32, i32* %12, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %12, align 4
  br label %79

93:                                               ; preds = %79
  br label %94

94:                                               ; preds = %93, %74
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %96

96:                                               ; preds = %94, %34, %29
  %97 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %97)
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ge25519_unpackneg_vartime(i32*, i8*) #2

declare dso_local i32 @get_hram(i8*, i8*, i8*, i8*, i64) #2

declare dso_local i32 @sc25519_from64bytes(i32*, i8*) #2

declare dso_local i32 @sc25519_from32bytes(i32*, i8*) #2

declare dso_local i32 @ge25519_double_scalarmult_vartime(i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @ge25519_pack(i8*, i32*) #2

declare dso_local i32 @crypto_verify_32(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
