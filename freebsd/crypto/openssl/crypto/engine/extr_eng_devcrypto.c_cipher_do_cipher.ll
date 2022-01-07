; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/engine/extr_eng_devcrypto.c_cipher_do_cipher.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/engine/extr_eng_devcrypto.c_cipher_do_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cipher_ctx = type { i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.crypt_op = type { i64, i64, i32, i8*, i8*, i8*, i32 }

@EVP_MAX_IV_LENGTH = common dso_local global i32 0, align 4
@cfd = common dso_local global i32 0, align 4
@CIOCCRYPT = common dso_local global i32 0, align 4
@SYS_F_IOCTL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@COP_FLAG_WRITE_IV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i64)* @cipher_do_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cipher_do_cipher(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.cipher_ctx*, align 8
  %11 = alloca %struct.crypt_op, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i64 @EVP_CIPHER_CTX_get_cipher_data(i32* %19)
  %21 = inttoptr i64 %20 to %struct.cipher_ctx*
  store %struct.cipher_ctx* %21, %struct.cipher_ctx** %10, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i8* @EVP_CIPHER_CTX_iv_noconst(i32* %22)
  store i8* %23, i8** %12, align 8
  %24 = load i32, i32* @EVP_MAX_IV_LENGTH, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %13, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %14, align 8
  %28 = call i32 @memset(%struct.crypt_op* %11, i32 0, i32 56)
  %29 = load %struct.cipher_ctx*, %struct.cipher_ctx** %10, align 8
  %30 = getelementptr inbounds %struct.cipher_ctx, %struct.cipher_ctx* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.crypt_op, %struct.crypt_op* %11, i32 0, i32 6
  store i32 %32, i32* %33, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds %struct.crypt_op, %struct.crypt_op* %11, i32 0, i32 0
  store i64 %34, i64* %35, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds %struct.crypt_op, %struct.crypt_op* %11, i32 0, i32 5
  store i8* %36, i8** %37, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds %struct.crypt_op, %struct.crypt_op* %11, i32 0, i32 4
  store i8* %38, i8** %39, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = getelementptr inbounds %struct.crypt_op, %struct.crypt_op* %11, i32 0, i32 3
  store i8* %40, i8** %41, align 8
  %42 = load %struct.cipher_ctx*, %struct.cipher_ctx** %10, align 8
  %43 = getelementptr inbounds %struct.cipher_ctx, %struct.cipher_ctx* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.crypt_op, %struct.crypt_op* %11, i32 0, i32 2
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds %struct.crypt_op, %struct.crypt_op* %11, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = call i64 @EVP_CIPHER_CTX_iv_length(i32* %47)
  store i64 %48, i64* %17, align 8
  %49 = load i64, i64* %17, align 8
  %50 = icmp ugt i64 %49, 0
  br i1 %50, label %51, label %78

51:                                               ; preds = %4
  %52 = load %struct.cipher_ctx*, %struct.cipher_ctx** %10, align 8
  %53 = getelementptr inbounds %struct.cipher_ctx, %struct.cipher_ctx* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %76 [
    i32 129, label %55
    i32 128, label %75
  ]

55:                                               ; preds = %51
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* %17, align 8
  %58 = icmp uge i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @EVP_CIPHER_CTX_encrypting(i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %55
  %65 = load i8*, i8** %8, align 8
  %66 = load i64, i64* %9, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = load i64, i64* %17, align 8
  %69 = sub i64 0, %68
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  store i8* %70, i8** %15, align 8
  %71 = load i8*, i8** %15, align 8
  %72 = load i64, i64* %17, align 8
  %73 = call i32 @memcpy(i8* %27, i8* %71, i64 %72)
  br label %74

74:                                               ; preds = %64, %55
  br label %77

75:                                               ; preds = %51
  br label %77

76:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %151

77:                                               ; preds = %75, %74
  br label %78

78:                                               ; preds = %77, %4
  %79 = load i32, i32* @cfd, align 4
  %80 = load i32, i32* @CIOCCRYPT, align 4
  %81 = call i64 @ioctl(i32 %79, i32 %80, %struct.crypt_op* %11)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load i32, i32* @SYS_F_IOCTL, align 4
  %85 = load i32, i32* @errno, align 4
  %86 = call i32 @SYSerr(i32 %84, i32 %85)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %151

87:                                               ; preds = %78
  %88 = load i64, i64* %17, align 8
  %89 = icmp ugt i64 %88, 0
  br i1 %89, label %90, label %150

90:                                               ; preds = %87
  %91 = load %struct.cipher_ctx*, %struct.cipher_ctx** %10, align 8
  %92 = getelementptr inbounds %struct.cipher_ctx, %struct.cipher_ctx* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  switch i32 %93, label %148 [
    i32 129, label %94
    i32 128, label %116
  ]

94:                                               ; preds = %90
  %95 = load i64, i64* %9, align 8
  %96 = load i64, i64* %17, align 8
  %97 = icmp uge i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  %100 = load i32*, i32** %6, align 8
  %101 = call i32 @EVP_CIPHER_CTX_encrypting(i32* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %94
  %104 = load i8*, i8** %7, align 8
  %105 = load i64, i64* %9, align 8
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  %107 = load i64, i64* %17, align 8
  %108 = sub i64 0, %107
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  store i8* %109, i8** %15, align 8
  br label %111

110:                                              ; preds = %94
  store i8* %27, i8** %15, align 8
  br label %111

111:                                              ; preds = %110, %103
  %112 = load i8*, i8** %12, align 8
  %113 = load i8*, i8** %15, align 8
  %114 = load i64, i64* %17, align 8
  %115 = call i32 @memcpy(i8* %112, i8* %113, i64 %114)
  br label %149

116:                                              ; preds = %90
  %117 = load i64, i64* %9, align 8
  %118 = load %struct.cipher_ctx*, %struct.cipher_ctx** %10, align 8
  %119 = getelementptr inbounds %struct.cipher_ctx, %struct.cipher_ctx* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = add i64 %117, %120
  %122 = sub i64 %121, 1
  %123 = load %struct.cipher_ctx*, %struct.cipher_ctx** %10, align 8
  %124 = getelementptr inbounds %struct.cipher_ctx, %struct.cipher_ctx* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = udiv i64 %122, %125
  store i64 %126, i64* %16, align 8
  br label %127

127:                                              ; preds = %144, %116
  %128 = load i64, i64* %17, align 8
  %129 = add i64 %128, -1
  store i64 %129, i64* %17, align 8
  %130 = load i8*, i8** %12, align 8
  %131 = load i64, i64* %17, align 8
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i64
  %135 = load i64, i64* %16, align 8
  %136 = add i64 %135, %134
  store i64 %136, i64* %16, align 8
  %137 = load i64, i64* %16, align 8
  %138 = trunc i64 %137 to i8
  %139 = load i8*, i8** %12, align 8
  %140 = load i64, i64* %17, align 8
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  store i8 %138, i8* %141, align 1
  %142 = load i64, i64* %16, align 8
  %143 = lshr i64 %142, 8
  store i64 %143, i64* %16, align 8
  br label %144

144:                                              ; preds = %127
  %145 = load i64, i64* %17, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %127, label %147

147:                                              ; preds = %144
  br label %149

148:                                              ; preds = %90
  store i32 0, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %151

149:                                              ; preds = %147, %111
  br label %150

150:                                              ; preds = %149, %87
  store i32 1, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %151

151:                                              ; preds = %150, %148, %83, %76
  %152 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %152)
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

declare dso_local i64 @EVP_CIPHER_CTX_get_cipher_data(i32*) #1

declare dso_local i8* @EVP_CIPHER_CTX_iv_noconst(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(%struct.crypt_op*, i32, i32) #1

declare dso_local i64 @EVP_CIPHER_CTX_iv_length(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_encrypting(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @ioctl(i32, i32, %struct.crypt_op*) #1

declare dso_local i32 @SYSerr(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
