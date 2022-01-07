; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_libtomcrypt.c_crypto_public_key_decrypt_pkcs1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_libtomcrypt.c_crypto_public_key_decrypt_pkcs1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_public_key = type { i32 }

@PK_PUBLIC = common dso_local global i32 0, align 4
@CRYPT_OK = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"LibTomCrypt: rsa_exptmod failed: %s\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"LibTomCrypt: Invalid signature EB structure\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"LibTomCrypt: Too short signature padding\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"LibTomCrypt: Invalid signature EB structure (2)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_public_key_decrypt_pkcs1(%struct.crypto_public_key* %0, i32* %1, i64 %2, i32* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.crypto_public_key*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store %struct.crypto_public_key* %0, %struct.crypto_public_key** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64* %4, i64** %11, align 8
  %15 = load i64*, i64** %11, align 8
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %13, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = load i32, i32* @PK_PUBLIC, align 4
  %21 = load %struct.crypto_public_key*, %struct.crypto_public_key** %7, align 8
  %22 = getelementptr inbounds %struct.crypto_public_key, %struct.crypto_public_key* %21, i32 0, i32 0
  %23 = call i32 @rsa_exptmod(i32* %17, i64 %18, i32* %19, i64* %13, i32 %20, i32* %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @CRYPT_OK, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %5
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @error_to_string(i32 %29)
  %31 = call i32 (i32, i8*, ...) @wpa_printf(i32 %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i32 -1, i32* %6, align 4
  br label %114

32:                                               ; preds = %5
  %33 = load i64, i64* %13, align 8
  %34 = icmp ult i64 %33, 27
  br i1 %34, label %50, label %35

35:                                               ; preds = %32
  %36 = load i32*, i32** %10, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %35
  %41 = load i32*, i32** %10, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 1
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load i32*, i32** %10, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 255
  br i1 %49, label %50, label %53

50:                                               ; preds = %45, %40, %35, %32
  %51 = load i32, i32* @MSG_INFO, align 4
  %52 = call i32 (i32, i8*, ...) @wpa_printf(i32 %51, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %114

53:                                               ; preds = %45
  %54 = load i32*, i32** %10, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 3
  store i32* %55, i32** %14, align 8
  br label %56

56:                                               ; preds = %68, %53
  %57 = load i32*, i32** %14, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = load i64, i64* %13, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = icmp ult i32* %57, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i32*, i32** %14, align 8
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 255
  br label %66

66:                                               ; preds = %62, %56
  %67 = phi i1 [ false, %56 ], [ %65, %62 ]
  br i1 %67, label %68, label %71

68:                                               ; preds = %66
  %69 = load i32*, i32** %14, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %14, align 8
  br label %56

71:                                               ; preds = %66
  %72 = load i32*, i32** %14, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = ptrtoint i32* %72 to i64
  %75 = ptrtoint i32* %73 to i64
  %76 = sub i64 %74, %75
  %77 = sdiv exact i64 %76, 4
  %78 = sub nsw i64 %77, 2
  %79 = icmp slt i64 %78, 8
  br i1 %79, label %80, label %83

80:                                               ; preds = %71
  %81 = load i32, i32* @MSG_INFO, align 4
  %82 = call i32 (i32, i8*, ...) @wpa_printf(i32 %81, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %114

83:                                               ; preds = %71
  %84 = load i32*, i32** %14, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 16
  %86 = load i32*, i32** %10, align 8
  %87 = load i64, i64* %13, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = icmp uge i32* %85, %88
  br i1 %89, label %94, label %90

90:                                               ; preds = %83
  %91 = load i32*, i32** %14, align 8
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90, %83
  %95 = load i32, i32* @MSG_INFO, align 4
  %96 = call i32 (i32, i8*, ...) @wpa_printf(i32 %95, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %114

97:                                               ; preds = %90
  %98 = load i32*, i32** %14, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %14, align 8
  %100 = load i32*, i32** %14, align 8
  %101 = load i32*, i32** %10, align 8
  %102 = ptrtoint i32* %100 to i64
  %103 = ptrtoint i32* %101 to i64
  %104 = sub i64 %102, %103
  %105 = sdiv exact i64 %104, 4
  %106 = load i64, i64* %13, align 8
  %107 = sub i64 %106, %105
  store i64 %107, i64* %13, align 8
  %108 = load i32*, i32** %10, align 8
  %109 = load i32*, i32** %14, align 8
  %110 = load i64, i64* %13, align 8
  %111 = call i32 @os_memmove(i32* %108, i32* %109, i64 %110)
  %112 = load i64, i64* %13, align 8
  %113 = load i64*, i64** %11, align 8
  store i64 %112, i64* %113, align 8
  store i32 0, i32* %6, align 4
  br label %114

114:                                              ; preds = %97, %94, %80, %50, %27
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i32 @rsa_exptmod(i32*, i64, i32*, i64*, i32, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @error_to_string(i32) #1

declare dso_local i32 @os_memmove(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
