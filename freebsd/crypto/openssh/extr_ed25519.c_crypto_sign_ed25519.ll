; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ed25519.c_crypto_sign_ed25519.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ed25519.c_crypto_sign_ed25519.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_hash_sha512_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_sign_ed25519(i8* %0, i64* %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [32 x i8], align 16
  %16 = alloca [32 x i8], align 16
  %17 = alloca [64 x i8], align 16
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %22 = load i32, i32* @crypto_hash_sha512_BYTES, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %19, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %20, align 8
  %26 = load i32, i32* @crypto_hash_sha512_BYTES, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %21, align 8
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 @crypto_hash_sha512(i8* %29, i8* %30, i64 32)
  %32 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %33 = load i8, i8* %32, align 16
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, 248
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %32, align 16
  %37 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 31
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %39, 127
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %37, align 1
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 31
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = or i32 %44, 64
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %42, align 1
  %47 = load i64, i64* %9, align 8
  %48 = add i64 %47, 64
  %49 = load i64*, i64** %7, align 8
  store i64 %48, i64* %49, align 8
  store i64 0, i64* %18, align 8
  br label %50

50:                                               ; preds = %63, %5
  %51 = load i64, i64* %18, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %50
  %55 = load i8*, i8** %8, align 8
  %56 = load i64, i64* %18, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = load i8*, i8** %6, align 8
  %60 = load i64, i64* %18, align 8
  %61 = add i64 64, %60
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  store i8 %58, i8* %62, align 1
  br label %63

63:                                               ; preds = %54
  %64 = load i64, i64* %18, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %18, align 8
  br label %50

66:                                               ; preds = %50
  store i64 0, i64* %18, align 8
  br label %67

67:                                               ; preds = %79, %66
  %68 = load i64, i64* %18, align 8
  %69 = icmp ult i64 %68, 32
  br i1 %69, label %70, label %82

70:                                               ; preds = %67
  %71 = load i64, i64* %18, align 8
  %72 = add i64 32, %71
  %73 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = load i8*, i8** %6, align 8
  %76 = load i64, i64* %18, align 8
  %77 = add i64 32, %76
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  store i8 %74, i8* %78, align 1
  br label %79

79:                                               ; preds = %70
  %80 = load i64, i64* %18, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %18, align 8
  br label %67

82:                                               ; preds = %67
  %83 = load i8*, i8** %6, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 32
  %85 = load i64, i64* %9, align 8
  %86 = add i64 %85, 32
  %87 = call i32 @crypto_hash_sha512(i8* %25, i8* %84, i64 %86)
  %88 = call i32 @sc25519_from64bytes(i32* %11, i8* %25)
  %89 = call i32 @ge25519_scalarmult_base(i32* %14, i32* %11)
  %90 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %91 = call i32 @ge25519_pack(i8* %90, i32* %14)
  store i64 0, i64* %18, align 8
  br label %92

92:                                               ; preds = %102, %82
  %93 = load i64, i64* %18, align 8
  %94 = icmp ult i64 %93, 32
  br i1 %94, label %95, label %105

95:                                               ; preds = %92
  %96 = load i64, i64* %18, align 8
  %97 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = load i8*, i8** %6, align 8
  %100 = load i64, i64* %18, align 8
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8 %98, i8* %101, align 1
  br label %102

102:                                              ; preds = %95
  %103 = load i64, i64* %18, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %18, align 8
  br label %92

105:                                              ; preds = %92
  %106 = load i8*, i8** %6, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 32
  %109 = load i8*, i8** %6, align 8
  %110 = load i64, i64* %9, align 8
  %111 = add i64 %110, 64
  %112 = call i32 @get_hram(i8* %28, i8* %106, i8* %108, i8* %109, i64 %111)
  %113 = call i32 @sc25519_from64bytes(i32* %12, i8* %28)
  %114 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %115 = call i32 @sc25519_from32bytes(i32* %13, i8* %114)
  %116 = call i32 @sc25519_mul(i32* %12, i32* %12, i32* %13)
  %117 = call i32 @sc25519_add(i32* %12, i32* %12, i32* %11)
  %118 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %119 = call i32 @sc25519_to32bytes(i8* %118, i32* %12)
  store i64 0, i64* %18, align 8
  br label %120

120:                                              ; preds = %131, %105
  %121 = load i64, i64* %18, align 8
  %122 = icmp ult i64 %121, 32
  br i1 %122, label %123, label %134

123:                                              ; preds = %120
  %124 = load i64, i64* %18, align 8
  %125 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = load i8*, i8** %6, align 8
  %128 = load i64, i64* %18, align 8
  %129 = add i64 32, %128
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  store i8 %126, i8* %130, align 1
  br label %131

131:                                              ; preds = %123
  %132 = load i64, i64* %18, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %18, align 8
  br label %120

134:                                              ; preds = %120
  %135 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %135)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @crypto_hash_sha512(i8*, i8*, i64) #2

declare dso_local i32 @sc25519_from64bytes(i32*, i8*) #2

declare dso_local i32 @ge25519_scalarmult_base(i32*, i32*) #2

declare dso_local i32 @ge25519_pack(i8*, i32*) #2

declare dso_local i32 @get_hram(i8*, i8*, i8*, i8*, i64) #2

declare dso_local i32 @sc25519_from32bytes(i32*, i8*) #2

declare dso_local i32 @sc25519_mul(i32*, i32*, i32*) #2

declare dso_local i32 @sc25519_add(i32*, i32*, i32*) #2

declare dso_local i32 @sc25519_to32bytes(i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
