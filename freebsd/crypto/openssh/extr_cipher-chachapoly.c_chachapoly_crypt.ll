; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_cipher-chachapoly.c_chachapoly_crypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_cipher-chachapoly.c_chachapoly_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chachapoly_ctx = type { i32, i32 }

@__const.chachapoly_crypt.one = private unnamed_addr constant [8 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@POLY1305_TAGLEN = common dso_local global i32 0, align 4
@POLY1305_KEYLEN = common dso_local global i32 0, align 4
@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSH_ERR_MAC_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chachapoly_crypt(%struct.chachapoly_ctx* %0, i32 %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.chachapoly_ctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [8 x i32], align 16
  %18 = alloca [8 x i32], align 16
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  store %struct.chachapoly_ctx* %0, %struct.chachapoly_ctx** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %24 = bitcast [8 x i32]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %24, i8* align 16 bitcast ([8 x i32]* @__const.chachapoly_crypt.one to i8*), i64 32, i1 false)
  %25 = load i32, i32* @POLY1305_TAGLEN, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %19, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %20, align 8
  %29 = load i32, i32* @POLY1305_KEYLEN, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %21, align 8
  %32 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %32, i32* %22, align 4
  %33 = mul nuw i64 4, %30
  %34 = trunc i64 %33 to i32
  %35 = call i32 @memset(i32* %31, i32 0, i32 %34)
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 0
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @POKE_U64(i32* %36, i32 %37)
  %39 = load %struct.chachapoly_ctx*, %struct.chachapoly_ctx** %9, align 8
  %40 = getelementptr inbounds %struct.chachapoly_ctx, %struct.chachapoly_ctx* %39, i32 0, i32 0
  %41 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 0
  %42 = call i32 @chacha_ivsetup(i32* %40, i32* %41, i32* null)
  %43 = load %struct.chachapoly_ctx*, %struct.chachapoly_ctx** %9, align 8
  %44 = getelementptr inbounds %struct.chachapoly_ctx, %struct.chachapoly_ctx* %43, i32 0, i32 0
  %45 = mul nuw i64 4, %30
  %46 = trunc i64 %45 to i32
  %47 = call i32 @chacha_encrypt_bytes(i32* %44, i32* %31, i32* %31, i32 %46)
  %48 = load i32, i32* %16, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %70, label %50

50:                                               ; preds = %8
  %51 = load i32*, i32** %12, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32* %57, i32** %23, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %59, %60
  %62 = call i32 @poly1305_auth(i32* %28, i32* %58, i32 %61, i32* %31)
  %63 = load i32*, i32** %23, align 8
  %64 = load i32, i32* @POLY1305_TAGLEN, align 4
  %65 = call i64 @timingsafe_bcmp(i32* %28, i32* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %50
  %68 = load i32, i32* @SSH_ERR_MAC_INVALID, align 4
  store i32 %68, i32* %22, align 4
  br label %118

69:                                               ; preds = %50
  br label %70

70:                                               ; preds = %69, %8
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  %74 = load %struct.chachapoly_ctx*, %struct.chachapoly_ctx** %9, align 8
  %75 = getelementptr inbounds %struct.chachapoly_ctx, %struct.chachapoly_ctx* %74, i32 0, i32 1
  %76 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 0
  %77 = call i32 @chacha_ivsetup(i32* %75, i32* %76, i32* null)
  %78 = load %struct.chachapoly_ctx*, %struct.chachapoly_ctx** %9, align 8
  %79 = getelementptr inbounds %struct.chachapoly_ctx, %struct.chachapoly_ctx* %78, i32 0, i32 1
  %80 = load i32*, i32** %12, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = load i32, i32* %14, align 4
  %83 = call i32 @chacha_encrypt_bytes(i32* %79, i32* %80, i32* %81, i32 %82)
  br label %84

84:                                               ; preds = %73, %70
  %85 = load %struct.chachapoly_ctx*, %struct.chachapoly_ctx** %9, align 8
  %86 = getelementptr inbounds %struct.chachapoly_ctx, %struct.chachapoly_ctx* %85, i32 0, i32 0
  %87 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 0
  %88 = getelementptr inbounds [8 x i32], [8 x i32]* %18, i64 0, i64 0
  %89 = call i32 @chacha_ivsetup(i32* %86, i32* %87, i32* %88)
  %90 = load %struct.chachapoly_ctx*, %struct.chachapoly_ctx** %9, align 8
  %91 = getelementptr inbounds %struct.chachapoly_ctx, %struct.chachapoly_ctx* %90, i32 0, i32 0
  %92 = load i32*, i32** %12, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32*, i32** %11, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @chacha_encrypt_bytes(i32* %91, i32* %95, i32* %99, i32 %100)
  %102 = load i32, i32* %16, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %84
  %105 = load i32*, i32** %11, align 8
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32*, i32** %11, align 8
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %113, %114
  %116 = call i32 @poly1305_auth(i32* %111, i32* %112, i32 %115, i32* %31)
  br label %117

117:                                              ; preds = %104, %84
  store i32 0, i32* %22, align 4
  br label %118

118:                                              ; preds = %117, %67
  %119 = mul nuw i64 4, %26
  %120 = trunc i64 %119 to i32
  %121 = call i32 @explicit_bzero(i32* %28, i32 %120)
  %122 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 0
  %123 = call i32 @explicit_bzero(i32* %122, i32 32)
  %124 = mul nuw i64 4, %30
  %125 = trunc i64 %124 to i32
  %126 = call i32 @explicit_bzero(i32* %31, i32 %125)
  %127 = load i32, i32* %22, align 4
  %128 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %128)
  ret i32 %127
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32*, i32, i32) #3

declare dso_local i32 @POKE_U64(i32*, i32) #3

declare dso_local i32 @chacha_ivsetup(i32*, i32*, i32*) #3

declare dso_local i32 @chacha_encrypt_bytes(i32*, i32*, i32*, i32) #3

declare dso_local i32 @poly1305_auth(i32*, i32*, i32, i32*) #3

declare dso_local i64 @timingsafe_bcmp(i32*, i32*, i32) #3

declare dso_local i32 @explicit_bzero(i32*, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
