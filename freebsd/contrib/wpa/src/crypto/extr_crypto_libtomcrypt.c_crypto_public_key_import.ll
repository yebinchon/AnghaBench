; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_libtomcrypt.c_crypto_public_key_import.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_libtomcrypt.c_crypto_public_key_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_public_key = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@CRYPT_OK = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"LibTomCrypt: Failed to import public key (res=%d '%s')\00", align 1
@PK_PUBLIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"LibTomCrypt: Public key was not of correct type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.crypto_public_key* @crypto_public_key_import(i32* %0, i64 %1) #0 {
  %3 = alloca %struct.crypto_public_key*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.crypto_public_key*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = call %struct.crypto_public_key* @os_zalloc(i32 8)
  store %struct.crypto_public_key* %8, %struct.crypto_public_key** %7, align 8
  %9 = load %struct.crypto_public_key*, %struct.crypto_public_key** %7, align 8
  %10 = icmp eq %struct.crypto_public_key* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.crypto_public_key* null, %struct.crypto_public_key** %3, align 8
  br label %46

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.crypto_public_key*, %struct.crypto_public_key** %7, align 8
  %16 = getelementptr inbounds %struct.crypto_public_key, %struct.crypto_public_key* %15, i32 0, i32 0
  %17 = call i32 @rsa_import(i32* %13, i64 %14, %struct.TYPE_3__* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @CRYPT_OK, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %12
  %22 = load i32, i32* @MSG_ERROR, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @error_to_string(i32 %24)
  %26 = call i32 (i32, i8*, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %25)
  %27 = load %struct.crypto_public_key*, %struct.crypto_public_key** %7, align 8
  %28 = call i32 @os_free(%struct.crypto_public_key* %27)
  store %struct.crypto_public_key* null, %struct.crypto_public_key** %3, align 8
  br label %46

29:                                               ; preds = %12
  %30 = load %struct.crypto_public_key*, %struct.crypto_public_key** %7, align 8
  %31 = getelementptr inbounds %struct.crypto_public_key, %struct.crypto_public_key* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PK_PUBLIC, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load i32, i32* @MSG_ERROR, align 4
  %38 = call i32 (i32, i8*, ...) @wpa_printf(i32 %37, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.crypto_public_key*, %struct.crypto_public_key** %7, align 8
  %40 = getelementptr inbounds %struct.crypto_public_key, %struct.crypto_public_key* %39, i32 0, i32 0
  %41 = call i32 @rsa_free(%struct.TYPE_3__* %40)
  %42 = load %struct.crypto_public_key*, %struct.crypto_public_key** %7, align 8
  %43 = call i32 @os_free(%struct.crypto_public_key* %42)
  store %struct.crypto_public_key* null, %struct.crypto_public_key** %3, align 8
  br label %46

44:                                               ; preds = %29
  %45 = load %struct.crypto_public_key*, %struct.crypto_public_key** %7, align 8
  store %struct.crypto_public_key* %45, %struct.crypto_public_key** %3, align 8
  br label %46

46:                                               ; preds = %44, %36, %21, %11
  %47 = load %struct.crypto_public_key*, %struct.crypto_public_key** %3, align 8
  ret %struct.crypto_public_key* %47
}

declare dso_local %struct.crypto_public_key* @os_zalloc(i32) #1

declare dso_local i32 @rsa_import(i32*, i64, %struct.TYPE_3__*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @error_to_string(i32) #1

declare dso_local i32 @os_free(%struct.crypto_public_key*) #1

declare dso_local i32 @rsa_free(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
