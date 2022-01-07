; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_enc.c_show_ciphers.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_enc.c_show_ciphers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }
%struct.doall_enc_ciphers = type { i32, i32 }

@EVP_CIPH_FLAG_AEAD_CIPHER = common dso_local global i32 0, align 4
@EVP_CIPH_XTS_MODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"-%-25s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*)* @show_ciphers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_ciphers(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.doall_enc_ciphers*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.doall_enc_ciphers*
  store %struct.doall_enc_ciphers* %8, %struct.doall_enc_ciphers** %5, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i8
  %14 = call i32 @islower(i8 zeroext %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %61

17:                                               ; preds = %2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = call i32* @EVP_get_cipherbyname(i64* %20)
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %17
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @EVP_CIPHER_flags(i32* %25)
  %27 = load i32, i32* @EVP_CIPH_FLAG_AEAD_CIPHER, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = load i32*, i32** %6, align 8
  %32 = call i64 @EVP_CIPHER_mode(i32* %31)
  %33 = load i64, i64* @EVP_CIPH_XTS_MODE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %24, %17
  br label %61

36:                                               ; preds = %30
  %37 = load %struct.doall_enc_ciphers*, %struct.doall_enc_ciphers** %5, align 8
  %38 = getelementptr inbounds %struct.doall_enc_ciphers, %struct.doall_enc_ciphers* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = call i32 (i32, i8*, ...) @BIO_printf(i32 %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64* %42)
  %44 = load %struct.doall_enc_ciphers*, %struct.doall_enc_ciphers** %5, align 8
  %45 = getelementptr inbounds %struct.doall_enc_ciphers, %struct.doall_enc_ciphers* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = icmp eq i32 %47, 3
  br i1 %48, label %49, label %56

49:                                               ; preds = %36
  %50 = load %struct.doall_enc_ciphers*, %struct.doall_enc_ciphers** %5, align 8
  %51 = getelementptr inbounds %struct.doall_enc_ciphers, %struct.doall_enc_ciphers* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32, i8*, ...) @BIO_printf(i32 %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.doall_enc_ciphers*, %struct.doall_enc_ciphers** %5, align 8
  %55 = getelementptr inbounds %struct.doall_enc_ciphers, %struct.doall_enc_ciphers* %54, i32 0, i32 0
  store i32 0, i32* %55, align 4
  br label %61

56:                                               ; preds = %36
  %57 = load %struct.doall_enc_ciphers*, %struct.doall_enc_ciphers** %5, align 8
  %58 = getelementptr inbounds %struct.doall_enc_ciphers, %struct.doall_enc_ciphers* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i32, i8*, ...) @BIO_printf(i32 %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %16, %35, %56, %49
  ret void
}

declare dso_local i32 @islower(i8 zeroext) #1

declare dso_local i32* @EVP_get_cipherbyname(i64*) #1

declare dso_local i32 @EVP_CIPHER_flags(i32*) #1

declare dso_local i64 @EVP_CIPHER_mode(i32*) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
