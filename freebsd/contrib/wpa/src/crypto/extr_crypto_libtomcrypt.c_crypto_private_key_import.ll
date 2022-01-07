; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_libtomcrypt.c_crypto_private_key_import.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_libtomcrypt.c_crypto_private_key_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_private_key = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@CRYPT_OK = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"LibTomCrypt: Failed to import private key (res=%d '%s')\00", align 1
@PK_PRIVATE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"LibTomCrypt: Private key was not of correct type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.crypto_private_key* @crypto_private_key_import(i32* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.crypto_private_key*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.crypto_private_key*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = call %struct.crypto_private_key* @os_zalloc(i32 8)
  store %struct.crypto_private_key* %10, %struct.crypto_private_key** %9, align 8
  %11 = load %struct.crypto_private_key*, %struct.crypto_private_key** %9, align 8
  %12 = icmp eq %struct.crypto_private_key* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store %struct.crypto_private_key* null, %struct.crypto_private_key** %4, align 8
  br label %48

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.crypto_private_key*, %struct.crypto_private_key** %9, align 8
  %18 = getelementptr inbounds %struct.crypto_private_key, %struct.crypto_private_key* %17, i32 0, i32 0
  %19 = call i32 @rsa_import(i32* %15, i64 %16, %struct.TYPE_3__* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @CRYPT_OK, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %14
  %24 = load i32, i32* @MSG_ERROR, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @error_to_string(i32 %26)
  %28 = call i32 (i32, i8*, ...) @wpa_printf(i32 %24, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %27)
  %29 = load %struct.crypto_private_key*, %struct.crypto_private_key** %9, align 8
  %30 = call i32 @os_free(%struct.crypto_private_key* %29)
  store %struct.crypto_private_key* null, %struct.crypto_private_key** %4, align 8
  br label %48

31:                                               ; preds = %14
  %32 = load %struct.crypto_private_key*, %struct.crypto_private_key** %9, align 8
  %33 = getelementptr inbounds %struct.crypto_private_key, %struct.crypto_private_key* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PK_PRIVATE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load i32, i32* @MSG_ERROR, align 4
  %40 = call i32 (i32, i8*, ...) @wpa_printf(i32 %39, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.crypto_private_key*, %struct.crypto_private_key** %9, align 8
  %42 = getelementptr inbounds %struct.crypto_private_key, %struct.crypto_private_key* %41, i32 0, i32 0
  %43 = call i32 @rsa_free(%struct.TYPE_3__* %42)
  %44 = load %struct.crypto_private_key*, %struct.crypto_private_key** %9, align 8
  %45 = call i32 @os_free(%struct.crypto_private_key* %44)
  store %struct.crypto_private_key* null, %struct.crypto_private_key** %4, align 8
  br label %48

46:                                               ; preds = %31
  %47 = load %struct.crypto_private_key*, %struct.crypto_private_key** %9, align 8
  store %struct.crypto_private_key* %47, %struct.crypto_private_key** %4, align 8
  br label %48

48:                                               ; preds = %46, %38, %23, %13
  %49 = load %struct.crypto_private_key*, %struct.crypto_private_key** %4, align 8
  ret %struct.crypto_private_key* %49
}

declare dso_local %struct.crypto_private_key* @os_zalloc(i32) #1

declare dso_local i32 @rsa_import(i32*, i64, %struct.TYPE_3__*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @error_to_string(i32) #1

declare dso_local i32 @os_free(%struct.crypto_private_key*) #1

declare dso_local i32 @rsa_free(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
