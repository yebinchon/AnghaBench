; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/engine/extr_eng_devcrypto.c_ctr_do_cipher.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/engine/extr_eng_devcrypto.c_ctr_do_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cipher_ctx = type { i64, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i64)* @ctr_do_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctr_do_cipher(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.cipher_ctx*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i64 @EVP_CIPHER_CTX_get_cipher_data(i32* %13)
  %15 = inttoptr i64 %14 to %struct.cipher_ctx*
  store %struct.cipher_ctx* %15, %struct.cipher_ctx** %10, align 8
  br label %16

16:                                               ; preds = %26, %4
  %17 = load %struct.cipher_ctx*, %struct.cipher_ctx** %10, align 8
  %18 = getelementptr inbounds %struct.cipher_ctx, %struct.cipher_ctx* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i64, i64* %9, align 8
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %21, %16
  %25 = phi i1 [ false, %16 ], [ %23, %21 ]
  br i1 %25, label %26, label %56

26:                                               ; preds = %24
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %8, align 8
  %29 = load i8, i8* %27, align 1
  %30 = zext i8 %29 to i32
  %31 = load %struct.cipher_ctx*, %struct.cipher_ctx** %10, align 8
  %32 = getelementptr inbounds %struct.cipher_ctx, %struct.cipher_ctx* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.cipher_ctx*, %struct.cipher_ctx** %10, align 8
  %35 = getelementptr inbounds %struct.cipher_ctx, %struct.cipher_ctx* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = xor i32 %30, %38
  %40 = trunc i32 %39 to i8
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %7, align 8
  store i8 %40, i8* %41, align 1
  %43 = load i64, i64* %9, align 8
  %44 = add i64 %43, -1
  store i64 %44, i64* %9, align 8
  %45 = load %struct.cipher_ctx*, %struct.cipher_ctx** %10, align 8
  %46 = getelementptr inbounds %struct.cipher_ctx, %struct.cipher_ctx* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, 1
  %49 = load %struct.cipher_ctx*, %struct.cipher_ctx** %10, align 8
  %50 = getelementptr inbounds %struct.cipher_ctx, %struct.cipher_ctx* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = urem i64 %48, %52
  %54 = load %struct.cipher_ctx*, %struct.cipher_ctx** %10, align 8
  %55 = getelementptr inbounds %struct.cipher_ctx, %struct.cipher_ctx* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %16

56:                                               ; preds = %24
  %57 = load i64, i64* %9, align 8
  %58 = load %struct.cipher_ctx*, %struct.cipher_ctx** %10, align 8
  %59 = getelementptr inbounds %struct.cipher_ctx, %struct.cipher_ctx* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = zext i32 %60 to i64
  %62 = icmp ugt i64 %57, %61
  br i1 %62, label %63, label %93

63:                                               ; preds = %56
  %64 = load i64, i64* %9, align 8
  %65 = load %struct.cipher_ctx*, %struct.cipher_ctx** %10, align 8
  %66 = getelementptr inbounds %struct.cipher_ctx, %struct.cipher_ctx* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = udiv i64 %64, %68
  store i64 %69, i64* %11, align 8
  %70 = load i64, i64* %11, align 8
  %71 = load %struct.cipher_ctx*, %struct.cipher_ctx** %10, align 8
  %72 = getelementptr inbounds %struct.cipher_ctx, %struct.cipher_ctx* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = mul i64 %70, %74
  store i64 %75, i64* %12, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = load i64, i64* %12, align 8
  %80 = call i32 @cipher_do_cipher(i32* %76, i8* %77, i8* %78, i64 %79)
  %81 = icmp slt i32 %80, 1
  br i1 %81, label %82, label %83

82:                                               ; preds = %63
  store i32 0, i32* %5, align 4
  br label %155

83:                                               ; preds = %63
  %84 = load i64, i64* %12, align 8
  %85 = load i64, i64* %9, align 8
  %86 = sub i64 %85, %84
  store i64 %86, i64* %9, align 8
  %87 = load i64, i64* %12, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 %87
  store i8* %89, i8** %7, align 8
  %90 = load i64, i64* %12, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 %90
  store i8* %92, i8** %8, align 8
  br label %93

93:                                               ; preds = %83, %56
  %94 = load i64, i64* %9, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %154

96:                                               ; preds = %93
  %97 = load %struct.cipher_ctx*, %struct.cipher_ctx** %10, align 8
  %98 = getelementptr inbounds %struct.cipher_ctx, %struct.cipher_ctx* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.cipher_ctx*, %struct.cipher_ctx** %10, align 8
  %101 = getelementptr inbounds %struct.cipher_ctx, %struct.cipher_ctx* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = call i32 @memset(i32* %99, i32 0, i64 %103)
  %105 = load i32*, i32** %6, align 8
  %106 = load %struct.cipher_ctx*, %struct.cipher_ctx** %10, align 8
  %107 = getelementptr inbounds %struct.cipher_ctx, %struct.cipher_ctx* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = bitcast i32* %108 to i8*
  %110 = load %struct.cipher_ctx*, %struct.cipher_ctx** %10, align 8
  %111 = getelementptr inbounds %struct.cipher_ctx, %struct.cipher_ctx* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = bitcast i32* %112 to i8*
  %114 = load %struct.cipher_ctx*, %struct.cipher_ctx** %10, align 8
  %115 = getelementptr inbounds %struct.cipher_ctx, %struct.cipher_ctx* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = call i32 @cipher_do_cipher(i32* %105, i8* %109, i8* %113, i64 %117)
  %119 = icmp slt i32 %118, 1
  br i1 %119, label %120, label %121

120:                                              ; preds = %96
  store i32 0, i32* %5, align 4
  br label %155

121:                                              ; preds = %96
  br label %122

122:                                              ; preds = %126, %121
  %123 = load i64, i64* %9, align 8
  %124 = add i64 %123, -1
  store i64 %124, i64* %9, align 8
  %125 = icmp ne i64 %123, 0
  br i1 %125, label %126, label %153

126:                                              ; preds = %122
  %127 = load i8*, i8** %8, align 8
  %128 = load %struct.cipher_ctx*, %struct.cipher_ctx** %10, align 8
  %129 = getelementptr inbounds %struct.cipher_ctx, %struct.cipher_ctx* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds i8, i8* %127, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = load %struct.cipher_ctx*, %struct.cipher_ctx** %10, align 8
  %135 = getelementptr inbounds %struct.cipher_ctx, %struct.cipher_ctx* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load %struct.cipher_ctx*, %struct.cipher_ctx** %10, align 8
  %138 = getelementptr inbounds %struct.cipher_ctx, %struct.cipher_ctx* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = xor i32 %133, %141
  %143 = trunc i32 %142 to i8
  %144 = load i8*, i8** %7, align 8
  %145 = load %struct.cipher_ctx*, %struct.cipher_ctx** %10, align 8
  %146 = getelementptr inbounds %struct.cipher_ctx, %struct.cipher_ctx* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds i8, i8* %144, i64 %147
  store i8 %143, i8* %148, align 1
  %149 = load %struct.cipher_ctx*, %struct.cipher_ctx** %10, align 8
  %150 = getelementptr inbounds %struct.cipher_ctx, %struct.cipher_ctx* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = add i64 %151, 1
  store i64 %152, i64* %150, align 8
  br label %122

153:                                              ; preds = %122
  br label %154

154:                                              ; preds = %153, %93
  store i32 1, i32* %5, align 4
  br label %155

155:                                              ; preds = %154, %120, %82
  %156 = load i32, i32* %5, align 4
  ret i32 %156
}

declare dso_local i64 @EVP_CIPHER_CTX_get_cipher_data(i32*) #1

declare dso_local i32 @cipher_do_cipher(i32*, i8*, i8*, i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
